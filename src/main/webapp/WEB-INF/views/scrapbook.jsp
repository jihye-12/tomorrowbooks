<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내일의책</title>
<link rel="stylesheet" href="/resources/css/scrapbook.css" />
<script src="https://kit.fontawesome.com/6f8304097c.js" crossorigin="anonymous" defer></script>
<script src="/resources/js/jquery-3.6.0.min.js"></script>
<script src="/resources/js/main.js" defer></script>

</head>
<body>
	<header>
        <section class="header_section">
            <nav class="header_left">
                <h1>
                    <a href="/">내일의책</a>
                </h1>
                <ul class="contents_nav">
                    <li>
                        <a href="/noticeboard">사진</a>
                    </li>
                    <li>
                        <a href="/postlist">리뷰</a>
                    </li>        
                </ul>
            </nav>
            <nav class="header_right">
                <div class="header_search">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <input id="header_search_input" placeholder="내일의책 통합검색">

                </div>
                
                <ul class="signup_nav">
                    	<!-- 컨트롤러에서 로그인시 생성한 세션을 체크한다.  -->
						<c:choose>
						    <c:when test="${sessionScope.loginMemberInfo eq null}">
		                    <li>
                        		<a href="/loginform">로그인</a>
		                    </li>
		                    <li>
		                        <a href="/memberform">회원가입</a>
		                    </li>
						    </c:when>
						    <c:otherwise>
						    <li>
                        		<a href="/logout">로그아웃</a>
                        	</li>
		                    <li>
		                        <a href="/mypage">마이페이지</a>
		                    </li>
						    </c:otherwise>
						</c:choose>
                </ul>
                <button id="writing_btn">글쓰기&nbsp;&nbsp;<i class="fa-solid fa-angle-down"></i></button>
            </nav>
        </section>
    </header>

    <!-- 글쓰기 버튼 클릭시 생성 -->
    <ul class="edit_toggle">
        <li>
            <a href="/reviewphoto"><i class="fa-solid fa-camera"></i>&nbsp;&nbsp;사진 올리기</a>
        </li>
        <li>
            <a href="/reviewwrite"><i class="fa-solid fa-thumbs-up"></i>&nbsp;&nbsp;리뷰 글쓰기</a>
        </li>
    </ul>

	<main>
		<div id="container">
			<div id="container-header">
				<div id="container-content">
					<h1 id="title">스크랩북</h1>
					<p> 게껍질 </p>
				</div>
			</div>
			<div id="select">
				<div class="menu clicked_menu">모두</div>
				<div class="menu">사진</div>			
			</div>
			<div id="photo">
			<article><img class="imageEx" src="/resources/images/bg00.png"></article>
			<article><img class="imageEx" src="/resources/images/bg00.png"></article>
			<article><img class="imageEx" src="/resources/images/bg00.png"></article>
			<article><img class="imageEx" src="/resources/images/bg00.png"></article>
			<article><img class="imageEx" src="/resources/images/bg00.png"></article>
			<article><img class="imageEx" src="/resources/images/bg00.png"></article>
			<article><img class="imageEx" src="/resources/images/bg00.png"></article>
			<article><img class="imageEx" src="/resources/images/bg00.png"></article>
			<article><img class="imageEx" src="/resources/images/bg00.png"></article>
			<article><img class="imageEx" src="/resources/images/bg00.png"></article>
			<article><img class="imageEx" src="/resources/images/bg00.png"></article>
		</div>
		</div>
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
	$(document).ready(function(){
		$('.menu').each(function(index){ 
			$(this).attr('id', "select"+index);
		}).click(function(){
			var id = $(this).attr('id');
		    /*클릭한 <div>에  clicked_menu 클래스 추가*/
			$('.menu[id=' + id + ']').addClass('clicked_menu'); 
		    /*그 외 <div>는  clicked_menu 클래스 삭제*/
			$('.menu[id!=' + id + ']').removeClass('clicked_menu'); 
		    
		    console.log("1 "+id);
		    if(id == "select0"){
		    	console.log("2 "+id);
		    	$('.imageEx').attr('src', "/resources/images/bg00.png");
		    }
		    else{
		    	console.log("3 "+id);
		    	$('.imageEx').attr('src', "/resources/images/bg01.png");
		    }
		});
	});
	</script>
</body>
</html>