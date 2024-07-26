package org.ureca.urecaportal.person.model.service;

import org.ureca.urecaportal.person.dto.Seat;

import java.sql.SQLException;
import java.util.List;


public interface SeatService {
	public List<Seat> readAll() throws SQLException;
	public int confirm(int seat_idx, int seat_owner, int seat_owner2) throws SQLException;
}
