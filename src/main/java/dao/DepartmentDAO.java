package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnection;
import model.DepartmentModel;

public class DepartmentDAO {
	private static Connection conn = null;
	private static PreparedStatement ps = null;
	private static ResultSet rs = null;
	private static String sql = null;
	
	public static List<DepartmentModel> getAllDept() throws SQLException{
		
		List<DepartmentModel> list = new ArrayList<>();;
		
		try {
			conn = DBConnection.getConnection();
			sql = "SELECT * FROM DEPARTMENT";
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				DepartmentModel dept = new DepartmentModel();
				dept.setDepartmentId(rs.getInt("DEPARTMENTID"));

				dept.setName(rs.getString("NAME"));
				list.add(dept);
			}
            rs.close();
            ps.close();		
		} catch (SQLException e) {
            e.printStackTrace();
        }
		
		return list;
		
	}
}
