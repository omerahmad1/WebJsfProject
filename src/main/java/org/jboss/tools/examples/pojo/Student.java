package org.jboss.tools.examples.pojo;

public class Student {

	private Long id;
	private String name;
	private Integer age;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}


	public Student clone() {
		return new Student();

	}

	public void restore(Student student) {
		this.id = student.getId();
		this.age = student.getAge();
		this.name = student.getName();

	}
}
