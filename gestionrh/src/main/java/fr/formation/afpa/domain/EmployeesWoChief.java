package fr.formation.afpa.domain;

import java.util.List;

public class EmployeesWoChief {

	private List<Employee> listempwochief;

	public List<Employee> getListempwochief() {
		return listempwochief;
	}

	public void setListempwochief(List<Employee> listempwochief) {
		this.listempwochief = listempwochief;
	}

	public EmployeesWoChief(List<Employee> listempwochief) {
		super();
		this.listempwochief = listempwochief;
	}

public EmployeesWoChief() {
	// TODO Auto-generated constructor stub
}

}
