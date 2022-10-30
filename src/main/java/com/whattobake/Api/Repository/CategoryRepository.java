package com.whattobake.Api.Repository;

import com.whattobake.Api.Model.Category;
import org.springframework.data.repository.reactive.ReactiveCrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepository extends ReactiveCrudRepository<Category,Long> {
}
