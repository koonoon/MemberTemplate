package com.icia.tmember.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.tmember.dto.MemberDTO;


@Repository
public class MemberDAO {

	// dao에서 mapper(DB)로 연결하기 위해서
	@Autowired
	private SqlSessionTemplate sql;
	
	
	
	// 회원가입 메소드
	public int mJoin(MemberDTO member) {
		System.out.println("[3]가입 DAO : " + member);

		return sql.insert("Member.join", member);
		// return sql.insert("Namespace.id", 가지고 갈 데이터);
	}


	// 회원목록 메소드
	public List<MemberDTO> mList() {
		System.out.println("[3]목록 DAO");
		return sql.selectList("Member.list");
	}


	// 회원정보 상세보기
	public MemberDTO mView(String mId) {
		System.out.println("[3]상세 DAO : " + mId);
		return sql.selectOne("Member.view", mId);
	}


	public int mDelete(String mId) {
		System.out.println("[3]삭제 DAO : " + mId);
		return sql.delete("Member.delete", mId);
	}


	public int mModify(MemberDTO member) {
		System.out.println("[3]수정 DAO : " + member);
		return sql.update("Member.modify", member);
	}


	public String mLogin(MemberDTO member) {
		System.out.println("[3]로그인 DAO : " + member);
		return sql.selectOne("Member.login", member);
	}



	

}
