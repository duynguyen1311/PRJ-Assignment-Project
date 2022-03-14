/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Filter;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author admin
 */
public class AuthenticationFilterForCRUD implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        HttpSession session = req.getSession();
        Account acc = (Account) session.getAttribute("acc");
        if (acc != null && acc.getRole().equals(Account.ADMIN)) {
            chain.doFilter(request, response);
            return;
        }
        req.setAttribute("error2", "Bạn không được phép truy cập");
        request.getRequestDispatcher("login").forward(request, response);
    }

    /**
     * Return the filter configuration object for this filter.
     *
     * @param filterConfig
     */
    @Override
    public void init(FilterConfig filterConfig) {

    }

    @Override
    public void destroy() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
