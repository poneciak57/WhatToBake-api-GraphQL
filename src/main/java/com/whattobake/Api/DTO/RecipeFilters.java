package com.whattobake.Api.DTO;

import com.whattobake.Api.Enum.RecipeProductOrder;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RecipeFilters {
    Integer page;
    List<Integer> products;
    List<RecipeProductOrder> productOrder;
//    OrderDirection orderDirection;
}
