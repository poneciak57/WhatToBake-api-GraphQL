package com.whattobake.Api.Service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.whattobake.Api.DTO.Bind;
import com.whattobake.Api.DTO.Filters;
import com.whattobake.Api.DTO.ProductsFromDb;
import com.whattobake.Api.DTO.RecipeFull;
import com.whattobake.Api.Enum.OrderDirection;
import com.whattobake.Api.Enum.ProductOrder;
import com.whattobake.Api.Model.Product;
import com.whattobake.Api.Model.Recipe;
import com.whattobake.Api.Repository.ProductRepository;
import com.whattobake.Api.Repository.RecipeRepository;

import io.r2dbc.spi.ConnectionFactory;

import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.r2dbc.core.DatabaseClient;
import org.springframework.r2dbc.core.DatabaseClient.GenericExecuteSpec;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;


import java.util.ArrayList;
import java.util.List;


@Service
@RequiredArgsConstructor
@Slf4j
public class RecipeService {

    private final RecipeRepository recipeRepository;
    private final ProductRepository productRepository;
    private final DatabaseClient databaseClient;
    private final ConnectionFactory connectionFactory;

    @Value("${whattobake.recipes.pageCount}")
    private int pageCount;

    @SneakyThrows
    public Flux<Recipe> allRecipes(Filters filters){
        String query = "" +
                "SELECT r.*, CONCAT('[', GROUP_CONCAT(CONCAT('{\"id\":',p.id,',\"name\":\"',p.name,'\"}') SEPARATOR ','),']') AS products FROM whattobake.recipe r JOIN whattobake.product p ON (SELECT COUNT(1) FROM whattobake.recipe_product rp WHERE p.id = rp.product_id AND rp.recipe_id = r.id) ";
        List<Bind> args = new ArrayList<>();
        String order = "";

        //preparing query
        if(filters.getProducts() != null){
            query += " LEFT JOIN(SELECT recipe_id AS 'recipe',COUNT(*) AS 'owned' FROM recipe_product WHERE product_id "+(filters.getProductOrder()== ProductOrder.LEAST?"NOT":"")+" IN(:products) GROUP BY recipe_id) X ON X.recipe = r.id ";
            order += " ORDER BY IFNULL(owned,0) " + (filters.getOrderDirection() != null ? filters.getOrderDirection().getValue() : OrderDirection.ASC.getValue());
            args.add(new Bind("products",filters.getProducts()));
        }
        query += " GROUP BY r.id ";
        query += order;
        if (filters.getPage() != null) {
            query += " LIMIT "+pageCount+" OFFSET :page ";
            args.add(new Bind("page",pageCount*filters.getPage()));
        }

        GenericExecuteSpec genericExecuteSpec = databaseClient.sql(query);

        //binding all data
        for (Bind b: args) {
            genericExecuteSpec = genericExecuteSpec.bind(b.getName(),b.getData());
        }

        ObjectMapper objectMapper = new ObjectMapper();
        return genericExecuteSpec.map((row,rowMeta)->
                {
                    try {
                        return Recipe.builder()
                                .id(row.get("id",Long.class))
                                .title(row.get("title",String.class))
                                .link(row.get("link",String.class))
                                .products(objectMapper.readValue(
                                        row.get("products",String.class),
                                        objectMapper.getTypeFactory().constructCollectionType(List.class, Product.class)))
                                .build();
                    } catch (JsonProcessingException e) {
                        throw new RuntimeException(e);
                    }
                }
        ).all();
    }

//   Super important
//   Example of fetching results with connection statement
    public void test(){
        Mono.from(connectionFactory.create())
                .flatMapMany(conn ->
                    conn.createStatement("SELECT * FROM whattobake.recipe").execute()
                ).flatMap(result -> result.map((row,rowMetadata) ->
                        Recipe.builder()
                                .link(row.get("link",String.class))
                                .title(row.get("title",String.class))
                                .id(row.get("id",Long.class))
                                .build()))
                .subscribe(e->log.info(e.toString()));
    }


    public Mono<Recipe> addRecipe(RecipeFull recipe){
        return recipeRepository.save(Recipe.builder()
                        .link(recipe.getLink())
                        .title(recipe.getTitle())
                .build()).doOnNext(r ->
                    recipe.getProducts().forEach(product -> productRepository.findByName(product)
                        .switchIfEmpty(productRepository.save(Product.builder().name(product).build()))
                        .subscribe(p->
                                databaseClient.inConnectionMany(connection -> Flux.from(
                                        connection.createStatement("INSERT INTO `whattobake`.`recipe_product` (`recipe_id`,`product_id`) VALUES (?rid,?pid)")
                                        .bind("rid",r.getId()).bind("pid",p.getId()).add()
                                        .execute())).subscribe()
                        ))
        );
    }
}