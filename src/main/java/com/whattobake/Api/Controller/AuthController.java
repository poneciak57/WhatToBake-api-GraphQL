package com.whattobake.Api.Controller;

import com.whattobake.Api.DTO.AuthRequest;
import com.whattobake.Api.DTO.AuthResponse;
import com.whattobake.Api.Security.JWTUtil;
import com.whattobake.Api.Security.PBKDF2Encoder;
import com.whattobake.Api.Service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.MutationMapping;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Controller;
import reactor.core.publisher.Mono;

@Controller
@RequiredArgsConstructor
public class AuthController {

    private final JWTUtil jwtUtil;
    private final PBKDF2Encoder encoder;
    private final UserService userService;

    @MutationMapping("login")
    public Mono<AuthResponse> login(@Argument("authRequest") AuthRequest authRequest){
        return userService.findByUsername(authRequest.getUsername())
                .filter(user -> encoder.encode(authRequest.getPassword()).equals(user.getPassword()))
                .map(user -> new AuthResponse(jwtUtil.generateToken(user)))
                .switchIfEmpty(Mono.error(new UsernameNotFoundException(authRequest.getUsername())));
    }
}
