package controller;

import DAL.UserDAO;
import model.User; // Đã sửa từ DTO.User thành Model.User
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.mindrot.jbcrypt.BCrypt;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet xử lý logic đăng nhập của người dùng.
 * Sử dụng BCrypt để kiểm tra mật khẩu đã được hash.
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    /**
     * Phương thức chính để xử lý yêu cầu. Được gọi bởi cả doGet và doPost.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException nếu có lỗi từ servlet
     * @throws IOException nếu có lỗi I/O
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // Lấy tên người dùng và mật khẩu từ form
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        // Đảm bảo sử dụng đúng tên class của DAO
        UserDAO userDao = new UserDAO();
        
        try {
            // Tìm người dùng theo username
            User user = userDao.getUserByUsername(username);
            
            if (user != null) {
                // Kiểm tra mật khẩu bằng BCrypt
                if (BCrypt.checkpw(password, user.getPasswordHash())) {
                    // Đăng nhập thành công, lưu người dùng vào session
                    HttpSession session = request.getSession();
                    session.setAttribute("userID", user.getUsername());
                    
                    // Lấy vai trò của người dùng
                    String userRole = user.getRole();
                    
                    // Chuyển hướng đến trang tương ứng với vai trò
                    switch (userRole) {
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
                } else {
                    // Mật khẩu không đúng
                    request.setAttribute("errorMessage", "Tên đăng nhập hoặc mật khẩu không đúng.");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            } else {
                // Tên đăng nhập không tồn tại
                request.setAttribute("errorMessage", "Tên đăng nhập hoặc mật khẩu không đúng.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Đã xảy ra lỗi trong quá trình đăng nhập. Vui lòng thử lại.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    /**
     * Xử lý phương thức HTTP GET.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException nếu có lỗi từ servlet
     * @throws IOException nếu có lỗi I/O
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Xử lý phương thức HTTP POST.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException nếu có lỗi từ servlet
     * @throws IOException nếu có lỗi I/O
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
