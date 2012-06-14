package com.selenium.training.web;

import java.io.Serializable;

/**
 * User: serhiy.zelenin
 * Date: 6/14/12
 * Time: 5:36 PM
 */
public class FruitItem implements Serializable {
    private String name;
    private int amount;

    public FruitItem(String name, int amount) {
        this.name = name;
        this.amount = amount;
    }

    public String getName() {
        return name;
    }

    public int getAmount() {
        return amount;
    }
}
