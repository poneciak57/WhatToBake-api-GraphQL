package com.whattobake.Api.DTO;

import com.whattobake.Api.Enum.ProductOrder;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductFilters {
    List<ProductOrder> productOrder;
}
