package fr.formation.afpa.domain;

import java.util.List;

public class EmployeesParam {

	private List<Employee> employeesparam;

	public EmployeesParam() {
		super();
	}

	public List<Employee> getEmployeesparam() {
		return employeesparam;
	}

	public void setEmployeesparam(List<Employee> employeesparam) {
		this.employeesparam = employeesparam;
	}

	public EmployeesParam(List<Employee> employeesparam) {
		super();
		this.employeesparam = employeesparam;
	}

}
