package com.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.model.Customerorder;

@Component
public class Orderdao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	// Insert operatiion function
	@Transactional
	public void addOrder(Customerorder order1) {
		hibernateTemplate.saveOrUpdate(order1);
	}

	// select all data function
	public List<Customerorder> getdata() {

		List<Customerorder> all = hibernateTemplate.loadAll(Customerorder.class);

		return all;
	}

	// fetch single Row data
	public Customerorder getcustomerdata(int id) {
		Customerorder customerorder = hibernateTemplate.get(Customerorder.class, id);
		return customerorder;
	}

	// deleted data
	@Transactional
	public void Deletedata(int id) {
		Customerorder customerorder = this.hibernateTemplate.get(Customerorder.class, id);
		hibernateTemplate.delete(customerorder);
		System.out.println("data deleted succesfully");
	}

	//Update Data 
	@Transactional
	public void UpdateData(Customerorder co) {
		hibernateTemplate.update(co);
	}
}
