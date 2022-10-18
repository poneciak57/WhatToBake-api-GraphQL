package com.whattobake.Api.Controller;

import com.whattobake.Api.DTO.Filters;
import com.whattobake.Api.Model.Product;
import com.whattobake.Api.Model.Recipe;
import com.whattobake.Api.Repository.ProductRepository;
import com.whattobake.Api.Service.RecipeService;
import lombok.RequiredArgsConstructor;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.graphql.data.method.annotation.SchemaMapping;
import org.springframework.stereotype.Controller;
import reactor.core.publisher.Flux;

@Controller
@RequiredArgsConstructor
public class RecipeController {

    private final ProductRepository productRepository;
    private final RecipeService recipeService;

    @QueryMapping
    public Flux<Recipe> allRecipes(@Argument("filter") Filters filters){
        return recipeService.allRecipes(filters);
    }

    @SchemaMapping(typeName = "Recipe",field = "products")
    public Flux<Product> product(Recipe recipe){
        return productRepository.findByRecipe(recipe.getId());
    }

}
