package com.whattobake.Api.Controller;

import com.whattobake.Api.Model.Product;
import com.whattobake.Api.Service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;
import reactor.core.publisher.Flux;

@Controller
@RequiredArgsConstructor
public class ProductController {

    private final ProductService productService;

    @QueryMapping
    public Flux<Product> allProducts(){
        return productService.allProducts();
    }
}
