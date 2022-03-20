/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.DiemDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Diem;
import model.SinhVien;

/**
 *
 * @author admin
 */
@WebServlet(name = "DiemController", urlPatterns = {"/diem"})
public class DiemController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        DiemDAO dao = new DiemDAO();
        String search = request.getParameter("search");
        String indexstr = request.getParameter("dindex");
        int index = 1;
        if (indexstr != null) {
            index = Integer.parseInt(indexstr);
        }
        if (search == null) {
            search = "";
        }
        int endPage = 0;
        int pageSize = 5;
        int count = dao.count(search);
        endPage = count / pageSize;
        if (count % pageSize != 0) {
            endPage++;
        }
        SinhVien acc = (SinhVien) request.getSession().getAttribute("acc");
        ArrayList<Diem> listDiemByUsername = dao.getDiemListByUsername(acc.getUsername());
        ArrayList<Diem> listDiem = dao.getSearchDiem(search, index, pageSize);
        if (listDiem.isEmpty()) {
            request.setAttribute("mess", "Không tìm thấy kết quả");
        }
        request.setAttribute("listDiemByUsername", listDiemByUsername);
        request.setAttribute("search", search);
        request.setAttribute("index", index);
        request.setAttribute("endPage", endPage);
        request.setAttribute("listDiem", listDiem);
        request.getRequestDispatcher("diem.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
