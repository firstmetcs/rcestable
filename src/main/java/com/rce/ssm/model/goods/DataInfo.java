package com.rce.ssm.model.goods;


public class DataInfo {
	private String context = "";
	private String time = "";
	private String ftime = "";

	public DataInfo(String context, String time, String ftime) {
		this.context = context;
		this.time = time;
		this.ftime = ftime;
	}

	public DataInfo() {
	}

	public String getContext() {
		return this.context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getFtime() {
		return this.ftime;
	}

	public void setFtime(String ftime) {
		this.ftime = ftime;
	}

	public String toString() {
		return "DataInfo [context=" + this.context + ", time=" + this.time
				+ ", ftime=" + this.ftime + "]";
	}
}
