package org.jboss.tools.examples.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean(name="employeeBean")
@SessionScoped
public class EmployeeBean  implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	private Integer id;
	private Integer age;
	
	EmployeeBean emp1= new EmployeeBean("Omer", 128312, 23);
	EmployeeBean emp2 = new EmployeeBean("riaz", 1312, 25);
	EmployeeBean emp3 = new EmployeeBean("Ahmad", 1283, 25);
	
	private List<EmployeeBean> list = new ArrayList<EmployeeBean>( Arrays.asList(emp1,emp2,emp3 ));
		
	
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public EmployeeBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public EmployeeBean(String name, Integer id, Integer age) {
		super();
		this.name = name;
		this.id = id;
		this.age = age;
	}
	public List<EmployeeBean> getList() {
		return list;
	}
	public void setList(List<EmployeeBean> list) {
		this.list = list;
	}
	
	
	
	

}
