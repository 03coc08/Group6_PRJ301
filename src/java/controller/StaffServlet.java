package controller;

import model.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "StaffServlet", urlPatterns = {"/Staff"})
public class StaffServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session = request.getSession();
        User loggedInUser = (User) session.getAttribute("loggedInUser");
        
        // Kiểm tra xem người dùng đã đăng nhập và có đúng vai trò Staff không
        if (loggedInUser != null && "STAFF".equals(loggedInUser.getRole())) {
            // Người dùng có quyền truy cập, hiển thị trang Staff
            request.getRequestDispatcher("staff.jsp").forward(request, response);
        } else {
            // Người dùng không có quyền, chuyển hướng đến trang lỗi hoặc trang đăng nhập
            response.sendRedirect(request.getContextPath() + "/login.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
