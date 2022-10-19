package com.whattobake.Api.Configuration;

import dev.miku.r2dbc.mysql.MySqlConnectionConfiguration;
import dev.miku.r2dbc.mysql.MySqlConnectionFactory;
import io.r2dbc.spi.ConnectionFactory;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.data.r2dbc.core.R2dbcEntityTemplate;
import org.springframework.data.r2dbc.repository.config.EnableR2dbcRepositories;
import org.springframework.r2dbc.core.DatabaseClient;

@Configuration
@EnableR2dbcRepositories
public class DatabaseConfig {

    @Value( "${spring.r2dbc.username:root}" )
    private String username;

    @Value( "${spring.r2dbc.password:}" )
    private String password;

    @Bean
    public ConnectionFactory connectionFactory() {
        return MySqlConnectionFactory.from(MySqlConnectionConfiguration.builder()
                .host("127.0.0.1")
                .user(username)
                .password(password)
                .database("whattobake")
                .build()
        );
    }
    @Bean
    DatabaseClient databaseClient(ConnectionFactory connectionFactory) {
        return DatabaseClient.builder()
                .connectionFactory(connectionFactory)
                //.bindMarkers(() -> BindMarkersFactory.named(":", "", 20).create())
                .namedParameters(true)
                .build();
    }

    @Bean
    R2dbcEntityTemplate r2dbcEntityTemplate(ConnectionFactory connectionFactory){
        return new R2dbcEntityTemplate(connectionFactory);
    }

}
