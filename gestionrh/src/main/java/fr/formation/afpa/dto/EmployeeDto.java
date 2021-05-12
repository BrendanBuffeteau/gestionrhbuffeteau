package fr.formation.afpa.dto;

import java.util.Date;

import fr.formation.afpa.domain.Employee;

public class EmployeeDto {

	private Integer empId;
	private String firstName;
	private String lastName;
	private Date startDate;
	private Date endDate;
	private String title;
	private Integer department;
	private Integer manager;

	public EmployeeDto() {
	}
	
	public EmployeeDto(Employee e) {
		this.empId=e.getEmpId();
		this.firstName=e.getFirstName();
		this.lastName=e.getLastName();
		this.startDate=e.getStartDate();
		this.endDate=e.getEndDate();
		this.title=e.getTitle();
		if (e.getDepartment()!=null)	this.department=e.getDepartment().getDeptId();
		if (e.getManager()!=null)this.manager=e.getManager().getEmpId();
	}

	public Integer getEmpId() {
		return empId;
	}

	public void setEmpId(Integer empId) {
		this.empId = empId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getDepartment() {
		return department;
	}

	public void setDepartment(Integer department) {
		this.department = department;
	}

	public Integer getManager() {
		return manager;
	}

	public void setManager(Integer manager) {
		this.manager = manager;
	}

	@Override
	public String toString() {
		return "EmployeeDto [empId=" + empId + ", firstName=" + firstName + ", lastName=" + lastName + ", startDate="
				+ startDate + ", endDate=" + endDate + ", title=" + title + ", department=" + department + ", manager="
				+ manager + "]";
	}

}
