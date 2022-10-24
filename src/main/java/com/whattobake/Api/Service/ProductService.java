package com.whattobake.Api.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.whattobake.Api.Model.Category;
import com.whattobake.Api.Model.Product;
import lombok.RequiredArgsConstructor;
import org.springframework.r2dbc.core.DatabaseClient;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Flux;


@Service
@RequiredArgsConstructor
public class ProductService {

    private final DatabaseClient databaseClient;

    public Flux<Product> allProducts(){
        String query = "SELECT p.id, p.name,c.id AS c_id,c.name AS c_name FROM whattobake.product AS p , whattobake.category AS c WHERE c.id = p.category" ;
        DatabaseClient.GenericExecuteSpec genericExecuteSpec = databaseClient.sql(query);

        ObjectMapper objectMapper = new ObjectMapper();
        return genericExecuteSpec.map((row,rowMeta)->
                Product.builder()
                        .id(row.get("id",Long.class))
                        .name(row.get("name",String.class))
                        .category(new Category(row.get("c_id",Long.class),row.get("c_name",String.class)))
                        .build()
        ).all();
    }
}
