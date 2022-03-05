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
            String sql = "SELECT lop.MaLop,lop.TenLop,HeDT.TenHeDT,khoa.TenKhoa,KhoaHoc.TenKhoaHoc\n"
                    + "FROM dbo.HeDT INNER JOIN\n"
                    + "dbo.Lop ON dbo.HeDT.MaHeDT = dbo.Lop.MaHeDT INNER JOIN\n"
                    + "dbo.Khoa ON dbo.Lop.MaKhoa = dbo.Khoa.MaKhoa INNER JOIN\n"
                    + "dbo.KhoaHoc ON dbo.Lop.MaKhoaHoc = dbo.KhoaHoc.MaKhoaHoc";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Lop lp = new Lop(rs.getString(1), rs.getString(2),
                        new HeDT(rs.getString(3)),
                        new Khoa(rs.getString(4)),
                        new KhoaHoc(rs.getString(5)));
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
