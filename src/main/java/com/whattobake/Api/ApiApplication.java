package com.whattobake.Api;

import com.whattobake.Api.DTO.RecipeFull;
import com.whattobake.Api.Enum.Role;
import com.whattobake.Api.Model.User;
import com.whattobake.Api.Repository.RecipeRepository;
import com.whattobake.Api.Repository.UserRepository;
import com.whattobake.Api.Security.PBKDF2Encoder;
import com.whattobake.Api.Service.RecipeService;
import io.r2dbc.spi.ConnectionFactory;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

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
			PBKDF2Encoder encoder,
			RecipeService recipeService,
			RecipeRepository recipeRepository,
			ConnectionFactory connectionFactory
	){
		return args ->{
			userRepository.deleteAll()
					.thenMany(
							Flux.just(
									new User("user",encoder.encode("user"),true,List.of(Role.ROLE_USER)),
									new User("admin",encoder.encode("admin"),true,List.of(Role.ROLE_ADMIN))
							)
					).flatMap(userRepository::save)
					.thenMany(userRepository.findAll())
					.subscribe(e->log.info(e.toString()));

			Mono.from(connectionFactory.create())
					.flatMapMany(connection -> connection.createStatement("DELETE FROM `whattobake`.`recipe_product`").execute()
					).thenMany(
							recipeRepository.deleteAll()
									.thenMany(
											Flux.just(
													new RecipeFull("przepis1","link1",List.of("masło","mąka","jajka")),
													new RecipeFull("przepis2","link2",List.of("jajka","drożdże")),
													new RecipeFull("przepis3","link3",List.of("czekolada","mąka","jajka")),
													new RecipeFull("przepis4","link4",List.of("mąka")),
													new RecipeFull("przepis5","link5",List.of()),
													new RecipeFull("przepis6","link6",List.of("mleko","jajka")),
													new RecipeFull("przepis7","link7",List.of("mleko","drożdże","mąka")),
													new RecipeFull("przepis8","link8",List.of("czekolada","mąka","jajka")),
													new RecipeFull("przepis9","link9",List.of("mąka")),
													new RecipeFull("przepis10","link10",List.of("mleko"))
											)
									).flatMap(recipeService::addRecipe)
					).subscribe(e->log.info(e.toString()));

		};
	}
}
