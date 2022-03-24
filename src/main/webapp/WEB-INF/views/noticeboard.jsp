<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내일의책</title>
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/noticeboard.css">
    <script src="https://kit.fontawesome.com/6f8304097c.js" crossorigin="anonymous" defer></script>
    <script src="/resources/js/main.js" defer></script>
    <script src="/resources/js/noticeboard.js" defer></script>
    <script src="/resources/js/jquery-3.6.0.min.js"></script>

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

    <!-- dropbox -->
    <div class="drop">
        <div class="dropdown1">
            <div class="dropdown-select">
                <span class="select">정렬</span>
                <i class="fa fa-caret-down icon"></i>
            </div>
            <div class="dropdown-list">
                <div class="dropdown-list_item">최근 인기순</div>
                <div class="dropdown-list_item">역대 인기순</div>
                <div class="dropdown-list_item">최신순</div>
                <div class="dropdown-list_item">팔로우</div>
            </div>
        </div>
        <div class="dropdown2">
            <div class="dropdown-select">
                <span class="select">장르</span>
                <i class="fa fa-caret-down icon"></i>
            </div>
            <div class="dropdown-list">
                <div class="dropdown-list_item">소설</div>
                <div class="dropdown-list_item">수필</div>
                <div class="dropdown-list_item">잡지</div>
                <div class="dropdown-list_item">만화책</div>
                <div class="dropdown-list_item">시</div>
            </div>
        </div>

        <div class="dropdown3">
            <div class="dropdown-select">
                <span class="select">베스트셀러</span>
                <i class="fa fa-caret-down icon"></i>
            </div>
            <div class="dropdown-list">
                <div class="dropdown-list_item">주간</div>
                <div class="dropdown-list_item">월간</div>
                <div class="dropdown-list_item">연간</div>
            </div>
        </div>
    </div>


    <!-- 이미지 정렬 -->
    <div class="container">
        <c:forEach var="result" items="${image}" varStatus="status">
        	<div class="item">
        		<p class="author" id="author${status.count}">글쓴이 : ${name[status.index]}</p>
        		<p class="id" id="id${status.count}">제목 : ${title[status.index]}</p>
        		<img class="book" id='book${status.count}' src="data:image/png;base64,${result}"
                onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)" style="cursor: pointer;">
                <p class="text" id="text${status.count}">설명 : ${description[status.index]}</p>
        	</div>

		</c:forEach>

    </div>

</body>

</html>