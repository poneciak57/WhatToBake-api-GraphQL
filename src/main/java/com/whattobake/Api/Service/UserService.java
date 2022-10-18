package com.whattobake.Api.Service;

import com.whattobake.Api.Security.User;
import com.whattobake.Api.Repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Mono;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepository userRepository;

    public Mono<User> findByUsername(String username){
        return userRepository.findUserByUsername(username)
                .map(e->User.builder()
                        .id(e.getId())
                        .username(e.getUsername())
                        .password(e.getPassword())
                        .enabled(e.isEnabled())
                        .roles(e.getRolesArray())
                        .build()
                );
    }
}