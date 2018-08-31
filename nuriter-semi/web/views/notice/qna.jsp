<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.kh.nuriter.notice.model.vo.Notice.*"%>
	<%
	
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/semantic-ui@2.3.3/dist/semantic.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/semantic-ui@2.3.3/dist/semantic.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
.colorgraph {

	width: 98%;
	height: 3px;
	
	border-top: 0;
	background: rgb(241, 196, 15);
	border-radius: 3px;
}

#showLeft {
	/*  border-style: solid; */
	/* border-color: red; */
	float: left;
	width: 10%;
	/*  height:15%; */
	font-size: 20px;
	display: inline-block;
}

ul.navi2 li a {
	float: center;
	font-size: 15px;
	line-height: 10px;
	color: #000000;
	text-decoration: none;
	/* margin: auto;  */
	/* padding: 0 30px; */
	-moz-border-radius-topright: 10px;
	-webkit-border-top-right-radius: 10px;
	-moz-border-radius-topleft: 10px;
	-webkit-border-top-left-radius: 10px;
}

.web-font {
	font-family: 'Jua', sans-serif;
}

#listTable {
	text-align: center;
	width: 100%;
	max-width: 100%;
	height: 100%;
	border-spacing: 0;
	border-collapse: collapse;
	border: 2px solid #ccc;
	table-layout: fixed;
	font-family: 'Jua', sans-serif;
}

.showRight {
	float: right;
	/* border: 3px solid black; */
	height: 800px;
	width: 80%;
	margin-right: 105px;
	background:red;
}


#bButton{

 background: rgb(241, 196, 15);
 height:35px;
 text-color:white;
 float:right;
}

.buttonArea{
height:100px;
width:68%;
/* margin-left:300px; */
margin-left:auto;
margin-right:auto;
margin-top:5%;
}


table tr th {
   text-align: center;
   border: 1px solid black;
   height: 50px;
   background: rgb(241, 196, 15);
}
#listArea{
	margin-right:auto;
	margin-left:auto;
	
}

</style>
</head>
<body>
	<%@ include file="../common/logoAndLogbutton.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="main">
	<%if(!loginUser.getUserEmail().equals("admin")){ %>
		<div id="showLeft">
			<ul class="navi2" style="list-style-type: none">
				<hr class="colorgraph">
				<!-- 기능 -->
				<li class="web-font"><a href="#">고객센터</a></li>
				<hr class="colorgraph">
				<li class="web-font"><a href="fnq.jsp">자주묻는질문</a></li>
				<li class="web-font" id="qnaColor"><a href="qna.jsp">1:1 문의하기</a></li>
			</ul>
		</div>
		<%}else{ %>
			<%@ include file="../admin/adminbar.jsp" %>
		<% } %>
		<div class="showRight">
			<div class="buttonArea">
				<button id="bButton" onclick="location.href='quaInquire.jsp'">게시글 작성</button>
			</div>
			 <table id="listArea">
            <tr>
            
               <th width="200px">문의제목</th>
               <th width="500px">문의내용</th>
               <th width="100px">문의자</th>
               <th width="100px">문의날짜</th>
            </tr>
            <tr>
            	 <%--  <% for(reportNuri r : list){ %>
            <tr class="testList">
            <input type="hidden" value="<%=r.getBoardNum()%>"name="boardNum">
            <input type="hidden" value="<%=r.getN_ownerNum()%>" name="ownerNum">
            <input type="hidden" value="<%=r.getUserNum()%>" name="userNum">
               <td><%=r.getOwnerNickname()%></td>
               <td name="bTitle"><%=r.getBoardTitle() %></td>
               <td name="bContent"><%=r.getBoardContent() %></td>
               <td><%=r.getNuriNickname() %></td>
               <td name="bDate"><%=r.getBoardDate() %></td>
            </tr>
            
            <% } %> --%>
            </tr>
			</table>
			
		</div>
	</div>

</body>
</html>