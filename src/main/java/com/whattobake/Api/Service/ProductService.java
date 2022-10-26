package com.whattobake.Api.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.whattobake.Api.DTO.ProductFilters;
import com.whattobake.Api.Enum.ProductOrder;
import com.whattobake.Api.Model.Category;
import com.whattobake.Api.Model.Product;
import lombok.RequiredArgsConstructor;
import org.springframework.r2dbc.core.DatabaseClient;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Flux;

import java.util.Optional;
import java.util.stream.Collectors;


@Service
@RequiredArgsConstructor
public class ProductService {

    private final DatabaseClient databaseClient;

    public Flux<Product> allProducts(Optional<ProductFilters> productFilters){
        String query = """
            SELECT
                p.id,
                p.name,
                c.id AS c_id,
                c.name AS c_name
            FROM
                whattobake.product AS p ,
                whattobake.category AS c
            WHERE c.id = p.category 
        """ ;
        if(productFilters.isPresent()){
            ProductFilters filters = productFilters.get();
            if(!filters.getProductOrder().isEmpty()){
                query += " ORDER BY " + filters
                        .getProductOrder()
                        .stream()
                        .distinct()
                        .map(ProductOrder::getValue)
                        .collect(Collectors.joining(","));
            }
        }

        DatabaseClient.GenericExecuteSpec genericExecuteSpec = databaseClient.sql(query);

        return genericExecuteSpec.map((row,rowMeta)->
                Product.builder()
                        .id(row.get("id",Long.class))
                        .name(row.get("name",String.class))
                        .category(new Category(row.get("c_id",Long.class),row.get("c_name",String.class)))
                        .build()
        ).all();
    }
}
