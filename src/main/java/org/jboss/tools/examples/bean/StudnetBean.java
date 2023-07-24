package org.jboss.tools.examples.bean;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.view.ViewScoped;
import org.jboss.tools.examples.pojo.Student;


@ManagedBean(name="studentBean")
@ViewScoped
public class StudnetBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	List<Student> list;
	private Student std = new Student();
	Student brforeEditStd = null;
	private boolean edit;

	public void init() {
		list = new ArrayList<Student>();

	}

	public void add() {
		std.setId(list.isEmpty() ? 1 : list.get(list.size() - 1).getId() + 1);
		list.add(std);
		std = new Student();
	}

	public void resetAdd() {
		std = new Student();
	}

	public void edit(Student std) {
		brforeEditStd = std.clone();
		this.std = std;
		edit = true;
	}

	public void cancelEdit() {
		this.std.restore(brforeEditStd);
		this.std = new Student();
		edit = false;
	}

	public void saveEdit() {
		// DAO save the edit
		this.std = new Student();
		edit = true;
	}

	public void delete(Student std) throws IOException {
		// DAO save the delete
		list.remove(std);
	}

	
	public List<Student> getList() {
		return list;
	}

	public Student getStd() {
		return this.std;
	}

	public boolean isEdit() {
		return this.edit;
	}

}
