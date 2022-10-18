package com.whattobake.Api.Service;

import com.whattobake.Api.Model.Product;
import com.whattobake.Api.Repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Flux;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;

    public Flux<Product> allProducts(){
        return productRepository.findAll();
    }
}
