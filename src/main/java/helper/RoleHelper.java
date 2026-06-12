package helper;

import user.User;

public class RoleHelper {
	
	public static final int ROLE_ADMIN = 1;
	public static final int ROLE_FINANCIAL_MANAGER = 2;
	public static final int ROLE_DEPARTMENT_MANAGER = 3;
	public static final int ROLE_STAFF = 4;
	
	
	public static boolean IsAdmin(User user) {
		return user != null && user.getRoleId() == ROLE_ADMIN;
	}
	
	public static boolean IsFinancialManager(User user) {
		return user != null && user.getRoleId() == ROLE_FINANCIAL_MANAGER;
	}
	
	public static boolean IsDepartmentManager(User user) {
		return user != null && user.getRoleId() == ROLE_DEPARTMENT_MANAGER;
	}
	
	public static boolean IsStaff(User user) {
		return user != null && user.getRoleId() == ROLE_STAFF;
	}
	
	public static String getTheme(int roleId) {
		switch (roleId) {
			case ROLE_ADMIN:
				return "admin-theme.css";
			case ROLE_FINANCIAL_MANAGER:
				return "financial-manager-theme.css";
			case ROLE_DEPARTMENT_MANAGER:
				return "department-manager-theme.css";
			case ROLE_STAFF:
				return "staff-theme.css";
			default:
				return "default-theme.css";
		}
	}
}
