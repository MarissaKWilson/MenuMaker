package com.MarissaKWilson.MenuMaker;
import javax.persistence.*;

@Entity
public class Ingredient {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;

    protected Ingredient() {}

    public Ingredient(String name){
        this.name=name;
    }
}
