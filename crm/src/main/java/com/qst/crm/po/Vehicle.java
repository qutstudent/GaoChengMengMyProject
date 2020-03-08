package com.qst.crm.po;

import java.math.BigDecimal;

public class Vehicle {
    private String model;
    private BigDecimal price;
    private Color color;

    public Vehicle() {
    }
    public String getModel() {
        return model;
    }
    public void setModel(String model) {
        this.model = model;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }
}
