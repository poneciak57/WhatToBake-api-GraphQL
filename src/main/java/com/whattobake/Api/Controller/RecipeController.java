package com.whattobake.Api.Controller;

import com.whattobake.Api.DTO.RecipeFilters;
import com.whattobake.Api.Model.Recipe;
import com.whattobake.Api.Service.RecipeService;
import lombok.RequiredArgsConstructor;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;
import reactor.core.publisher.Flux;

import java.util.Optional;

@Controller
@RequiredArgsConstructor
public class RecipeController {
    private final RecipeService recipeService;

    @QueryMapping
    public Flux<Recipe> allRecipes(@Argument("filter") Optional<RecipeFilters> filters){
        return recipeService.allRecipes(filters);
    }

}
