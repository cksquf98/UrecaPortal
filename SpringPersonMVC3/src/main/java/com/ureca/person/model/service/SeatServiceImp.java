package com.ureca.person.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ureca.person.dto.Seat;
import com.ureca.person.model.dao.SeatDAO;

@Service
public class SeatServiceImp implements SeatService {
	@Autowired
	SeatDAO dao;
	
	@Override
	public List<Seat> readAll() throws SQLException {
		
		return dao.readAll();
	}

}
