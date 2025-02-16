package com.ureca.person.dto;

public class Member {
	private int member_idx;
	private String id;
    private String name;
    private String password;
    private String phone;
    private int seat;
    private String location;
    
    public Member() { }
    
    public Member(String id, String password) {
    	this.setId(id);
    	this.setPassword(password);
    }

	public Member(int member_idx,String id, String name, String password, 
				  String phone, int seat, String location) {
		this.setMember_idx(member_idx);
		this.setId(id);
		this.setName(name);
    	this.setPassword(password);
    	this.setPhone(phone);
    	this.setSeat(seat);
    	this.setLocation(location);
	}

	public int getMember_idx() {
		return member_idx;
	}

	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "Member [member_idx=" + member_idx + ", id=" + id + ", name=" + name + ", password=" + password
				+ ", phone=" + phone + "]";
	}

	public int getSeat() {
		return seat;
	}

	public void setSeat(int seat) {
		this.seat = seat;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}    
}
