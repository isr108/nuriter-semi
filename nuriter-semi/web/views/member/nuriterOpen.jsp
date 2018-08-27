<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.kh.nuriter.nuriter.model.vo.*"%>
<% 
   ArrayList<Nuriter> list = (ArrayList<Nuriter>)request.getAttribute("list");
    PageInfo pi = (PageInfo)request.getAttribute("pi");
    int listCount = pi.getListCount();
    int currentPage = pi.getCurrentPage();
    int maxPage = pi.getMaxPage();
    int startPage = pi.getStartPage();
    int endPage = pi.getEndPage();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
   .outer{
      width:850px;
      height:auto;
      background:white;
      color:lightblack;
      margin-top:1%;
      margin-left:auto;
      margin-right:auto;
      /* margin-top:280px; */
   }
   h2{
   font-family: 'Jua', sans-serif;
   }
   table {
      border:1px solid gray;
      text-align:center;
      font-family: 'Jua', sans-serif;
      width:auto;
      height:auto;
   }
   .tableArea {
      width:650px;
      height:auto;
      margin-left:5%;
      margin-right:auto;
   }
   .searchArea {
      width:650px;
      margin-left:auto;
      margin-right:auto;
   }
   table tr th{
   text-align:center;
   /* width:auto;
   height:auto; */
   }
   
   table td td{
   width:auto;
   }
   
   .content{
   padding-left:15px;
   padding-right:15px;
   white-space:nowrap;
   } 

   #listArea{
   align:center;
   }
   
   .pageArea{
   padding-left:20%;
   }
   
   tbody{
      width:auto;
      height:auto;
   }
   
   

</style>
</head>
<body>

	<div>
		<%@ include file="../common/logoAndLogbutton.jsp" %>
	    <%@ include file="../common/categorybar.jsp" %>
	   <%--  <%@ include file="../common/myPage_left.jsp" %> --%>

	</div>
	<div id="main">
	<% if(loginUser != null){ %>
	    	<div id="twoRight" align="center">
	    		<div id="twoRight-child">
		    		<div id="twoRight-child2" align="left">
		    		<form action="<%=request.getContextPath() %>/insert.nu" method="post" id="insertForm" encType="multipart/form-data">
			    		<h3 id="web-font">카테고리</h3><br>
						  <select id="web-font" class="selectBox">
						  		<option id="web-font">---</option>
						        <option id="web-font" class="selectLanguage" value="언어">언어</option>
						        <option id="web-font" class="selectWork" value="공방">공방</option>
						        <option id="web-font" class="selectCook">요리</option>
						        <option id="web-font" class="selectSport">운동</option>
						        <option id="web-font" class="selectMusic">음악</option>
						        <option id="web-font" class="selectComputer">컴퓨터</option>
						        <option id="web-font" class="selectCulture">문화</option>
						        <option id="web-font" class="selectEtc">기타</option>
						  </select>
						  
						  <select name="category" id="gsonListSelect" class="web-font" style="display:none; font-size:14px;"></select>
						  
						  
						  
						  
					  <br><br>
					  
					  <h3 id="web-font">누리터명</h3>
					  <input type="text" id="nuriterTitle" class="web-font" name="title">
					  
					  <br><br>
					  
					  <h3 id="web-font">기간</h3>
					  <div class="startDate">
					  	 <%@ include file="../common/datePicker.jsp" %>
					  </div>
					  
					  <br><br>
					        
					  <h3 id="web-font">시간</h3>
					  <div class="time">
					  	 <%@ include file="../common/timePicker.jsp" %>
					  </div>
					  
					  <br><br>
					  
					  <h3 id="web-font">장소</h3>
					  <div id="placeDiv">
						  <input type="text" id="sample6_postcode" placeholder="우편번호" name="placeOne">
						  <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						  <input type="text" id="sample6_address" placeholder="주소" name="placeTwo">
						  <input type="text" id="sample6_address2" placeholder="상세주소" name="placeTree">
					  </div>
					  
					  <br>
					  
					  <h3 id="web-font">대표 이미지</h3>
					  <div id="titleImgArea">
						 <img id="titleImg" width="495px" height="195px">
					  </div>
							
					  <!-- <div id="summerText">
					  	<button type="button" id="titleImgArea"><font id="web-font">사진등록</font></button>
					  </div> -->
					  
					  <br>
					  
					  <div id="fileArea">
					  	<input type="file" id="thumbnailImg1" name="thumbnailImg1" multiple onchange="loadImg(this, 1)">
					  </div>
					  
					  <h3 id="web-font">누리터 내용</h3>
					  <div id="summerText">
						  <div id="summertextChild">
						  	<%@ include file="../common/summernote_write.jsp" %>
						  </div>
					  </div>
					  
					  <br>
					  
					  <input type="hidden" id="web-font" class="summerText" name="summerText">
					  
					  <h3 id="web-font">활동비</h3>
					  <div id="summerText">
						  <input type="text" id="web-font" name="price">
					  </div>
					  
					  <br>
					  
					  <h3 id="web-font">정원</h3>
					  <div id="summerText">
						  <input type="text" id="web-font" name="personnel">
					  </div>
					  
					  <br><br><br><br>
					  
					  <div id="submitDiv" align="center">
		           		  <button type="submit" onclick="insert();"><font id="web-font" size=3px>개설하기</font></button>&nbsp;&nbsp;&nbsp;
		           		  <button type="reset"><font id="web-font" size=3px>취소하기</font></button>
	           		  </div>
	           		  </form>
	        	</div>
        	</div>
	    </div>
    </div>
    
    <% }else{
		request.setAttribute("msg", "잘못된 경로로 접근하셨습니다.");
		request.getRequestDispatcher("../common/errorPage.jsp").forward(request, response);
		
	} %>
	
    <script>

    //사진 업로드
    $(function(){
		$("#fileArea").hide();
		
		$("#titleImgArea").click(function(){
			$("#thumbnailImg1").click();
		});
	});
    
    //사진 출력
    function loadImg(value, num){
		console.log("test");
		if(value.files && value.files[0]){
			var reader = new FileReader();
			reader.onload = function(e){
				switch(num){
					case 1 : 
						$("#titleImg").attr("src", e.target.result);
						break;
				}
			}
			reader.readAsDataURL(value.files[0]);
		}
	}
    
    //데이터피커
    $(function(){
        $( "#datepicker" ).datepicker();
     });
    
    //개설하기 버튼
    function insert(){
    	var markupStr = $('#summernote').summernote('code');
    	console.log(markupStr);
    	
    	$(".summerText").val(markupStr);
    	
		$("#insertForm").submit();
	}
    
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

</body>
</html>