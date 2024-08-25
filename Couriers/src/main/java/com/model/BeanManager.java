package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BeanManager extends BeanClass {
    public void insert() throws Exception {
        Connection con = null;
        PreparedStatement ps = null;

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "Laharirao@123");

            String sql = "INSERT INTO courier (username, password, email, name) VALUES (?, ?, ?, ?)";
            ps = con.prepareStatement(sql);

            ps.setString(1, getUsername());
            ps.setString(2, getPassword());
            ps.setString(3, getEmail());
            ps.setString(4, getName());

            ps.executeUpdate(); // Changed to executeUpdate() for INSERT operation
        } catch (SQLException e) {
            e.printStackTrace();
            throw new Exception("Database error: " + e.getMessage());
        } finally {
            if (ps != null) {
                ps.close();
            }
            if (con != null) {
                con.close();
            }
        }
    }
}
