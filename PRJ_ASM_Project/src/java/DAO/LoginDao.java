/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Account;

/**
 *
 * @author admin
 */
public class LoginDao {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account getAccount(String user, String pass) {

        try {
            String sql = "select * from Account where username = ? and password = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account acc = new Account(rs.getString(1), rs.getString(2));
                return acc;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccount(String user) {
        try {
            String sql = "select * from Account where username = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account acc = new Account(rs.getString(1), rs.getString(2));
                return acc;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void SignUp(String user, String pass) {
        try {
            String sql = "insert into Account\n"
                    + "values(?,?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
