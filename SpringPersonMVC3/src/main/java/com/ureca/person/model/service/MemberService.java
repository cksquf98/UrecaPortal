package com.ureca.person.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ureca.person.dto.Member;
import com.ureca.person.dto.Seat;

public interface MemberService {
	
	public int loginCheck(Member person)throws SQLException;
	public int idCheck(String id) throws SQLException;
	public int add(Member person)throws SQLException;
	public int edit(Member member)throws SQLException;
	public int remove(int member_idx)throws SQLException;
	
	public Member read(String id)throws SQLException;
	public List<Member> readAll()throws SQLException;
	public List<Member> allocateSeat() throws SQLException;
}
