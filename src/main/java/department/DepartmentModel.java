package department;

public class DepartmentModel {
 private int departmentId;
 private String departmentName;
 private String description;
 
 public DepartmentModel(int departmentId, String departmentName, String description) {
 	this.departmentId = departmentId;
 	this.departmentName = departmentName;
 	this.description = description;
 }
 
 public int getDepartmentId() {
 	return departmentId;
 }
 
 public void setDepartmentId(int departmentId) {
 	this.departmentId = departmentId;
 }
 
 public String getDepartmentName() {
 	return departmentName;
 }
 
 public void setDepartmentName(String departmentName) {
 	this.departmentName = departmentName;
 }	
 
 public String getDescription() {
 	return description;
 }
 
 public void setDescription(String description) {
 	this.description = description;
 }
}
