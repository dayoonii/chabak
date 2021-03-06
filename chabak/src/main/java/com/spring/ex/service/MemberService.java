package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.MemberIDao;
import com.spring.ex.dto.MemberDto;

@Service("IMemberService")
public class MemberService implements IMemberService {
	@Autowired
	public MemberIDao dao;
	
	@Override
	public int userInsert (MemberDto memdto) {
		return dao.userInsert(memdto);
	}
	
	@Override
	public MemberDto login (MemberDto memdto) {

		return dao.login(memdto);
	}
	
	@Override
	public int memberUpdate(MemberDto memdto) {
		return dao.memberUpdate(memdto);

	}


	@Override
	public int memberDelete(MemberDto memdto) {
		return dao.memberDelete(memdto);
	}

	
	@Override
	public List<MemberDto> memberListAll() {
		return dao.memberListAll();
	}
	
	@Override
	public int pointUpdate(MemberDto memdto) {
		return dao.pointUpdate(memdto);
	}
	@Override
	public void register(MemberDto dto) throws Exception {
		dao.register(dto);
	}
	@Override
	public MemberDto find_id (MemberDto memdto) {
		return dao.find_id(memdto);
	}
	@Override
	public MemberDto find_pw (MemberDto memdto) {
		return dao.find_pw(memdto);
	}
	@Override
	public MemberDto selectMember (MemberDto memdto) {
		return dao.selectMember(memdto);
	}
	@Override
	public int memberPointUpdate(int point, String id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("point",point);
		map.put("id",id);
		return dao.memberPointUpdate(map);
	}

}
