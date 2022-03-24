<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/resources/css/mypage.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/6f8304097c.js" crossorigin="anonymous" defer></script>
    <script src="/resources/js/main.js" defer></script>
    <title>엄지혜님의 마이홈에 놀러오세요</title>
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

    
    
    <div class="box-container">
        <div class="box3">
            <img src="/resources/images/book8.jpg" alt="profile photo" class="profile-img">
            <div class="name">
                <h2>${sessionScope.loginMemberInfo.name}</h2>
                <h4>${sessionScope.loginMemberInfo.email}</h4>
            </div>
            <button class="heart-button">
                <svg width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="2"
                    viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" class="css-pctok2 ek5sxnq1">
                    <path
                        d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z">
                    </path>
            </button>
            <a href="/scrapbook">
            <button class="heart-button" id="scrap_links">
                <svg width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5"
                    viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" class="css-pctok2 ek5sxnq2">
                    <path
                        d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z">
                    </path>
                </button>
            </a>
        </div>
        <div class="box12">
            사진 0 <div class="box1"> <button class="picture">+ 첫 번째 사진을 올려보세요</button> </div>
            리뷰 0 <div class="box2"> <button class="review">+ 첫 번째 리뷰를 올려보세요</button> </div>
        </div>
    </div>
    <footer>
        <section class="footer_section">
            <section class="footer_top">
                <span class="footer_title">내일의책</span>
                <ul class="shortcut_nav">
                    <li><a href="http://www.instagram.com" target="_blank" title="인스타그램 새창 열기"><i
                                class="fa-brands fa-instagram"></i></a></li>
                    <li><a href="http://www.facebook.com" target="_blank" title="페이스북 새창 열기"><i
                                class="fa-brands fa-facebook"></i></a></li>
                    <li><a href="http://www.github.com" target="_blank" title="깃허브 새창 열기"><i
                                class="fa-brands fa-github"></i></a></li>
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