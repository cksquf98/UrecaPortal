package com.ureca.person.dto;

public class Seat {
	private int seats_idx;
	private int seat_owner1;
	private int seat_owner2;
	private boolean seat_empty;
	private String leftseat;
	private String rightseat;
	
	public Seat() { }
	
	public Seat(int seats_idx, int seat_owner1, int seat_owner2, boolean seat_empty) {
		this.seats_idx = seats_idx;
		this.seat_owner1 = seat_owner1;
		this.seat_owner2 = seat_owner2;
		this.seat_empty = seat_empty;
	}
	
	public int getSeats_idx() {
		return seats_idx;
	}
	public void setSeats_idx(int seats_idx) {
		this.seats_idx = seats_idx;
	}
	public boolean isSeat_empty() {
		return seat_empty;
	}
	public void setSeat_empty(boolean seat_empty) {
		this.seat_empty = seat_empty;
	}

	public int getSeat_owner1() {
		return seat_owner1;
	}

	public void setSeat_owner1(int seat_owner1) {
		this.seat_owner1 = seat_owner1;
	}

	public int getSeat_owner2() {
		return seat_owner2;
	}

	public void setSeat_owner2(int seat_owner2) {
		this.seat_owner2 = seat_owner2;
	}

	@Override
	public String toString() {
		return "Seat [seats_idx=" + seats_idx + ", seat_owner1=" + seat_owner1 + ", seat_owner2=" + seat_owner2
				+ ", seat_empty=" + seat_empty + "]";
	}

	public String getLeftseat() {
		return leftseat;
	}

	public void setLeftseat(String leftseat) {
		this.leftseat = leftseat;
	}

	public String getRightseat() {
		return rightseat;
	}

	public void setRightseat(String rightseat) {
		this.rightseat = rightseat;
	}

}
