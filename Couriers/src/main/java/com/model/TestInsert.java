package com.model;

public class TestInsert {
    public static void main(String[] args) {
        BeanManager bm = new BeanManager();
        bm.setUsername("testuser");
        bm.setPassword("testpass");
        bm.setEmail("testuser@example.com");
        bm.setName("Test User");

        try {
            bm.insert();
            System.out.println("User inserted successfully.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}