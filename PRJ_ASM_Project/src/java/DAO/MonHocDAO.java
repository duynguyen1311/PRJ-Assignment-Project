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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.MonHoc;

/**
 *
 * @author admin
 */
public class MonHocDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public ArrayList<MonHoc> getMonHocList() {
        try {
            ArrayList<MonHoc> list = new ArrayList<>();
            String sql = "select id,MaMH,TenMH,SoTrinh from MonHoc";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                MonHoc mh = new MonHoc(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4));
                list.add(mh);
            }
            return list;

        } catch (Exception ex) {
            Logger.getLogger(KhoaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
        MonHocDAO dao = new MonHocDAO();
        for (MonHoc o : dao.getMonHocList()) {
            System.out.println(o);
        }
    }
}
