package com.whattobake.Api.Controller;

import com.whattobake.Api.DTO.Message;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import reactor.core.publisher.Mono;

@Controller
public class TestController {

    @QueryMapping("testAdmin")
    @PreAuthorize("hasRole('ADMIN')")
    public Mono<Message> testAdmin(){
        return Mono.just(new Message("hello admin"));
    }

    @QueryMapping("testUser")
    @PreAuthorize("hasRole('USER')")
    public Mono<Message> testUser(){
        return Mono.just(new Message("hello user"));
    }
}
