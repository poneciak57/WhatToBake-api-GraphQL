package com.whattobake.Api.Service;

import com.whattobake.Api.Model.Category;
import com.whattobake.Api.Repository.CategoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.r2dbc.core.DatabaseClient;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@Service
@RequiredArgsConstructor
public class CategoryService {

    private final DatabaseClient databaseClient;
    private final CategoryRepository categoryRepository;

    public Flux<Category> getAll() {
        return categoryRepository.findAll();
    }
    public Mono<Category> add(Category category) {
        return categoryRepository.save(category)
                .onErrorReturn(new Category());
    }
    public Mono<Boolean> update(Category category) {
        return categoryRepository
                .save(category)
                .thenReturn(true)
                .onErrorReturn(false);
    }

    public Mono<Boolean> delete(Long id) {
        return categoryRepository.findById(id)
                .filter(category -> !category.getName().equals("brak"))
                .flatMap(c -> changeCategoryInAllRecipes(c.getId())
                        .then(categoryRepository
                                .deleteById(c.getId()).thenReturn(true)
                        )
                ).defaultIfEmpty(false);
    }

    public Mono<Boolean> changeCategoryInAllRecipes(Long id){
        String query = """
            UPDATE whattobake.product
            SET category = 1
            WHERE category = :id
        """;
        return databaseClient.sql(query)
                .bind("id",id)
                .then().thenReturn(true);
    }
}
