package com.model;

public class Ground {
	int gid;
	String groundname;
	String location;
	int availableGame;
	String phonenumber;
	String address;
	String email_id;
	String g_imagepath;
	Double price;
	
	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public int getGid() {
		return gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
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

	public int getAvailableGame() {
		return availableGame;
	}

	public void setAvailableGame(int availableGame) {
		this.availableGame = availableGame;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getG_imagepath() {
		return g_imagepath;
	}

	public void setG_imagepath(String g_imagepath) {
		this.g_imagepath = g_imagepath;
	}

	@Override
	public String toString() {
		return "Ground [gid=" + gid + ", groundname=" + groundname + ", location=" + location + ", availableGame="
				+ availableGame + ", phonenumber=" + phonenumber + ", address=" + address + ", email_id=" + email_id
				+ ", g_imagepath=" + g_imagepath + ", price=" + price + "]";
	}


	

	

	
	
}
