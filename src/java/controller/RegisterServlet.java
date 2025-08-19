package controller;

import DAL.UserDAO;
import model.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.mindrot.jbcrypt.BCrypt;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/Register"})
public class RegisterServlet extends HttpServlet {

    /**
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Redirect to the registration form page
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // Lấy thông tin từ form đăng ký
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fullName = request.getParameter("fullName");
        String role = request.getParameter("role");

        UserDAO userDao = new UserDAO();

        try {
            // Kiểm tra xem tên người dùng đã tồn tại chưa
            if (userDao.getUserByUsername(username) != null) {
                request.setAttribute("errorMessage", "Username already exists. Please choose a different one.");
                request.getRequestDispatcher("register.jsp").forward(request, response);
                return; // Dừng xử lý
            }

            // Mã hóa mật khẩu
            String passwordHash = BCrypt.hashpw(password, BCrypt.gensalt());

            // Tạo đối tượng User mới
            User newUser = new User();
            newUser.setUsername(username);
            newUser.setPasswordHash(passwordHash);
            newUser.setFullName(fullName);
            newUser.setRole(role);

            // Thêm người dùng vào cơ sở dữ liệu
            userDao.addUser(newUser);

            // Đăng ký thành công, lưu người dùng vào session
            HttpSession session = request.getSession();
            session.setAttribute("userID", newUser.getUsername());
            
            // IN RA VAI TRÒ ĐỂ DEBUG
            System.out.println("New user registered with role: " + role);

            // Chuyển hướng đến trang tương ứng với vai trò
            switch (role) {
                case "ADMIN":
                    response.sendRedirect(request.getContextPath() + "/admin.jsp");
                    break;
                case "MANAGER":
                    response.sendRedirect(request.getContextPath() + "/manager.jsp");
                    break;
                case "STAFF":
                    response.sendRedirect(request.getContextPath() + "/staff.jsp");
                    break;
                default:
                    response.sendRedirect(request.getContextPath() + "/index.jsp");
                    break;
            }


        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred during registration. Please try again.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
}
