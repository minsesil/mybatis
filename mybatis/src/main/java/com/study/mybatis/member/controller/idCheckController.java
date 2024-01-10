package com.study.mybatis.member.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.study.mybatis.member.service.MemberServiceImpl;


public class idCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// checkId(String userId
		int result = new MemberServiceImpl().checkId(request.getParameter("checkId"));
		if(result>0) {
			response.getWriter().print("idN");
		} else {
			response.getWriter().print("idY");
		}
	}

}
