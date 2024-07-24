package com.ureca.person.model.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.ureca.person.dto.Seat;

@Mapper
public interface SeatDAO {
	@Select("select seats_idx, seat_owner, seat_empty, name from seats left join members on(seat_owner = member_idx)")
	public List<Seat> readAll() throws SQLException;
}
