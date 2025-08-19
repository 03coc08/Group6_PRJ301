/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

/**
 *
 * @author admin
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBContext {

    protected static Connection connection;

    private static final String URL = "jdbc:sqlserver://localhost:1433;databaseName=bookstore;encrypt=false";
    private static final String USER = "sa";  // Thay bằng username của bạn
    private static final String PASSWORD = "123";  // Thay bằng password của bạn
    private static final String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";

    // Phương thức để lấy kết nối
    public DBContext() {
        try {
            if (connection == null || connection.isClosed()) {
                Class.forName(DRIVER);
                connection = DriverManager.getConnection(URL, USER, PASSWORD);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Phương thức trả về connection hiện tại hoặc tạo mới nếu null/đóng rồi
    public static Connection getConnection() throws SQLException {
        try {
            if (connection == null || connection.isClosed()) {
                Class.forName(DRIVER);
                connection = DriverManager.getConnection(URL, USER, PASSWORD);
            }
        } catch (ClassNotFoundException e) {
            throw new SQLException("Driver not found!", e);
        }
        return connection;
    }

    // Đóng kết nối
    public static void closeConnection(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static void main(String[] args) throws SQLException {
        DBContext conn = new DBContext();
        System.out.println(conn.getConnection());
    }

    public ResultSet getData(String sql) {
        ResultSet rs = null;
        try {
            Statement st = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            rs = st.executeQuery(sql);
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return rs;
    }

    public boolean isConnected() {
        try {
            return connection != null && !connection.isClosed();
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
}