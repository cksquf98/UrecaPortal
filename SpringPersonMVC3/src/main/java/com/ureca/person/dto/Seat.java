package com.ureca.person.dto;

public class Seat {
	private int seats_idx;
	private int seat_owner;
	private boolean seat_empty;
	private String name;
	
	public Seat() { }
	
	public Seat(int seats_idx, int seat_owner, boolean seat_empty, String name) {
		this.seats_idx = seats_idx;
		this.seat_owner = seat_owner;
		this.seat_empty = seat_empty;
		this.name = name;
	}
	
	public int getSeats_idx() {
		return seats_idx;
	}
	public void setSeats_idx(int seats_idx) {
		this.seats_idx = seats_idx;
	}
	public int getSeat_owner() {
		return seat_owner;
	}
	public void setSeat_owner(int seat_owner) {
		this.seat_owner = seat_owner;
	}
	public boolean isSeat_empty() {
		return seat_empty;
	}
	public void setSeat_empty(boolean seat_empty) {
		this.seat_empty = seat_empty;
	}

	@Override
	public String toString() {
		return "Seat [seats_idx=" + seats_idx + ", seat_owner=" + seat_owner + ", seat_empty=" + seat_empty + "]";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
