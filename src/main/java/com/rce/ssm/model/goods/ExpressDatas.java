package com.rce.ssm.model.goods;


import java.util.ArrayList;
import java.util.List;

public class ExpressDatas {
	private String message = "";
	private String state = "";
	private String status = "";
	private String com = "";
	private String nu = "";
	private String condition = "";
	private String ischeck = "";
	private List<DataInfo> data = new ArrayList();

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCom() {
		return this.com;
	}

	public void setCom(String com) {
		this.com = com;
	}

	public String getNu() {
		return this.nu;
	}

	public void setNu(String nu) {
		this.nu = nu;
	}

	public String getCondition() {
		return this.condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getIscheck() {
		return this.ischeck;
	}

	public void setIscheck(String ischeck) {
		this.ischeck = ischeck;
	}

	public List<DataInfo> getData() {
		return this.data;
	}

	public void setData(List<DataInfo> data) {
		this.data = data;
	}

	public String toString() {
		return

		"ExpressDatas [message=" + this.message + ", state=" + this.state
				+ ", status=" + this.status + ", com=" + this.com + ", nu="
				+ this.nu + ", condition=" + this.condition + ", ischeck="
				+ this.ischeck + ", data=" + this.data + "]";
	}
}
