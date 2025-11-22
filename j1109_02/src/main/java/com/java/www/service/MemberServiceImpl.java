package com.java.www.service;

import java.util.ArrayList;

import com.java.www.dao.MemberDao;
import com.java.www.dto.MemberDto;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MemberServiceImpl implements MemberService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		MemberDao dao = new MemberDao();
		ArrayList<MemberDto> list = dao.mlist();
		request.setAttribute("list", list);
		
	}

}
