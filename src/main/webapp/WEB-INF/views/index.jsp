<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내일의책</title>
    <link rel="stylesheet" href="/resources/css/style.css">
    <script src="https://kit.fontawesome.com/6f8304097c.js" crossorigin="anonymous" defer></script>
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
                        <a href="/ihou">사진</a>
                    </li>
                    <li>
                        <a href="/noticeboard">리뷰</a>
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
        <section class="main_section">
            <a id="imglink" class="img_container">
                <figure class="main_img">
                    <figcaption class="img_caption">
                        <h3 id="mainimg_caption"><!--이미지에 따른 문장 변화--></h3>
                        <button>보러가기</button>
                    </figcaption>
                </figure>
            </a>
            <div class="best_board">
                <h2>&nbsp;이번주 베스트리뷰&nbsp;<i class="fa-solid fa-star"></i></h2>
                <div class="ranking_container">
                    <ul class="ranking">
                        <!-- 나중에 백엔드에서 자바스크립트로 textContent로 접근 -->
                        <li class="ranking_list"><a href="/ihou_copy_3">1. 불편한 편의점</a></li>
                        <li class="ranking_list"><a href="/ihou_copy">2. 당신은 아무 잘못이 없다</a></li>
                        <li class="ranking_list"><a href="/ihou_copy_2">3. 물고기는 존재하지 않는다</a></li>
                        <li class="ranking_list">4. 달러구트 꿈 백화점</li>
                        <li class="ranking_list">5. 센 강의 이름 모를 여인</li>
                        <li class="ranking_list">6. 미드나잇 라이브러리</li>
                        <li class="ranking_list">7. 오늘 밤, 세계에서 이 사랑이 사라진다 해도</li>
                        <li class="ranking_list">8. 달러구트 꿈 백화점2</li>
                        <li class="ranking_list">9. 밝은 밤</li>
                        <li class="ranking_list">10. 인간 실격</li>
                    </ul>
                    <p><span id="now"><!--현재시간--></span> 기준</p>
                </div>
            </div>
        </section>

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