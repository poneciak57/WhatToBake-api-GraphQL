package com.whattobake.Api.Enum;

public enum RecipeProductOrder {
    MOST(" IFNULL(owned,0) DESC "),
    LEAST(" IFNULL(notowned,0) ASC ");

    private final String value;
    RecipeProductOrder(final String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    @Override
    public String toString() {
        return this.getValue();
    }
}
