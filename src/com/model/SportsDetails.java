package com.model;

public class SportsDetails {
    int avilable_id;
    String groundname;
	String location;
	String address;
	String sportsname;
	String imagepath;
	
	public int getAvilable_id() {
		return avilable_id;
	}
	public void setAvilable_id(int avilable_id) {
		this.avilable_id = avilable_id;
	}
	public String getGroundname() {
		return groundname;
	}
	public void setGroundname(String groundname) {
		this.groundname = groundname;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSportsname() {
		return sportsname;
	}
	public void setSportsname(String sportsname) {
		this.sportsname = sportsname;
	}
	public String getImagepath() {
		return imagepath;
	}
	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}
	@Override
	public String toString() {
		return "SportsDetails [avilable_id=" + avilable_id + ", groundname="
				+ groundname + ", location=" + location + ", address="
				+ address + ", sportsname=" + sportsname + ", imagepath="
				+ imagepath + "]";
	}
	

}
