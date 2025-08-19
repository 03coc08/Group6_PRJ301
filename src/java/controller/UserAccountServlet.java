package controller;

import DAL.UserDAO;
import model.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "UserAccountServlet", urlPatterns = {"/UserAccount"})
public class UserAccountServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session = request.getSession(false); 

        // Thêm kiểm tra: nếu session rỗng hoặc không có userID, chuyển hướng về trang chủ
        if (session == null || session.getAttribute("userID") == null) {
            response.sendRedirect(request.getContextPath() + "/user-account.jsp");
            return;
        }
        
        String username = null;
        User user = null;

        // Lấy tên tài khoản từ session (đoạn code này chỉ chạy khi đã đăng nhập)
        username = (String) session.getAttribute("userID");
        UserDAO userDAO = new UserDAO();
        user = userDAO.getUserByUsername(username);

        // Gửi đối tượng user đến trang JSP để hiển thị
        request.setAttribute("user", user);
        request.getRequestDispatcher("/user-account.jsp").forward(request, response);
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