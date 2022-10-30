package com.whattobake.Api.Service;

import com.whattobake.Api.Model.Category;
import com.whattobake.Api.Repository.CategoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@Service
@RequiredArgsConstructor
public class CategoryService {

    private final CategoryRepository categoryRepository;

    public Flux<Category> getAll() {
        return categoryRepository.findAll();
    }
    public Mono<Category> add(Category category) {
        return categoryRepository.save(category).onErrorReturn(new Category());
    }
    public Mono<Category> update(Category category) {
        return categoryRepository.save(category).onErrorReturn(new Category());
    }

    public Mono<Boolean> delete(Long id) {
        return categoryRepository.findById(id)
                .filter(category -> !category.getName().equals("brak"))
                .flatMap(c -> categoryRepository.deleteById(c.getId()).thenReturn(true))
                .defaultIfEmpty(false);
    }
}
