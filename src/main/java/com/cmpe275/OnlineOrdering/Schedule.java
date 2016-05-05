package com.cmpe275.OnlineOrdering;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

@Entity
@Table(name = "schedule")
public class Schedule {
	private int chefid;
	@Id
	private int orderid;
	private int busystarttime;
	private int busyendtime;
	private Date date;
	
	public int getChefid() {
		return chefid;
	}
	public void setChefid(int chefid) {
		this.chefid = chefid;
	}
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public int getBusystarttime() {
		return busystarttime;
	}
	public void setBusystarttime(int busystarttime) {
		this.busystarttime = busystarttime;
	}
	public int getBusyendtime() {
		return busyendtime;
	}
	public void setBusyendtime(int busyendtime) {
		this.busyendtime = busyendtime;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
}
