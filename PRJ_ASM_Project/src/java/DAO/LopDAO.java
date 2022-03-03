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
            String sql = "select MaLop,TenLop,MaHeDT,TenKhoa,TenKhoaHoc from Lop l JOIN Khoa k \n"
                    + "on l.MaKhoa = k.MaKhoa JOIN KhoaHoc kh \n"
                    + "on l.MaKhoaHoc = kh.MaKhoaHoc";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Lop lp = new Lop(rs.getString(1),rs.getString(2), rs.getString(3),
                        new Khoa(rs.getString(4)), new KhoaHoc(rs.getString(5)));
                list.add(lp);
            }
            return list;

        } catch (Exception ex) {
            Logger.getLogger(KhoaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
        LopDAO dao = new LopDAO();
        for (Lop o : dao.getLopList()) {
            System.out.println(o);
        }
    }
}
