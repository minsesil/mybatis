<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<style>
	table{width:500px; margin-top: 50px;}
</style>
</head>

<body>
	<jsp:include page="../common/menubar.jsp" />
	
	<form action="binsert.me" method="post" id="bPostForm">
	
		<table align="center" width="700">
			<tr>
				<th colspan="2" bgcolor="lightblue" height="30">글쓰기</th>
			</tr>
			<tr>
				<td width="20%">성명</td>
				<td><input name="board_writer"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input name="board_title"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="board_content" rows="10" cols="50"></textarea></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td colspan="2"><hr></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="등록">&emsp;
					<input type="reset" value="다시쓰기">&emsp;
					<input type="button" value="리스트">
				</td>
			</tr>
		</table>
		
	</form>

</body>
</html>