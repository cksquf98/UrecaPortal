package org.ureca.urecaportal.person.model.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.ureca.urecaportal.person.dto.Seat;

@Mapper
public interface SeatDAO {
	@Select("select distinct seats_idx, seat_owner1, seat_owner2, m1.name as leftseat, m2.name as rightseat "
			+ "from seats "
			+ "left join members m1 on(seat_owner1 = m1.member_idx) "
			+ "left join members m2 on(seat_owner2 = m2.member_idx)")
	public List<Seat> readAll() throws SQLException;


	@Update("update seats set seat_owner1=#{seat_owner1}, seat_owner2=#{seat_owner2} where seats_idx=#{seat_idx}")
    int confirm(int seat_idx, int seat_owner1, int seat_owner2) throws SQLException;
}