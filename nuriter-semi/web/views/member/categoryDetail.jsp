<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.nuriter.nuriter.model.vo.*"%>
<%
    int price = 100;

    
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset=UTF-8">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>

  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  
<title>categoryDetail</title>
<style>
#textBox{
	width:400px;
	height:auto;
	overflow:hidden;
}
    
hr {
	width:90%;
}
.content{
   margin-top: 170px;
   border:1px solid white;
   width:40%;
   margin-left:auto;
   margin-right:auto;
   width: 1200px;
   min-height: 935px;
}

.leftBox{
   float:left;
}

.images{
   padding-top:50px;
   margin-top: 50px;
   width:600px;
   height:auto;
   float:left;
}

#tabs{
   width:500px;
   margin-top:50px;
   /* margin-right:500px; */
}

.rightBox {
   float:right;
}

#info {
   border:2px solid #FFBF00;
   width:450px;
   height:auto;
   margin-bottom: 20px;
   overflow:hidden; 
   border-radius: 6px;
   
}

.likeOrAngry > div{
	border:2px solid #FFBF00;
	float:left;
	width: 223px;
	border-radius: 4px;
	cursor: pointer;
}

.likeOrAngry > div:hover{
	border:2px solid #FFBF00;
	background:#848484;
	float:left;
	width: 223px;
	border-radius: 4px;
	opacity: 0.8;
}

button {
   margin-top:10px;
   width:200px;
   height:50px;
}

#aboutHe{
   border:1px solid black;
   width:450px;
   height:400px;
   padding-top:20px;
}

#profile{
   width:100px;
   height:100px;
}

#introduce{
    margin-top: 30px;
}

#introduce > p{
   border:1px solid black;
   width:370px;
   height:200px;
}

#textBox {
	text-align:center;
    margin-top: 30px;
}

.rightBox {
	/* float:right; */
}

#popupDiv {  /* 팝업창 css */
    top : 0px;
    position: absolute;
    width: 550px;
    height: 550px;
    display: none; 
    background:#D8D8D8;
   	border:none;
    
    }
#textArea{
	margin-left:auto;
	margin-right:auto;
	margin-top:5px;
}
.popBtn{
	margin-top:10px;
		
}
#popSendbtn{
	background:#0080FF;
	color:white;
	margin-right:15px;
	height:30px;
	width:80px;
}
#popCloseBtn{
	background:#FFBF00;
	color:white;
	height:30px;
	width:80px;
}

.applyButton{
   margin-top:10px;
   width:200px;
   height:50px;
}
.likeOrAngry {
	overflow:hidden;
}
#nuri p{
	margin-left:20px;
	text-align:left;
	height:auto;
}
#enter {
	color: #424242;
	font-weight: 600;
    border-radius: 4px;
	background:#FFBF00;
}
#enter:hover {
	color: #424242;
	font-weight: 600;
    border-radius: 4px;
	background:#FFBF00;
	opacity: 0.6;
}
</style>
</head>
<body>
   <%@ include file="../common/logoAndLogbutton.jsp" %>
   <%@ include file="../common/categorybar.jsp" %>
   
<div class="content" align="center">
	   <div class="leftBox">
	    <div class="images">
	        
	   </div>
   </div>
   
   <div class="rightBox">
   	  <br>
   	  
      <div id="textBox">
      	<font id="web-font" size="4">BGM/MR 제작, 작곡, 편곡 하이퀄리티/맞춤제작해 드립니다.</font>
      </div>
      
      <br><br>
     <div id="info">
     	
     	<br>
        
        <div id="nuri">
	        <p><font id="web-font">누리장 : </font></p>
	        <p><font id="web-font">카테고리 : </font></p>
	        <hr>
	        <p><font id="web-font">시작일시: </font><br><font id="web-font">종료일시: </font></p>
	        <hr>
	        <p><font id="web-font">장소: </font></p>
	        <hr>
	        <p><font id="web-font">가격(1인) : </font></p>
	        <p><font id="web-font">정원 : </font></p>
        </div>
        
        <hr color="red" size="10px">
        
        <div class="likeOrAngry">
        
	        <div>
	             <i class="far fa-grin-hearts fa-5x"></i><br><font id="web-font">관심누리터 등록</font>
	        </div>
	            
	        <div>
	             <i class="fas fa-angry fa-5x" id="popOpen" data-toggle="modal" data-target="#popupDiv"></i><br><font id="web-font">게시글 신고</font>
	        </div>
	         
            <div id="popupDiv" class="modal fade" role="dialog">
	            <h2 id="web-font">누리터 신고</h2>
	            <div id="textArea">
		            <h5 id="web-font">신고 제목</h5>
		            <input type="text" style="width:300px; height:30px;border:6px solid #FFBF00;" id="reportTitle" name="reportTitle">
		            <h5 id="web-font">신고 내용</h5>
		            <textarea rows="15" cols="50" id="report" style="border:6px solid #FFBF00;" name="reportContent"></textarea>
	            </div>
	            <div class="popBtn">
		            <button id="popSendbtn">send</button>
		            <button id="popCloseBtn">close</button>
	            </div>
           </div>
        </div>
         
         <div>
         	<button id="enter" onclick="choice();"><font id="web-font">누리터 신청하기</font></button>
         </div>
    </div>
   </div>
</div>
      <%@ include file="../common/footer.jsp" %>
      
<Script>
	$(function(){
		
		$("#popOpen").click(function(event){
			console.log('작동');
			$("#popupDiv").css({
	                "top": (($(window).height()-$("#popupDiv").outerHeight())/1.5+$(window).scrollTop())+"px",
	                "left": (($(window).width()-$("#popupDiv").outerWidth())/2+$(window).scrollLeft())+"px"
			
			 });
			   $("#popup_mask").css("display","block"); 
	            
	            $("body").css("overflow","hidden");
	        });
	        
	        $("#popCloseBtn").click(function(event){
	          /*  $("#popup_mask").hide(); */
	            $("#popupDiv").hide(); 
	            $(".modal-backdrop").hide();
	            $("body").css("overflow","auto");
	        
	        });
			
	       
	        $("#popSendbtn").click(function(event){
	        	var rTitle =$("#reportTitle").val();
	        	var rContent = $("div textarea").val();
	        	/* alert(rTitle);
	        	alert(rContent); */
	        	var nuriNum = "N1";
	        	/* alert(nuriNum); */
	        	request.setAttribute('rTitle');
	        	request.setAttribute('rContent');
	        	location.href="<%=request.getContextPath()%>/reportSend.rs?nuriNum="+ nuriNum+"&rTitle="+rTitle+"&rContent="+rContent;
	        	alert("신고가 접수 되었습니다");
	        	
	        	
	        });
	});
</Script>  
<script>
function choice(){
	 if(<%=price%> != 0){
		 cash();
		 
	 }else{
		<%-- console.log(<%=loginUser.getUserEmail()%>); --%>
		var pId = "imp_"+new Date().getTime() ;
		alert(pId);
		location.href="<%=request.getContextPath()%>/payment.pms?imp="+pId+"&userNum=<%="201"%>&nuriNum=<%="N1"%>";
		 
	 }
}

 
 function cash(){
	alert('전송');
	
		var IMP = window.IMP; // 생략가능
		   IMP.init('imp43582013');  // 가맹점 식별 코드

		   IMP.request_pay({
		      pg : 'inicis', // 결제방식
		       pay_method : 'card',	// 결제 수단
		       merchant_uid : 'merchant_' + new Date().getTime(),
		      name : '주문명: 결제 테스트',	// order 테이블에 들어갈 주문명 혹은 주문 번호
		       amount : '<%=price%>',	// 결제 금액
		       buyer_email : 'user01@naver.com',	// 구매자 email
		      buyer_name :  '홍길동',	// 구매자 이름
		       buyer_tel :  '01066432470',	// 구매자 전화번호
		       buyer_addr :  '서울특별시 강남구 역삼동',	// 구매자 주소
		       buyer_postcode :  '123-456',	// 구매자 우편번호
		   }, function(rsp) {
			if ( rsp.success ) { // 성공시
				var msg = '결제가 완료되었습니다.';
				msg += '고유ID : ' + rsp.imp_uid;
				msg += '상점 거래ID : ' + rsp.merchant_uid;
				msg += '결제 금액 : ' + rsp.paid_amount;
				msg += '카드 승인번호 : ' + rsp.apply_num;
			    location.href="<%=request.getContextPath()%>/payment.pms?imp="+rsp.imp_uid+"&userNum=<%="201"%>&nuriNum=<%="N1"%>";
			
				/*m_redirect_url : // 결제 완료 후 보낼 컨트롤러의 메소드명 */
			} else { // 실패시
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
				
			}
		});
	}
</script>    
</body>
</html>