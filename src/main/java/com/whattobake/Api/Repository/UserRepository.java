package com.whattobake.Api.Repository;

import com.whattobake.Api.Model.User;
import org.springframework.data.repository.reactive.ReactiveCrudRepository;
import org.springframework.stereotype.Repository;
import reactor.core.publisher.Mono;

@Repository
public interface UserRepository extends ReactiveCrudRepository<User,Long> {

    Mono<User> findUserByUsername(String username);

}
