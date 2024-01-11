<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<title>Insert title here</title>
<style>

    #list-area {
    	width:100%;
        border: 1px solid;
        text-align: center;
    	border-collapse: collapse;
    }
    #list-area th, #list-area td{
        border: 1px solid;
        height: 30px;
    }
    
    #ellip {
    	overflow: hidden;  		
		text-overflow: ellipsis;  	
		white-space: nowrap;
    }
    
    #search-area{text-align: center;}
</style>
</head>

<body>

<jsp:include page="../common/menubar.jsp" />
	
    <div class="outer" align="center">
        <h1 align="center">마이페이지</h1>

       <form action="update.me" method="get" id="memberUpdateForm">
        
        <table id="list-area" align="left">
        
        <tr>
        	<td width="15%">이름</td>
        </tr>
        <tr>
        	<td><input name="user_name" value="${loginUser.user_name}" disabled></td>
        </tr>
        <tr>
        	<td>비밀번호</td>
        </tr>
        <tr>
        	<td><input name="user_pwd" value="${loginUser.user_pwd}" ></td>
        </tr>
         <tr>
        	<td width="15%">EMAIL</td>
        </tr>
        <tr>
        	<td><input name="email" value="${loginUser.email}" ></td>
        </tr>       	
        <tr>
        	<td width="15%">전화번호</td>
        </tr>
        <tr>
        	<td><input name="phone" value="${loginUser.phone}" ></td>
        </tr>
        <tr>
        	<td width="15%">주소</td>
        </tr>
        <tr>
        	<td><input name="address" value="${loginUser.address}" size="50"></td>
        </tr>        
        </table>
        
		<input type="hidden" name="user_id" value="${loginUser.user_id}">
		
		
		<br><br>
		<input type="submit" value="회원정보수정">&emsp;
		<input type="reset" value="삭제">&emsp;

	</form>
    </div>
    
</body>
</html>