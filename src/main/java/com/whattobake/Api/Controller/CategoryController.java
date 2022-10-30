package com.whattobake.Api.Controller;

import com.whattobake.Api.DTO.CategoryInput;
import com.whattobake.Api.Model.Category;
import com.whattobake.Api.Service.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.MutationMapping;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@Controller
@RequiredArgsConstructor
public class CategoryController {

    private final CategoryService categoryService;

    @QueryMapping
    public Flux<Category> allCategories(){
        return categoryService.getAll();
    }

    @MutationMapping
    public Mono<Category> newCategory(@Argument("category") CategoryInput categoryInput){
        return categoryService.add(new Category(categoryInput.getName()));
    }

    @MutationMapping
    public Mono<Boolean> updateCategory(@Argument("id") Long id,@Argument("category") CategoryInput categoryInput){
        return categoryService.update(new Category(id,categoryInput.getName()));
    }

    @MutationMapping
    public Mono<Boolean> deleteCategory(@Argument("id") Long id){
        return categoryService.delete(id);
    }
}
