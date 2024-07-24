package com.ureca.person.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ureca.person.dto.Seat;

public interface SeatService {
	public List<Seat> readAll() throws SQLException;
}
