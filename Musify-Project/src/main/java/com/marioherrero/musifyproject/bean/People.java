package com.marioherrero.musifyproject.bean;

import java.util.ArrayList;

/**
 *
 * @author Mario Herrero
 */
public class People {
    
    private int id;
    private String name;
    private int age;
    private ArrayList<String> onePeople;

    
    public ArrayList<String> getOnePeople() {
        return onePeople;
    }

    public void setOnePeople(ArrayList<String> onePeople) {
        this.onePeople = onePeople;
    }    
    
    public People () {}

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
