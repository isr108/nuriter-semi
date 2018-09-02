<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- 네이버 로그인 api -->
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
 <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
 <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
 <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<title>누리터 로그인</title>

<style>
   input[type="submit"]{
	background:#424242;
	color:white;
	border-radius:10px;
	border:none;

	}
	input[type="submit"]:hover{
	background:#6E6E6E;
	color:white;
	border-radius:10px;
	border:none;
	}

	input[type="text"]:hover{
		border:1px solid #EDDB0B;
	}
	input[type="text"]:visited{
		border:1px solid #EDDB0B;
	}
	
	.colorgraph {
      width: 98%;
        height: 3px;
        border-top: 0;
        background: rgb(241, 196, 15);
        border-radius: 3px;
   }
   #wrapper {
       width:70%;
           /*margin : 0 auto ;*/
   }
    
   #web-font{
      font-family: 'Jua', sans-serif;
   }
   
   /*  #web-font a{
      text-decoration: none;
   } */
   
   #head{
      margin-left:3%;
      margin-top:1%;
      color: rgb(241, 196, 15);
      font-size:3em;
      text-decoration: none;
      /* padding:8px; */
      /* width:80%; */
   }
   
   #iBox{
      display: inline-block;
      margin-top: 5px;
      /* margin-left: 30px; */
      width:100%;
      height:10%;
      /*  height: 40px; */
   }
   
  #form1{
   /* border-style: solid;
    border-color: red;  */
  	width:300px;
  	height:150px;
  	padding:0;
  
  }
  
  #form2{
    /* border-style: solid;
    border-color: red; */
  	width:300px;
  	height:100%;;
  	padding:0;
  	margin-top:0;
  }
  
  #login1{
  	display:inline-block;
   /*  border-style: solid;
    border-color: red; */
  	width:100%;
  	min-height:90%;
  }
  
  html{
   		height:100%;
   }
   body{
   	 height:70%;
   }
  
  #login2{
 	display:inline-block;
  	 /*border-style: solid;  */
   /*  border-color: red; */
  	width:30%;
  	height:100%;
  }
  #login3{
 	display:inline-block;
    /* border-style: solid;  
    border-color: red;  */
  	height:15%;
  	float:right;
  }
  h3{
  	font-weight:bold;	
  }
  
  a{
  color:#585858;
  }
  
    #notice{
      float:center;
   	  display:inline-block;
      font-size: 15px;
      margin-left: 500px;
      margin-bottom: 40px;
   }
</style>
</head>
<body>
	<div id="iBox">
       <!--  <font id="web-font"><a id="head" href='../../index.jsp'>누리터</a></font>  -->
        <font id="web-font"><a id="head" href="#home" onclick="home()">누리터</a></font> 
   </div> 
   	<hr>


	<div id="login1" align="center">
		<div id="login2">
			<div align="left" style="width: 300px; height: 50px;"><h3>로그인</h3></div>
    		<form id = "form1" action="<%=request.getContextPath()%>/login.me" method="post">
			 <table>
			  <tr>
				<td><input type="text" name="useremail"
					style="width: 300px; height: 50px;" placeholder="이메일"></td>
			 </tr>
			  <tr>
				<td><input type="password" name="password"
					style="width: 300px; height: 50px; margin-top:10px;" placeholder="비밀번호"></td>
			  </tr> 
			</table>
	
		<div id="login3">
			<input type="checkbox" id="automaticLogin" value="automaticLogin">
			<label>자동로그인</label>
			<br>
			<br>
		 </div>
			<input type="submit" style="width: 300px; height: 50px;" value="로그인">
	
		<!-- </form> -->
			<br>
		<!-- <form id="form2"> -->
		<table>
			<span><label><a href="<%=request.getContextPath()%>/views/member/find_IdPassword.jsp">아이디/비밀번호 찾기</a></label></span>
			
			
			<span style="margin-left:55px;"><a href="../member/memberJoinForm.jsp">무료 회원가입</a></span>
			<br>
			<br>
	
			
		</table>
	 </form>
	 </div>
	 <br>
	  <!-- <button id="naver_id_login" type="button" style="width: 290px; height: 30px;" onclick="openChild()"><font id="web-font">네이버 로그인</font></button> --> 
	<!-- <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>-->
<%-- <%
  String clientId = "p7rY8Kd2Yc3e2TAc4l38";//애플리케이션 클라이언트 아이디값";
  String redirectURI = URLEncoder.encode("http://localhost:8001/ns/naverlogin", "UTF-8");
  SecureRandom random = new SecureRandom();
  String state = new BigInteger(130, random).toString();
  String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
  apiURL += "&client_id=" + clientId;
  apiURL += "&redirect_uri=" + redirectURI;
  apiURL += "&state=" + state;
  session.setAttribute("state", state);
%>  --%>

<%--  <%
    String clientId = "p7rY8Kd2Yc3e2TAc4l38";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("http://localhost:8001/ns/views/member/navercallback.jsp", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
 %>
  <a href="<%=apiURL%>"><img height="50" src="http://static.nid.naver.com/oauth/small_g_in.PNG"/></a> --%>

<%-- <%@ include file="/views/member/naverLogin.jsp" %> --%>

 <div id="naver_id_login"></div>
<script type="text/javascript"
		src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
		charset="utf-8"></script>

<script type="text/javascript">
		var clientId = "p7rY8Kd2Yc3e2TAc4l38";
		var callbackUrl = "http://localhost:8001/ns/views/member/navercallback.jsp";
		var naver_id_login = new naver_id_login(clientId, callbackUrl);
		var state = naver_id_login.getUniqState();
		naver_id_login.setButton("green", 3,48);
		naver_id_login.setDomain("http://localhost:8001");
		naver_id_login.setState(state);
		window.name="naverLogin";
		naver_id_login.setPopup();
		naver_id_login.init_naver_id_login();
</script>
	   <%--  <form id="login" method="post" name="frm" action="<%=request.getContextPath()%>/snslogin.me">
		
		<input type="hidden" name="useremail">
		<input type="hidden" name="idNum">
		<input type="hidden" name="nickname">
		<input type="hidden" name="refreshToken">
	</form> --%>

	
	 <br>
	<!-- <button type="button" style="width: 290px; height: 30px;"><font id="web-font">카카오톡으로
				시작하기</font></button> -->
				<a id="kakao-login-btn"></a>
				<a href="http://developers.kakao.com/logout"></a>
				<script type='text/javascript'>
				
				    Kakao.init('a8004af3cf14f2187ce86e8e3a84b0e4');
				    // 카카오 로그인 버튼을 생성합니다.
				   Kakao.Auth.createLoginButton({
					  
				      container: '#kakao-login-btn',
				      persistRefreshToken : true,
				      success: function(authObj) {
				      var accessToken=Kakao.Auth.getAccessToken();
					  var refreshToken=authObj.refresh_token;
				    	  
				    	if(accessToken){
				    		Kakao.API.request({
				    		  
				    		  url: '/v1/user/me',
				    		  success: function(res){
				    			  console.log(JSON.stringify(res));
				    			  /* console.log(JSON.stringify(res.kaccount_email));
				                  console.log(JSON.stringify(res.id));
				                  console.log(JSON.stringify(res.properties.profile_image));
				                  console.log(JSON.stringify(res.properties.nickname)); */
				                  var str = JSON.stringify(res);
				                  var id = str.substring(str.indexOf('id'),str.length);
				                  var start_id = id.indexOf(':');
				        		  var end_id = id.indexOf(',');
				        		  var idNum = id.substring(start_id+1,end_id);
				        		  
				        		  var email = str.substring(str.indexOf('kaccount_email'),str.length);
				        		  var start_email = email.indexOf(':\"');
				        		  var end_email = email.indexOf('\",');
				        		  var useremail = email.substring(start_email+2,end_email);
				        		  
				                  var nickEnd = str.substring(str.indexOf('nickname'),str.length);
				                  var start_nick = nickEnd.indexOf(':');
				                  var end_nick = nickEnd.indexOf(',');
				                  var nickname = nickEnd.substring(start_nick+2,end_nick-1);
				           
				                  /* $("#id").val(res.id);
				                  $("#nickname").val(res.nickname);
				                  $("#refreshToken").val(res.refreshToken); */
				                  console.log(useremail);
				                  
				                  
				                  document.frm.useremail.value=useremail;
				                  document.frm.idNum.value=idNum;
				                  document.frm.nickname.value=nickname;
				                  document.frm.refreshToken.value=refreshToken;
				                  document.frm.submit();
				    		  	},
				    	 	  	  fail: function(err) {
							      alert(JSON.stringify(err));
				    	 	  }
				    	  });
				    	}
				      },
				      fail: function(err) {
				         alert(JSON.stringify(err));
				      }
				    });
				   
				   
				</script>
				
	<form id="login" method="post" name="frm" action="<%=request.getContextPath()%>/snslogin.me">
		
		<input type="hidden" name="useremail">
		<input type="hidden" name="idNum">
		<input type="hidden" name="nickname">
		<input type="hidden" name="refreshToken">
	</form>
	</div>

	
	 <%--     <script>
        function openChild()
        {
            // window.name = "부모창 이름"; 
            window.name = "parentForm";
            // window.open("open할 window", "자식창 이름", "팝업창 옵션");
            window.open("<%=apiURL%>",
                    "childForm", "width=570, height=350, resizable = no, scrollbars = no");    
        }
   </script> --%>
	
	<script>
		function home(){
			location.href='<%=request.getContextPath()%>/';
		}
		
	
	</script> 
	<font id="web-font"><%@ include file="/views/common/footer.jsp" %></font>
</body>
</html>