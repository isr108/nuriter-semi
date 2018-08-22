<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.kh.nuriter.nuriter.model.vo.*"%>
<%-- <%
	ArrayList<Category> list = (ArrayList<Category>) request.getAttribute("list");
%> --%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.3.3/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.3.3/dist/semantic.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- 다음 우편번호 찾기 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
	#main {
		margin-top:190px;
		margin-left:220px;
		margin-right:auto;
    	overflow:hidden;
	}
	#twoRight {
		background:red;
		display:inline;
		overflow:hidden;
	}
	#twoRight-child {
		margin-top:30px;
		margin-left:70px;
    	overflow:hidden;
	}
	#twoRight-child2 {
		width:900px;
    	overflow:hidden;
	}
	#category {
		display:inline;
	}
	#category > h3{
		display:inline;
	}
	#web-font{
      	font-family: 'Jua', sans-serif;
   	}
   	#submitDiv > button {
   		width:150px;
   	}
   	#placeDiv{
   		font-family: 'Jua', sans-serif;
   	}
   	#placeDiv input[type=text]{
	    margin-bottom:10px;
   	}
   	#placeDiv input[type=button]{
   		background: rgb(241, 196, 15);
   		font-size:15px;
   		color:white;
   		border-radius: 4px;
	    background-color: rgb(241, 196, 15);
   	}
   	#placeDiv input[type=button]:hover{
   		background: white;
   		font-size: 15px;
   		color: rgb(241, 196, 15);
   	}
   	.web-font{
      	font-family: 'Jua', sans-serif;
   	}
   	#nuriterTitle{
   		width: 600px;
	    padding: 12px 20px;
	    margin: 4px 0;
	    box-sizing: border-box;
	    border-style: double;
	    border-color: rgb(241, 196, 15);
   	}
	button{
	     width: 90px;
	     height: 40px;
	     font-weight: 600;
	     border-radius: 4px;
	     background: rgb(241, 196, 15); 
	     color: white;
   	}
    button:hover {
	     background-color: white; /* Green */
	     color: rgb(241, 196, 15);
	     border: 2px solid rgb(241, 196, 15); /* Green */
	     color: rgb(241, 196, 15);
   	}
	select {
		display:inline;
		width:100px;
		height:30px;
		border-radius: 5px; /* iOS 둥근모서리 제거 */
		/* background: rgb(241, 196, 15); */
	}
	input[type=file] {
		font-family: 'Jua', sans-serif;
	}
	.date {
		width:600px;
		box-sizing: border-box;
	    border-style: solid;
	    border-color: rgb(241, 196, 15);
	}
	button font{
		color:white;
	}
	button:hover font{
		color: rgb(241, 196, 15);
	}
	.layer { display: none; }
</style>
</head>
<body>
	<div>
		<%@ include file="../common/logoAndLogbutton.jsp" %>
	    <%@ include file="../common/categorybar.jsp" %>
	    <%@ include file="../common/myPage_left.jsp" %>
	</div>
	<div id="main">
	<% if(loginUser != null){ %>
	    	<div id="twoRight" align="center">
	    		<div id="twoRight-child">
		    		<div id="twoRight-child2" align="left">
		    		<form action="<%=request.getContextPath() %>/insert.nu" method="post" id="insertForm">
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
					  
					  <br><br>
					  
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

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
    
    //셀렉트 박스
    $(function(){
	    $(".selectBox").change(function(){
	    	var name = $(".selectBox option:selected").text();
	    	
	    	$.ajax({
				url:"/ns/category.nu",
				data:{name:name},
				type:"get",
				success:function(data){
					console.log(data);
					
					$select = $("#gsonListSelect");
					$select.find("option").remove();
					
					for(var key in data){
						var $option = $("<option  name='category'>");
						$option.val(data[key].cno);
						$option.text(data[key].cname);
						$select.append($option);
					}
					
					$("#gsonListSelect").show();
				},
				error:function(data){
					console.log(data)
				}
			});
		});
    });
    
    </script>
    <br><br><br><br><br>
    <br><br><br>
</body>
</html>