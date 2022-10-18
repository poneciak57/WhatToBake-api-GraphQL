package com.whattobake.Api.DTO;

import com.whattobake.Api.Model.Product;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductsFromDb {
    private List<Product> products;
}
