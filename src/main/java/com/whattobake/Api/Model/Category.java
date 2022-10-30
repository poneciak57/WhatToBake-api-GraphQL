package com.whattobake.Api.Model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Category {
    @Id
    private Long id;
    private String name;

    public Category(String name) {
        this.name = name;
    }
}
