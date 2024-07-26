package org.ureca.urecaportal.person.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.ureca.urecaportal.person.dto.Seat;
import org.ureca.urecaportal.person.model.dao.SeatDAO;


@Service
public class SeatServiceImp implements SeatService {
	@Autowired
	SeatDAO dao;
	
	@Override
	public List<Seat> readAll() throws SQLException {
		
		return dao.readAll();
	}


	@Override
	public int confirm(int seat_idx, int seat_owner1, int seat_owner2) throws SQLException {
		return dao.confirm(seat_idx, seat_owner1, seat_owner2);
	}

}
