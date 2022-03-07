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

    public void insertDiem(String maSV, String maMH, int hocKy, int diem1, int diem2) {
        try {
            String sql = "insert into Diem(MaSV,MaMH,HocKy,DiemLan1,DiemLan2)\n"
                    + "values (?,?,?,?,?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, maSV);
            ps.setString(2, maMH);
            ps.setInt(3, hocKy);
            ps.setInt(4, diem1);
            ps.setInt(5, diem2);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(KhoaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        DiemDAO dao = new DiemDAO();
//        for (Diem o : dao.getDiemList()) {
//            System.out.println(o);
//        }
        dao.insertDiem("0241060218", "SQL", 2, 5, 1);
    }
}
