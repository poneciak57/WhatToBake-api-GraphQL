package com.whattobake.Api.Repository;

import com.whattobake.Api.Model.Recipe;
import org.springframework.data.repository.reactive.ReactiveCrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RecipeRepository extends ReactiveCrudRepository<Recipe,Long> {
}
