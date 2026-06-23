package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.UserModel;
import connection.DBConnection;

public class UserDAO {
	private static Connection conn = null;
	private static PreparedStatement ps = null;
	private static ResultSet rs = null;
	private static String sql = null;

	
	// this is for user login() function
    public UserModel login(String email, String password) {

        UserModel user = null;

        try {

            conn = DBConnection.getConnection();

            sql = "SELECT * FROM USERS WHERE EMAIL=? AND PASSWORD=?";

            ps = conn.prepareStatement(sql);

            ps.setString(1, email);
            ps.setString(2, password);

            rs = ps.executeQuery();

            if(rs.next()) {

                user = new UserModel();

                user.setUserId(rs.getInt("USERID"));

                user.setEmail(rs.getString("EMAIL"));

                user.setName(rs.getString("NAME"));

                user.setDepartmentId(rs.getInt("DEPARTMENTID"));

                user.setRoleId(rs.getInt("ROLEID"));
            }

            conn.close();

        } catch(Exception e) {
            e.printStackTrace();
        }

        return user; //return Object
    }
	
	// this is for show user information
    public static List<UserModel> getAllUsers() throws SQLException {

        List<UserModel> list = new ArrayList<>();

        try {
            Connection conn = DBConnection.getConnection();

            String sql = "SELECT * FROM users";
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                UserModel u = new UserModel();
                u.setUserId(rs.getInt("USERID"));
                u.setName(rs.getString("NAME"));
                u.setEmail(rs.getString("EMAIL"));
                u.setRoleId(rs.getInt("ROLEID"));
                u.setDepartmentId(rs.getInt("DEPARTMENTID"));
                

                list.add(u);
            }
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

}
