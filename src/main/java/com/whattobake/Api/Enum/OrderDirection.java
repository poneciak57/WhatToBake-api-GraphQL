package com.whattobake.Api.Enum;

@Deprecated
public enum OrderDirection {
    ASC("ASC"),
    DESC("DESC");

    private final String value;
    OrderDirection(final String value) {
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
