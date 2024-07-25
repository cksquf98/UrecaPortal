package com.ureca.person.model.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.ureca.person.dto.Seat;

@Mapper
public interface SeatDAO {
	@Select("select seats_idx, seat_owner1, seat_owner2, m1.name as leftseat, m2.name as rightseat "
			+ "from seats "
			+ "left join members m1 on(seat_owner1 = m1.member_idx) "
			+ "left join members m2 on(seat_owner2 = m2.member_idx)")
	public List<Seat> readAll() throws SQLException;
}
