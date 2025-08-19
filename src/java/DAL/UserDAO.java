package DAL;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Timestamp;
import model.User;

public class UserDAO {

    /**
     * Retrieves all users from the Users table.
     * @return A list of User objects.
     */
    public List<User> getAllUsers() {
        List<User> userList = new ArrayList<>();
        String sql = "SELECT * FROM dbo.Users";
        
        try (Connection connection = DBContext.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getLong("Id"));
                user.setUsername(rs.getString("Username"));
                user.setPasswordHash(rs.getString("PasswordHash"));
                user.setFullName(rs.getString("FullName"));
                user.setRole(rs.getString("Role"));
                user.setActive(rs.getBoolean("Active"));
                user.setCreatedAt(rs.getTimestamp("CreatedAt"));
                user.setUpdatedAt(rs.getTimestamp("UpdatedAt"));
                userList.add(user);
            }
        } catch (SQLException e) {
            System.err.println("Error retrieving all users: " + e.getMessage());
        }
        return userList;
    }

    /**
     * Retrieves a user by their username.
     * @param username The username of the user to find.
     * @return The User object, or null if not found.
     */
    public User getUserByUsername(String username) {
        String sql = "SELECT * FROM dbo.Users WHERE Username = ?";
        User user = null;
        
        try (Connection connection = DBContext.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql)) {
            
            ps.setString(1, username);
            
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    user = new User();
                    user.setId(rs.getLong("Id"));
                    user.setUsername(rs.getString("Username"));
                    user.setPasswordHash(rs.getString("PasswordHash"));
                    user.setFullName(rs.getString("FullName"));
                    user.setRole(rs.getString("Role"));
                    user.setActive(rs.getBoolean("Active"));
                    user.setCreatedAt(rs.getTimestamp("CreatedAt"));
                    user.setUpdatedAt(rs.getTimestamp("UpdatedAt"));
                }
            }
        } catch (SQLException e) {
            System.err.println("Error finding user by username: " + e.getMessage());
        }
        return user;
    }

    /**
     * Adds a new user to the database.
     * @param user The User object to add.
     * @return true if the user was added successfully, false otherwise.
     */
    public boolean addUser(User user) {
        String sql = "INSERT INTO dbo.Users (Username, PasswordHash, FullName, [Role]) VALUES (?, ?, ?, ?)";
        
        try (Connection connection = DBContext.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql)) {
            
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPasswordHash());
            ps.setString(3, user.getFullName());
            ps.setString(4, user.getRole());
            
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            System.err.println("Error adding user: " + e.getMessage());
        }
        return false;
    }

    /**
     * Updates an existing user in the database.
     * @param user The User object with updated information.
     * @return true if the user was updated successfully, false otherwise.
     */
    public boolean updateUser(User user) {
        String sql = "UPDATE dbo.Users SET Username = ?, FullName = ?, [Role] = ?, Active = ?, UpdatedAt = SYSUTCDATETIME() WHERE Id = ?";
        
        try (Connection connection = DBContext.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql)) {
            
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getFullName());
            ps.setString(3, user.getRole());
            ps.setBoolean(4, user.isActive());
            ps.setLong(5, user.getId());
            
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            System.err.println("Error updating user: " + e.getMessage());
        }
        return false;
    }

    /**
     * Deletes a user from the database by ID.
     * @param id The ID of the user to delete.
     * @return true if the user was deleted successfully, false otherwise.
     */
    public boolean deleteUser(long id) {
        String sql = "DELETE FROM dbo.Users WHERE Id = ?";
        
        try (Connection connection = DBContext.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql)) {
            
            ps.setLong(1, id);
            
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            System.err.println("Error deleting user: " + e.getMessage());
        }
        return false;
    }
       public User login(String username, String password) {
        User user = getUserByUsername(username);
        if (user != null) {
            // Note: In a real-world application, you should use a secure hashing library 
            // like BCrypt to compare the provided password with the stored password hash.
            // For this example, we'll assume the password is the same as the hash for demonstration.
            if (user.getPasswordHash() != null && user.getPasswordHash().equals(password)) {
                return user;
            }
        }
        return null;
    }

}