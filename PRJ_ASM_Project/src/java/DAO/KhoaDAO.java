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
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Khoa;

/**
 *
 * @author admin
 */
public class KhoaDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public ArrayList<Khoa> getKhoaList() {
        try {
            ArrayList<Khoa> list = new ArrayList<>();
            String sql = "select * from Khoa";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Khoa k = new Khoa(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
                list.add(k);
            }
            return list;

        } catch (Exception ex) {
            Logger.getLogger(KhoaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
        KhoaDAO dao = new KhoaDAO();
        for (Khoa o : dao.getKhoaList()) {
            System.out.println(o);
        }
    }
}
