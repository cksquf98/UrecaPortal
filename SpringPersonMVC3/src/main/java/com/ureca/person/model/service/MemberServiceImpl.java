package com.ureca.person.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import com.ureca.person.dto.Member;
import com.ureca.person.model.dao.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO dao;
	
	@Override
	public int add(Member member) throws SQLException {
		try {
            return dao.insert(member);
        } catch (DataIntegrityViolationException e) {
            throw new IllegalArgumentException("Duplicate entry: Member with ID '" + member.getId() + "' already exists.");
        }
	}
		
	@Override
	public int edit(Member member) throws SQLException {
		return dao.update(member);
	}

	@Override
	public int remove(int member_idx) throws SQLException {
		return dao.delete(member_idx);
	}

	@Override
	public Member read(String id) throws SQLException {
		return dao.select(id);
	}

	@Override
	public List<Member> readAll() throws SQLException {
		return dao.selectAll();
	}

	@Override
	public int loginCheck(Member member) throws SQLException {
		return dao.login(member);
	}


	@Override
	public int idCheck(String id) throws SQLException {
		return dao.idCheck(id);
	}

	@Override
	public List<Member> allocateSeat() throws SQLException {
		return dao.allocateSeat();
	}
}
