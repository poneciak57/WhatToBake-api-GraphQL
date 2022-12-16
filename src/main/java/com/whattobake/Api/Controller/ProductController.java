package com.whattobake.Api.Controller;

import com.whattobake.Api.DTO.ProductFilters;
import com.whattobake.Api.DTO.ProductInput;
import com.whattobake.Api.Model.Product;
import com.whattobake.Api.Service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.MutationMapping;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.util.Optional;

@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;

    @QueryMapping
    public Flux<Product> allProducts(@Argument("filter") Optional<ProductFilters> productFilters){
        return productService.allProducts(productFilters);
    }
    @QueryMapping
    public Flux<Product> productsByCategory(@Argument("categoryId") Long id){
        return productService.productsByCategory(id);
    }

    @MutationMapping
    public Mono<Product> newProduct(@Argument("product") ProductInput product){
        return productService.add(product);
    }
    @MutationMapping
    public Mono<Boolean> updateProduct(@Argument("id") Long id,@Argument("product") ProductInput product){
        return productService.update(id,product);
    }

}
