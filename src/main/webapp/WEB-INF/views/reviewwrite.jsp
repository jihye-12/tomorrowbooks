<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>내일의책</title>
<link rel="stylesheet" href="/resources/css/reviewwrite.css">
<script src="/resources/js/reviewwrite.js" defer></script>
<script src="/resources/js/jquery-3.6.0.min.js"></script>
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
                
                <button id="writing_btn" type="submit" form="test" >올리기&nbsp;&nbsp;<i class="fa-solid fa-angle-down"></i></button>
        
            </nav>
        </section>
   	</header>
   	<main>
   		<form action="membermybatisinsert" id="test"  method="post" >
  			<div class="main-container">
    			<div class="temp-box" id="box1">
					리뷰글쓰기
    			</div>
    			<div class="temp-box" id="box2">
    				<input type="text" id="register1" name=name   value="${sessionScope.loginMemberInfo.name}" readonly/>
    				<span class="star1">
  						★★★★★
  						<span>★★★★★</span>
  						<input type="range" name="range" id="range1" oninput="drawStar(this)" step="1" min="0" max="10">
					</span>
					<input type="text" id="title1" name=title placeholder="제목"/>
					<textarea name="text" id="conetent1" cols="50" rows="10" placeholder="설명"></textarea>
					<input type="button" id="add1" value="책 추가하기"/>
					
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

</body>
</html>