package com.study.mybatis.board.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.study.mybatis.board.service.BoardServiceImpl;
import com.study.mybatis.board.vo.Board;


public class BoardInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int board_no;
	private Board board;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int board_no = Integer.parseInt(request.getParameter("board_no"));

		Board board = new Board();
		
		board.setBoard_no(board_no);
		board.setBoard_writer(request.getParameter("board_writer"));
		board.setBoard_title(request.getParameter("board_title"));
		board.setBoard_content(request.getParameter("board_content"));

		
		int result = new BoardServiceImpl().insertBoard(board);
		
		if(result>0) {
			response.sendRedirect(request.getContextPath());
		} else {
			request.setAttribute("errorMsg", "게시글입력실패");
			request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);		}
	}
}