/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import context.DBContext;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Lop;
import model.SinhVien;

/**
 *
 * @author admin
 */
public class SinhVienDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public ArrayList<SinhVien> getAllSinhVien() {

        try {
            ArrayList<SinhVien> list = new ArrayList<>();
            String sql = "select * from SinhVien";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                SinhVien sv = new SinhVien(rs.getString(1), rs.getString(2),
                        rs.getInt(3), rs.getDate(4), rs.getString(5),
                        new Lop(rs.getString(6)), rs.getString(7), rs.getString(8));
                list.add(sv);
            }
            return list;

        } catch (Exception ex) {
            Logger.getLogger(SinhVienDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public SinhVien getSinhVienByMaSV(String maSV) {
        try {
            String sql = "select * from SinhVien where MaSV = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, maSV);
            rs = ps.executeQuery();
            while (rs.next()) {
                SinhVien sv = new SinhVien(rs.getString(1), rs.getString(2),
                        rs.getInt(3), rs.getDate(4), rs.getString(5),
                        new Lop(rs.getString(6)), rs.getString(7), rs.getString(8));
                return sv;
            }

        } catch (Exception ex) {
            Logger.getLogger(SinhVienDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<SinhVien> getMaSinhVien() {
        try {
            ArrayList<SinhVien> list = new ArrayList<>();
            String sql = "select MaSV from SinhVien";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                SinhVien sv = new SinhVien(rs.getString(1));
                list.add(sv);
            }
            return list;

        } catch (Exception ex) {
            Logger.getLogger(KhoaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void insertSinhVien(String maSV, String tenSV, int gioiTinh,
            String ngaysinh, String quequan, String maLop, String sdt, String email) {
        try {
            String sql = "insert into SinhVien\n"
                    + "values(?,?,?,?,?,?,?,?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, maSV);
            ps.setString(2, tenSV);
            ps.setInt(3, gioiTinh);
            ps.setString(4, ngaysinh);
            ps.setString(5, quequan);
            ps.setString(6, maLop);
            ps.setString(7, sdt);
            ps.setString(8, email);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(KhoaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        SinhVienDAO dao = new SinhVienDAO();
//        for (SinhVien o : dao.getMaSinhVien()) {
//            System.out.println(o);
//        }
//        SinhVien s = dao.getSinhVienByMaSV("0241060218");
//        System.out.println(s);
        dao.insertSinhVien("123456", "Nguyen Van A", 0, "1989-01-02", "Ha Long", "MT2", "090909123", "nmquynh@gmail");
    }
}
