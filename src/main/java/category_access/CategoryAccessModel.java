package category_access;

public class CategoryAccessModel {
	private int CategoryAccessId;
	private int categoryId;
	private int departmentId;
	
	public CategoryAccessModel(int categoryAccessId, int categoryId, int departmentId) {
		this.CategoryAccessId = categoryAccessId;
		this.categoryId = categoryId;
		this.departmentId = departmentId;
	}
	
	public int getCategoryAccessId() {
		return CategoryAccessId;
	}
	
	public void setCategoryAccessId(int categoryAccessId) {
		this.CategoryAccessId = categoryAccessId;
	}
	
	public int getCategoryId() {
		return categoryId;
	}
	
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	
	public int getDepartmentId() {
		return departmentId;
	}
	
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}
}
