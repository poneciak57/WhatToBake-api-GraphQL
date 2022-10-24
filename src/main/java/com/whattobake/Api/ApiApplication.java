package com.whattobake.Api;

import com.whattobake.Api.Enum.Role;
import com.whattobake.Api.Model.User;
import com.whattobake.Api.Repository.UserRepository;
import com.whattobake.Api.Security.PBKDF2Encoder;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import reactor.core.publisher.Flux;

import java.util.List;

@SpringBootApplication
@Slf4j
public class ApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(ApiApplication.class, args);
	}

	@Bean
	CommandLineRunner commandLineRunner(
			UserRepository userRepository,
			PBKDF2Encoder encoder
	){
		return args ->
			userRepository.deleteAll()
					.thenMany(
							Flux.just(
									new User("user",encoder.encode("user"),true,List.of(Role.ROLE_USER)),
									new User("admin",encoder.encode("admin"),true,List.of(Role.ROLE_ADMIN))
							)
					).flatMap(userRepository::save)
					.thenMany(userRepository.findAll())
					.subscribe(e->log.info(e.toString()));
	}
}
