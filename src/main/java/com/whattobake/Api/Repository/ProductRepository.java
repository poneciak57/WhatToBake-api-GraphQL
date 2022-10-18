package com.whattobake.Api.Repository;

import com.whattobake.Api.Model.Product;
import org.springframework.data.r2dbc.repository.Query;
import org.springframework.data.repository.reactive.ReactiveCrudRepository;
import org.springframework.stereotype.Repository;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@Repository
public interface ProductRepository extends ReactiveCrudRepository<Product,Long> {

    Mono<Product> findByName(String name);

    @Query("SELECT p.* FROM whattobake.product as p , whattobake.recipe_product as rp WHERE rp.recipe_id = :recipeId AND rp.product_id = p.id")
    Flux<Product> findByRecipe(Long recipeId);
}
