<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
/* .adminBar{
	magin-top:5%;
	overflow:hidden;
} */
.main1 {
	width: 100%;
	height: 100%;
	display: inline-block;
	margin-top: 70px;
	/*    border-style: solid;
    border-color: red; */
}
.showRight{

 float:right;
 margin-right:10%;
/*  margin-left:auto; */
 height:500px;
 width:80%;
}


#bulletinTable{
height:100px;
width:68%;
/* margin-left:300px; */

margin-left:auto;
margin-right:auto;
/* margin-top:5%; */


}
.tHead{
 background: rgb(241, 196, 15);
 text-align:center;
 
}
#bulletinTable{
height:100px;
width:68%;
/* margin-left:300px; */
margin-left:auto;
margin-right:auto;
margin-top:5%;

}
.head1{
float:right;
 margin-right:35%;
 height:100px;
 width:20%;
}
td{
border:1px solid black;
text-align:center;
font-color:rgb(241, 196, 15);
}
.bButton{
float:right;
 margin-right:15%;
margin-top:10%;
width:68%;
height:50px;
}
/* div > button{
	float:right;
/* 	margin-right:30%; */
} */
</style>
</head>
<body>
	<%@ include file="../common/logoAndLogbutton.jsp"%>
	<%-- <%@ include file="../common/categorybar.jsp" %> --%>
	<div class="main1">
		<%@include file="../admin/adminbar.jsp"%>
		<div class="showRight">
		<div class="head1" id="web-font" >
			<h2>누리터 관리</h2>
		</div>
		<div class="bulletin" id="web-font">
			<div  class="bButton">
			<button>삭제하기</button>
			</div>
				<table id="bulletinTable">
					<tr class="tHead">
					 <td></td>
					 <td>누리터</td>
					 <td>누리장 이름</td>
					</tr>
					<tr class="tBody">
						<td><input type="checkbox"></td>
						<td>내용</td>
						<td>허민지</td>
					</tr>
					<tr class="tBody">
						<td><input type="checkbox"></td>
						<td>내용</td>
						<td>채은비</td>
					</tr>
				</table>
				</div>
		</div>
	</div>
</body>
</html>