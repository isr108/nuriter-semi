<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#main{
   	  border:1px solid black;
   	  min-height:90%;
    }
    #notice{
   	  border:1px solid blue;
   	  width:40%;
   	  margin-left:auto;
   	  margin-right:auto;
   	  width: 1080px;
   	  min-height: 700px;
   	  background-color:#eaeaea;
    }
    #tableArea{
    	border:1px solid red;
    	width:80%;
    }
</style>
</head>
<body>
	<%@ include file="../common/logoAndLogbutton.jsp" %>
	<%-- <%if(loginUser != null && loginUser.getUserId().equals("admin")){ %> --%>
	<div id="main">
	<br><br> <br><br>
		<div id="notice" align="center">
		  <h2 align="center">공지 사항 작성</h2>
		  <div id="tableArea">
		  	<form action="<%=request.getContextPath() %>/insert.no" method="post">
		  		<table align="center">
		  			<tr>
		  				<td>제목</td>
		  				<td colspan="3"><input type="text" size="95%" name="title"></td>
		  			</tr>
		  			<tr>
		  				<td>작성자</td>
		  				<td>
		  					<input type="text" value="<%=loginUser.getNickName()%>" name="writer" readonly>
		  					<input type="text" value="<%=loginUser.getUserNumber()%>" name="userNumber">
		  				</td>
		  				<td>작성일</td>
						<td><input type="date" name="date"></td>
		  			</tr>
		  			<tr>
						<td>내용</td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td colspan="4">
						<textarea rows="25" cols="105" name="content" style="resize:none;"></textarea>
						</td>
					</tr>
		  		</table>
		  		<br>
		  		<div align="center">
						<button type="reset">취소하기</button>
						<button type="submit">등록하기</button>
			    </div>
		  	</form>
		  </div>  
		</div>
	</div>
	
	<%-- <%}else{ 
		request.setAttribute("msg", "잘못된 경로로 접근하셨습니다!");
		request.getRequestDispatcher("../common/errorPage.jsp");
	} %> --%>
	
	<%@ include file="../common/footer.jsp" %>
</body>
</html>