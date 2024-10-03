package bank.employee.main.contorllers;

import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import bank.employee.main.entities.EmployeeEntity;
import bank.employee.main.repositories.EmployeeRepository;

@Controller
public class employeeContoller {
	
	@Autowired
	private EmployeeRepository employeeRepository;
	
	@GetMapping("/info")
	public String showPage() {
		return "index";
		
	}
	@PostMapping("/employeeInfo") 
	public String employeeInfo(HttpServletRequest req) {
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String cellno = req.getParameter("cellno");
		String address = req.getParameter("address");
		
		EmployeeEntity entity = new EmployeeEntity();
		entity.setName(name);
		entity.setEmail(email);
		entity.setCellno(cellno);
		entity.setAddress(address);
		entity.setDoe(new Timestamp(new Date().getTime()));
		req.setAttribute("message", "employee data added into database");
		employeeRepository.save(entity);
		
		return "index";
		
	}

}
