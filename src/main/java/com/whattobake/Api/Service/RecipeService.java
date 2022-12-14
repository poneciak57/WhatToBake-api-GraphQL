package com.whattobake.Api.Service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.whattobake.Api.DTO.Bind;
import com.whattobake.Api.DTO.RecipeFilters;
import com.whattobake.Api.Enum.RecipeProductOrder;
import com.whattobake.Api.Model.Product;
import com.whattobake.Api.Model.Recipe;

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
import java.util.Optional;
import java.util.stream.Collectors;


@Service
@RequiredArgsConstructor
@Slf4j
public class RecipeService {
    private final DatabaseClient databaseClient;
    private final ConnectionFactory connectionFactory;

    @Value("${whattobake.recipes.pageCount}")
    private int pageCount;

    @SneakyThrows
    public Flux<Recipe> allRecipes(Optional<RecipeFilters> filters_opt){
        String query = """
        SELECT
            r.*,
            CONCAT('[', GROUP_CONCAT(CONCAT('{"id":',p.id,',"name":"',p.name,'","category":{"id":',p.category,',"name":"',c.name,'"}}') SEPARATOR ','),']') AS products
        FROM whattobake.recipe r
        JOIN whattobake.product p ON (
            SELECT COUNT(1)
            FROM whattobake.recipe_product rp
            WHERE
                p.id = rp.product_id AND
                rp.recipe_id = r.id
        )
        JOIN whattobake.category c ON c.id = p.category 
        """;
        List<Bind> args = new ArrayList<>();
        String order = "";
        int page = 0;
        //preparing query
        if(filters_opt.isPresent()){
            RecipeFilters filters = filters_opt.get();
            if(filters.getProducts() != null){
                query += """
                LEFT JOIN(
                    SELECT
                        recipe_id AS 'recipe',
                        COUNT(*) AS 'notowned'
                    FROM recipe_product
                    WHERE product_id NOT IN(:products1)
                    GROUP BY recipe_id
                ) X ON X.recipe = r.id
                LEFT JOIN(
                    SELECT
                        recipe_id AS 'recipe',
                        COUNT(*) AS 'owned'
                    FROM recipe_product
                    WHERE product_id IN(:products2)
                    GROUP BY recipe_id
                ) Y ON Y.recipe = r.id 
                """;
                if(!filters.getProductOrder().isEmpty()){
                    order += " ORDER BY " + filters
                            .getProductOrder()
                            .stream()
                            .distinct()
                            .map(RecipeProductOrder::getValue)
                            .collect(Collectors.joining(","));
                }
                args.add(new Bind("products1",filters.getProducts()));
                args.add(new Bind("products2",filters.getProducts()));
            }
            if (filters.getPage() != null) {
                page = filters.getPage();
            }
        }

        query += " GROUP BY r.id ";
        query += order;
        query += " LIMIT "+pageCount+" OFFSET :page ";
        args.add(new Bind("page",pageCount*page));

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
                                .image(row.get("image",String.class))
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
}