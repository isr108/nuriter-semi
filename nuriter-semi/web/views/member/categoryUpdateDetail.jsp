<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.nuriter.nuriter.model.vo.*,com.kh.nuriter.payment.model.vo.*"%>
<% 
   Nuriter n = (Nuriter)request.getAttribute("n");
System.out.println("누리터 : " +  n);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset=UTF-8">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <link href="https://fonts.googleapis.com/css?family=Song+Myung" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<title>categoryDetail</title>
<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<!-- <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>  -->
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

<script type="text/javascript">
        /* summernote에서 이미지 업로드시 실행할 함수 */
	 	 function sendFile(file, editor) {
            // 파일 전송을 위한 폼생성
	 		data = new FormData();
	 	    data.append("uploadFile", file);
	 	    $.ajax({ // ajax를 통해 파일 업로드 처리
	 	        data : data,
	 	        type : "POST",
	 	        url : "./summernote_imageUpload.jsp",
	 	        cache : false,
	 	        contentType : false,
	 	        processData : false,
	 	        success : function(data) { // 처리가 성공할 경우
                    // 에디터에 이미지 출력
                    console.log("11");
	 	        	$(editor).summernote('editor.insertImage', data.url);
	 	        },
	 	        error:function(request,status,error){
	 	           alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	 	   		
	 	        
	 	        }

	 	    });	
	 	} 
	</script>
	
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
   margin-top: 200px;
   border:1px solid white;
   margin-left:auto;
   margin-right:auto;
   width: 1300px;
   min-height: 935px;
}
.images{
   /* border:2px solid #FFBF00; */
   border-radius: 6px;
   padding-top:50px;
   width:705px;
   height:auto;
   overflow:hidden;
}
button {
   margin-top:10px;
   width:200px;
   height:50px;
}
#textBox {
	text-align:center;
    margin-top: 30px;
}
#textArea{
	margin-left:auto;
	margin-right:auto;
	margin-top:5px;
}
#web-font-Nanum{
	font-family: 'Song Myung', serif;
}
.update {
	width: 705px;
}
.update button{
	margin-top:10px;
	width:120px;
	height:40px;
	background-color: #FFBF00; /* Green */
	font-family: 'Song Myung', serif;
    color: black;
    border-radius: 3px;
    font-size:20px;
    border: 2px solid rgb(241, 196, 15); /* Green */
}
.update button:hover{
	margin-top:10px;
	width:120px;
	height:40px;
	background-color: #FFBF00; /* Green */
	font-family: 'Song Myung', serif;
    color: black;
    border-radius: 3px;
    font-size:20px;
    border: 2px solid rgb(241, 196, 15); 
    opacity: 0.6;
}
#nuriterTitle{
   		width: 600px;
	    padding: 12px 20px;
	    margin: 4px 0;
	    box-sizing: border-box;
	    border-style: double;
	    border-color: rgb(241, 196, 15);
   	}
   	.web-font{
      	font-family: 'Jua', sans-serif;
   	}
   	.title{
   		margin-left: 300px;
   	}
   	.leftBox{
   		margin-left: 300px;
   	}

</style>
</head>
<body>
   <%@ include file="../common/logoAndLogbutton.jsp" %>
   <%@ include file="../common/categorybar.jsp" %>
    <form name="writeForm" action="./summernote_insert.jsp" method="post">
	<div class="content">
		<div class="title" align="left">
			<h3 id="web-font">누리터명</h3>
			<input type="text" id="nuriterTitle" class="web-font" name="title" value="<%= n.getNuriTitle() %>">
		</div>
		
		<div class="leftBox">
			<div class="images">
			<h3 id="web-font">내용</h3>
			
			<div align="center">
			<textarea id="summernote"><%= n.getContent() %></textarea>
	        <script>
	             $(document).ready(function() {
	                $('#summernote').summernote({ // summernote를 사용하기 위한 선언
	                    height: 400,
						 callbacks: { // 콜백을 사용
	                        // 이미지를 업로드할 경우 이벤트를 발생
						    onImageUpload: function(files, editor, welEditable) {
						    	  console.log(files);
					        	  console.log(editor);
					        	  console.log(welEditable);
					        	  
					        	 /*  var opt = {};
						          for (var i = files.length - 1; i >= 0; i--) {
						        	files[i]; //해당파일들을 ajax로 한번씩 FormData로담아서 보내거나 다양하게 처리하시믄됩니다.		        	
						          } */
							     sendFile(files[0], this); 
							}
						} 
					});
				}); 
	
	
			</script>
			</div>
		   	</div>
			<div class="update" align="center">
			    <button class="updateBtn">누리터 수정</button>
			</div>
		</div>
</div>
<br><br><br><br><br>
<%@ include file="../common/footer.jsp" %>
</form>
<script>
	$(".updateBtn").click(function(){
		alert("수정 버튼 클릭");
	});
</script>
    
</body>
</html>