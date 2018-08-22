<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#leftSide {
	position: fixed;
	width: 160px;
	height: 300px;
	margin-top: 2%;
	margin-left: 3%;
	margin-right: auto;
	}
	.leftContent{
	width:100%;
	height:100%;
	align:left;
	border:1px solid gray;
	}
	#leftside div{
	align:center;
	}


#mpLogoPosition {
	/*top: 190px;
   		left: 90px; */
	width: 112px;
	height: 28px;
	margin-top: auto;
	margin-left: auto;
	margin-right: auto;
}

#mpLogo {
	font-family: 'Jua', sans-serif;
	margin-left: auto;
	margin-right: auto;
}


#name {

	font-family: 'Jua', sans-serif;
	padding-top:15%;
	margin-left: auto;
	margin-right: auto;
}


#myNuri {

	font-family: 'Jua', sans-serif;
	margin-left: auto;
	margin-right: auto;
}



#info {

	font-family: 'Jua', sans-serif;
	margin-left: auto;
	margin-right: auto;
}



#check {

	font-family: 'Jua', sans-serif;
	margin-left: auto;
	margin-right: auto;
}


#newNuri {

	font-family: 'Jua', sans-serif;
	margin-left: auto;
	margin-right: auto;
}

a {
	color: black;
}
</style>
</head>
<body>
	<!-- 왼쪽 마이페이지 목록 -->
	<div id="leftSide" align="left">
		<div id="mpLogo" style="font-size: 16px;" align="center">마이페이지</div>
		<br><br>
		<div class="leftContent">
			<div id="name" style="font-size: 18px;" align="center">홍길동</div>
		<br><br>
			<div id="myNuri" style="font-size: 16px;" align="center">
			<a href="<%=request.getContextPath()%>/views/common/myNuri.jsp">나의누리터</a>
			</div><br>
	
			<div id="info" style="font-size: 16px;" align="center">
				<a href="<%=request.getContextPath()%>/views/common/myInfo.jsp">개인정보수정</a>
			</div><br>
		
			<div id="check" style="font-size: 16px;" align="center">
				<a href="<%=request.getContextPath()%>/views/member/csCheck.jsp">출석체크</a>
			</div><br>
	
		
			<div id="newNuri" style="font-size: 16px;" align="center">
				<a href="<%=request.getContextPath()%>/views/member/nuriterOpen.jsp">나의 누리터 개설</a>
			</div><br>
		
		</div>
	</div>
	<!-- 마이페이지 -->


</body>
</html>