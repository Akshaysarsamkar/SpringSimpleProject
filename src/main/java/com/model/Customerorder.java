package com.model;

import java.util.Arrays;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity

public class Customerorder {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int orderid;
	private String firstname;
	private String lastname;
	private String address;
	private String phoneno;
	private String list[];
	

	public String[] getList() {
		return list;
	}

	public void setList(String[] list) {
		this.list = list;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	@Override
	public String toString() {
		return "Customerorder [orderid=" + orderid + ", firstname=" + firstname + ", lastname=" + lastname
				+ ", address=" + address + ", phoneno=" + phoneno + ", list=" + Arrays.toString(list) + "]";
	}

	

}
