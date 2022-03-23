<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내일의책</title>
<script src="/resources/js/jquery-3.6.0.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/css/reviewphoto.css"/>

</head>
<body>
<header>
        <section class="header_section">
            <nav class="header_left">
                <h1>
                    <a href="/">내일의책</a>
                </h1>
            </nav>
            <nav class="header_right">
                
                <button id="writing_btn">올리기&nbsp;&nbsp;<i class="fa-solid fa-angle-down"></i></button>
            </nav>
        </section>
   	</header>
    <ul class="edit_toggle">
        <li>
            <a href="/reviewphoto"><i class="fa-solid fa-camera"></i>&nbsp;&nbsp;사진 올리기</a>
        </li>
        <li>
            <a href="/reviewwrite"><i class="fa-solid fa-thumbs-up"></i>&nbsp;&nbsp;리뷰 글쓰기</a>
        </li>
    </ul>
<main>
<form action="">
  <div class="main-container">
    	<div class="temp-box" id="box1">
    		사진올리기
    	</div>
    	
    	<!-- 파일 올리기 -->
    	<div class="temp-box" id="box2">
    		<div class="imgBox">
				<div id="imgTag1"></div>
				<label for="inputImg1">업로드</label>
				<input type="file" id="inputImg1" name="outo" accept=".jpg,.png" style="position: absolute; bottom:0px; left: 63px; font-size: x-large;" onchange="loadFile(this)">
			</div>
    	</div>
    	
    	<!-- 제목, 설명, 추가하기 버튼 -->
    	<div align="left" class="temp-box" id="box3">
    	    <select id="select1">
    			<option>소설</option>
    			<option>사전</option>
    			<option>동화</option>
    			<option>만화</option>
    			<option>그림책</option>
    		</select>
    		<input type="text" id="text1" placeholder="제목" style="width:80%; font-size:20px; "/><br>
    		<textarea id="textarea1" cols="50" rows="10" placeholder="설명"></textarea><br>
    		<input type="button" id="add1" value="추가하기">
    	</div>
  </div>
</form>
</main>
    <footer>
        <section class="footer_section">
            <section class="footer_top">
                <span class="footer_title">내일의책</span>
                <ul class="shortcut_nav">
                    <li><a href="http://www.instagram.com" target="_blank" title="인스타그램 새창 열기"><i class="fa-brands fa-instagram"></i></a></li>
                    <li><a href="http://www.facebook.com" target="_blank" title="페이스북 새창 열기"><i class="fa-brands fa-facebook"></i></a></li>
                    <li><a href="http://www.github.com" target="_blank" title="깃허브 새창 열기"><i class="fa-brands fa-github"></i></a></li>
                </ul>
            </section>
            <section class="meta_info">
                <p>Copyrights 2022, TomorrowWillBeBetter. All Rights Reserved. </p>
                <p>Version 1.0</p>
            </section>
        </section>
    </footer>
<script>
var i = 1;
var gridnum = 4;
function loadFile(input) {
	  var file = input.files[0];
	  var lastChar  = input.id.charAt(8);
	  $('#imgTag'+lastChar).html(" <img src='"+URL.createObjectURL(file)+"' style='max-height:300px; max-width:300px; padding:50px;'/> ");
}
function add(){
	if(i<5){
		$("#add"+i).hide();
		i++;
		console.log(i);
		var createDiv1 = document.createElement("div");
		createDiv1.setAttribute("class", "temp-box");
		createDiv1.setAttribute("id", "box"+gridnum);
		
		var createDiv2 = document.createElement("div");
		createDiv2.setAttribute("class", "imgBox");
		
		var createDiv3 = document.createElement("div");
		createDiv3.setAttribute("id", "imgTag"+i);
		createDiv2.appendChild(createDiv3);
		
		var createDiv6 = document.createElement("label");
		createDiv6.setAttribute("for", "inputImg"+i);
		var upload = document.createTextNode('업로드');
		
		createDiv6.appendChild(upload);
		createDiv2.appendChild(createDiv6);
		
		/*<label for="inputImg1">업로드</label>*/
		var createDiv4 = document.createElement("input");
		createDiv4.setAttribute("type", "file");
		createDiv4.setAttribute("id", "inputImg"+i);
		createDiv4.setAttribute("name", "outo");
		createDiv4.setAttribute("accept", ".jpg,.png");
		createDiv4.setAttribute("style", "position: absolute; bottom:0px; left: 63px; font-size: x-large;");
		createDiv4.setAttribute("onchange", "loadFile(this)");

		createDiv2.appendChild(createDiv4);
		createDiv1.appendChild(createDiv2);
		
		// 여기까지 box4 
		
		$(".main-container").append(createDiv1);
		
		
		gridnum++;
		

		var createDiv5 = "<div align='left' class='temp-box' id='box" + gridnum + "'>";
		createDiv5 += "<select id='select" + i + "'><option>소설</option><option>사전</option><option>동화</option><option>만화</option><option>그림책</option></select>"
		createDiv5 += "<input type='text' id='text" + i + "' placeholder='제목' style='width:80%; font-size:20px;'/><br>"
		createDiv5 += "<textarea id='textarea" + i + "' cols='50' row='10' placeholder='설명'></textarea><br>";
		createDiv5 += "<input type='button' id='add" + i + "' value= '추가하기' onclick='add()'>";
		createDiv5 += "</div>";
		
		$(".main-container").append(createDiv5);
		// 여기까지 box5
	}
	
}
$(document).ready(function(){
/* 	
    작동안됨
    $('.imgBox').on('mouseover', function() {
		$('[id*="inputImg"]').show();
	});
	$('.imgBox').on('mouseout', function() {
		$('[id*="inputImg"]').hide();
	}); */
	$("#add1").on('click', function(){
		add();
	});

});


</script>
</body>
</html>