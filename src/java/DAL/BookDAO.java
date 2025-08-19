/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;
import java.sql.*;
import java.util.ArrayList;
import model.Books;

/**
 *
 * @author Nguyen Van Manh
 */
public class BookDAO extends DBContext{
    public ArrayList<Books> getTop8BestSellerBooks() {
        ArrayList<Books> list = new ArrayList<>();
        String sql =
            "SELECT TOP 8 b.* " +
            "FROM dbo.OrderDetails od " +
            "JOIN dbo.Orders o ON od.OrderId=o.Id " +
            "JOIN dbo.Books b ON od.BookId=b.Id " +
            "WHERE o.Status=N'PAID' AND o.PaymentStatus=N'PAID' " +
            "GROUP BY b.Id, b.Code, b.Title, b.ISBN, b.Price, b.StockQty, b.MinStock, " +
            "         b.CoverUrl, b.Description, b.Status, b.CategoryId, b.PublisherId, " +
            "         b.Version, b.CreatedAt, b.UpdatedAt " +
            "ORDER BY SUM(od.Quantity) DESC, SUM(od.LineTotal) DESC, b.Title ASC";
        try (PreparedStatement stm = connection.prepareStatement(sql);
             ResultSet rs = stm.executeQuery()) {

            while (rs.next()) {
                Books b = new Books(
                    rs.getInt("Id"),
                    rs.getString("Code"),
                    rs.getString("Title"),
                    rs.getString("ISBN"),
                    rs.getDouble("Price"),
                    rs.getInt("StockQty"),
                    rs.getInt("MinStock"),
                    rs.getString("CoverUrl"),
                    rs.getString("Description"),
                    rs.getString("Status"),
                    rs.getInt("CategoryId") ,
                    rs.getInt("PublisherId"),
                    rs.getInt("Version"),
                    rs.getTimestamp("CreatedAt").toLocalDateTime(),
                    rs.getTimestamp("UpdatedAt").toLocalDateTime()
                );
                list.add(b);
            }
        } catch (SQLException e) {
            System.out.println("getTop8BestSellerBooks: " + e.getMessage());
        }
        return list;
    }
    public ArrayList<Books> getTop1BestSellerBooks() {
        ArrayList<Books> list = new ArrayList<>();
        String sql =
            "SELECT TOP 1 b.* " +
            "FROM dbo.OrderDetails od " +
            "JOIN dbo.Orders o ON od.OrderId=o.Id " +
            "JOIN dbo.Books b ON od.BookId=b.Id " +
            "WHERE o.Status=N'PAID' AND o.PaymentStatus=N'PAID' " +
            "GROUP BY b.Id, b.Code, b.Title, b.ISBN, b.Price, b.StockQty, b.MinStock, " +
            "         b.CoverUrl, b.Description, b.Status, b.CategoryId, b.PublisherId, " +
            "         b.Version, b.CreatedAt, b.UpdatedAt " +
            "ORDER BY SUM(od.Quantity) DESC, SUM(od.LineTotal) DESC, b.Title ASC";
        try (PreparedStatement stm = connection.prepareStatement(sql);
             ResultSet rs = stm.executeQuery()) {

            while (rs.next()) {
                Books b = new Books(
                    rs.getInt("Id"),
                    rs.getString("Code"),
                    rs.getString("Title"),
                    rs.getString("ISBN"),
                    rs.getDouble("Price"),
                    rs.getInt("StockQty"),
                    rs.getInt("MinStock"),
                    rs.getString("CoverUrl"),
                    rs.getString("Description"),
                    rs.getString("Status"),
                    rs.getInt("CategoryId") ,
                    rs.getInt("PublisherId"),
                    rs.getInt("Version"),
                    rs.getTimestamp("CreatedAt").toLocalDateTime(),
                    rs.getTimestamp("UpdatedAt").toLocalDateTime()
                );
                list.add(b);
            }
        } catch (SQLException e) {
            System.out.println("getTop8BestSellerBooks: " + e.getMessage());
        }
        return list;
    }
    public static void main(String[] args) {
        BookDAO dao = new BookDAO();
        ArrayList<Books> data = dao.getTop1BestSellerBooks();
        for (Books o : data) {
            System.out.println(o);
        }
    }
}
