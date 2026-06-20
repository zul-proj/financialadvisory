package model;

import java.util.Date;

public class DepartmentBudgetModel {
	private int departmentBudgetId;
	private int departmentId;
	private double initialBudget;
	private double remainingBudget;
	private Date dateStart;
	private Date dateEnd;
	private boolean isActiveBudget;
	
	public DepartmentBudgetModel(int departmentBudgetId, int departmentId, double initialBudget, double remainingBudget, Date dateStart, Date dateEnd, boolean isActiveBudget) {
		this.departmentBudgetId = departmentBudgetId;
		this.departmentId = departmentId;
		this.initialBudget = initialBudget;
		this.remainingBudget = remainingBudget;
		this.dateStart = dateStart;
		this.dateEnd = dateEnd;
		this.isActiveBudget = isActiveBudget;
	}
	
	public int getDepartmentBudgetId() {
		return departmentBudgetId;
	}
	
	public void setDepartmentBudgetId(int departmentBudgetId) {
		this.departmentBudgetId = departmentBudgetId;
	}
	
	public int getDepartmentId() {
		return departmentId;
	}
	
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}
	
	public double getInitialBudget() {
		return initialBudget;
	}
	
	public void setInitialBudget(double initialBudget) {
		this.initialBudget = initialBudget;
	}
	
	public double getRemainingBudget() {
		return remainingBudget;
	}
	
	public void setRemainingBudget(double remainingBudget) {
		this.remainingBudget = remainingBudget;
	}
	
	public Date getDateStart() {
		return dateStart;
	}
	
	public void setDateStart(Date dateStart) {
		this.dateStart = dateStart;
	}
	
	public Date getDateEnd() {
		return dateEnd;
	}
	
	public void setDateEnd(Date dateEnd) {
		this.dateEnd = dateEnd;
	}
	
	public boolean isActiveBudget() {
		return isActiveBudget;
	}
	
	public void setActiveBudget(boolean isActiveBudget) {
		this.isActiveBudget = isActiveBudget;
	}
}
