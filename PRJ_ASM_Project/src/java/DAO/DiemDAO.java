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
import model.Diem;
import model.Lop;
import model.MonHoc;
import model.SinhVien;

/**
 *
 * @author admin
 */
public class DiemDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public ArrayList<Diem> getDiemList() {
        try {
            ArrayList<Diem> list = new ArrayList<>();
            String sql = "select * from Diem";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Diem diem = new Diem(new SinhVien(rs.getString(1)),
                        new MonHoc(rs.getString(2)), rs.getInt(3), rs.getInt(4),
                        rs.getInt(5));
                list.add(diem);
            }
            return list;

        } catch (Exception ex) {
            Logger.getLogger(KhoaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
        DiemDAO dao = new DiemDAO();
        for (Diem o : dao.getDiemList()) {
            System.out.println(o);
        }
    }
}
