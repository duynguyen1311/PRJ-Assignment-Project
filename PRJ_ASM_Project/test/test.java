
import DAO.SinhVienDAO;
import java.util.ArrayList;
import model.SinhVien;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author admin
 */
public class test {
    public static void main(String[] args) {
        SinhVienDAO dao = new SinhVienDAO();
        ArrayList<SinhVien> listSinhVien = dao.getAllSinhVien();
        for (SinhVien o : listSinhVien) {
            System.out.println(o);
        }
    }
}
