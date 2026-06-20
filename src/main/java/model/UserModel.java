package model;

public class UserModel {
		private int userId;
	private String name;
	private String email;
	private int roleId;
	private int departmentId;

	public UserModel(int userId, String name, String email, int roleId, int departmentId) {
		this.userId = userId;
		this.name = name;
		this.email = email;
		this.roleId = roleId;
		this.departmentId = departmentId;
	}

	public int getUserId() {
		return userId;
	}
	
	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public int getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}
}
