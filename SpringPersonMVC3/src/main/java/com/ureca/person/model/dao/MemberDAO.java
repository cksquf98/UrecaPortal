package com.ureca.person.model.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.ureca.person.dto.Member;

@Mapper
public interface MemberDAO {

	
    @Insert("insert into members (id,name,password,phone,seat,location) values (#{id},#{name},#{password},#{phone}, #{seat}, #{location})")
    public int insert(Member member) throws SQLException; // 나는 sql 실행에만 전념할래

    @Update("update members set password=#{password}, name=#{name}, phone=#{phone} where id=#{id}")
    public int update(Member member) throws SQLException;

    @Delete("delete from members where member_idx=#{member_idx}")
    public int delete(int member_idx) throws SQLException;

    @Select("select member_idx, id, name, phone, seat, location from members where id=#{id}")
    public Member select(String id) throws SQLException;

    @Select("select member_idx, id, name, phone, seat, location from members")
    public List<Member> selectAll() throws SQLException;
	
    @Select("select ifnull((select member_idx from members where id = #{id} and password=#{password} limit 1), -1) as member_idx")
    public int login(Member member) throws SQLException;

    @Select("select ifnull((select member_idx from members where id = #{id}  limit 1), -1) as member_idx")
	public int idCheck(String id) throws SQLException;

    @Select("select member_idx, id, name, seat from members order by rand()")
	public List<Member> allocateSeat() throws SQLException;
    
}


















