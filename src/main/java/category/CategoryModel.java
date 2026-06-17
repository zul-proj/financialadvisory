package category;

public class CategoryModel {
	private int categoryId;
	private String name;
	private boolean isGeneric;
	private int parentCategoryId;
	
	public CategoryModel(int categoryId, String name, boolean isGeneric, int parentCategoryId) {
		this.categoryId = categoryId;
		this.name = name;
		this.isGeneric = isGeneric;
		this.parentCategoryId = parentCategoryId;
	}
	
	public int getCategoryId() {
		return categoryId;
	}
	
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public boolean isGeneric() {
		return isGeneric;
	}
	
	public void setGeneric(boolean isGeneric) {
		this.isGeneric = isGeneric;
	}
	
	public int getParentCategoryId() {
		return parentCategoryId;
	}
	
	public void setParentCategoryId(int parentCategoryId) {
		this.parentCategoryId = parentCategoryId;
	}
}
