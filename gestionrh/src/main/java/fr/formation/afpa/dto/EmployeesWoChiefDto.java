package fr.formation.afpa.dto;

import java.util.ArrayList;
import java.util.List;

import fr.formation.afpa.domain.Employee;

public class EmployeesWoChiefDto {

	private List<EmployeeDto> listempwochief;

	public List<EmployeeDto> getListempwochief() {
		return listempwochief;
	}

	public void setListempwochief(List<EmployeeDto> listempwochief) {
		this.listempwochief = listempwochief;
	}

	public EmployeesWoChiefDto(List<EmployeeDto> listempwochief) {
		super();
		this.listempwochief = listempwochief;
	}

public EmployeesWoChiefDto() {
	// TODO Auto-generated constructor stub
}

public void setListempwochiefNotDto(List<Employee> list) {
	List<EmployeeDto> listemp = new ArrayList<EmployeeDto>();
	for (Employee e : list) {
		EmployeeDto dto = new EmployeeDto(e);
		listemp.add(dto);
	}
	this.listempwochief=listemp;
}
}
