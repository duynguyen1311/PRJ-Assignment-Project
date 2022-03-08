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
import model.HeDT;
import model.Khoa;
import model.KhoaHoc;
import model.Lop;

/**
 *
 * @author admin
 */
public class LopDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public ArrayList<Lop> getLopList() {
        try {
            ArrayList<Lop> list = new ArrayList<>();
            String sql = "SELECT lop.MaLop,lop.TenLop, HeDT.MaHeDT,HeDT.TenHeDT,Khoa.MaKhoa,khoa.TenKhoa,KhoaHoc.MaKhoaHoc,KhoaHoc.TenKhoaHoc\n"
                    + "FROM dbo.HeDT INNER JOIN\n"
                    + "dbo.Lop ON dbo.HeDT.MaHeDT = dbo.Lop.MaHeDT INNER JOIN\n"
                    + "dbo.Khoa ON dbo.Lop.MaKhoa = dbo.Khoa.MaKhoa INNER JOIN\n"
                    + "dbo.KhoaHoc ON dbo.Lop.MaKhoaHoc = dbo.KhoaHoc.MaKhoaHoc";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Lop lp = new Lop(rs.getString(1), rs.getString(2),
                        new HeDT(rs.getString(3), rs.getString(4)),
                        new Khoa(rs.getString(5), rs.getString(6)),
                        new KhoaHoc(rs.getString(7), rs.getString(8)));
                list.add(lp);
            }
            return list;

        } catch (Exception ex) {
            Logger.getLogger(KhoaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Lop> getMaLop() {
        try {
            ArrayList<Lop> list = new ArrayList<>();
            String sql = "select MaLop from Lop";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Lop lp = new Lop(rs.getString(1));
                list.add(lp);
            }
            return list;

        } catch (Exception ex) {
            Logger.getLogger(KhoaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Lop getLopByMaLop(String maLop) {
        try {
            String sql = "select MaLop,TenLop,MaHeDT,MaKhoa,MaKhoaHoc from Lop where MaLop = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, maLop);
            rs = ps.executeQuery();
            while (rs.next()) {
                Lop l = new Lop(rs.getString(1), rs.getString(2),
                        new HeDT(rs.getString(3)),
                        new Khoa(rs.getString(4)),
                        new KhoaHoc(rs.getString(5)));
                return l;
            }

        } catch (Exception ex) {
            Logger.getLogger(SinhVienDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void updateLop(String maLop, String tenLop, String maKhoa, String maHDT,
            String maKhoaHoc) {
        try {
            String sql = "Update Lop\n"
                    + "Set TenLop= ?, MaKhoa= ?, MaHeDT = ?,MaKhoaHoc = ?\n"
                    + "Where MaLop = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, tenLop);
            ps.setString(2, maKhoa);
            ps.setString(3, maHDT);
            ps.setString(4, maKhoaHoc);
            ps.setString(5, maLop);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(KhoaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insertLop(String maLop, String tenLop, String maKhoa, String maHDT, String maKhoaHoc) {
        try {
            String sql = "insert into Lop(MaLop,TenLop,MaKhoa,MaHeDT,MaKhoaHoc)\n"
                    + "values (?,?,?,?,?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, maLop);
            ps.setString(2, tenLop);
            ps.setString(3, maKhoa);
            ps.setString(4, maHDT);
            ps.setString(5, maKhoaHoc);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(KhoaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        LopDAO dao = new LopDAO();
//        for (Lop o : dao.getMaLop()) {
//            System.out.println(o);
//        }
//        dao.insertLop("KT4", "Kinh te 4", "KT", "D01", "K2");
        System.out.println(dao.getLopByMaLop("KT1"));
//        dao.updateLop("KT1","Kinh te" , "A2", "C01", "K10");
    }
}
