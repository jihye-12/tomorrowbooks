<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>내일의책</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="/resources/css/noticeboard.css" />
<script src="https://kit.fontawesome.com/6f8304097c.js"
	crossorigin="anonymous" defer></script>
<script src="/resources/js/main.js" defer></script>
<script src="/resources/js/jquery-3.6.0.min.js"></script>
</head>

<body id="postlistbody">
	<header class="header">
		<section class="header_section">
			<nav class="header_left">
				<h1>
					<a href="/">내일의책</a>
				</h1>
				<ul class="contents_nav">
					<li><a href="/noticeboard">사진</a></li>
					<li><a href="/postlist">리뷰</a></li>
				</ul>
			</nav>
			<nav class="header_right">
				<div class="header_search">
					<i class="fa-solid fa-magnifying-glass"></i> <input
						id="header_search_input" placeholder="내일의책 통합검색">

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
				<button id="writing_btn">
					글쓰기&nbsp;&nbsp;<i class="fa-solid fa-angle-down"></i>
				</button>
			</nav>
		</section>



		<!-- 글쓰기 버튼 클릭시 생성 -->
		<ul class="edit_toggle">
			<li><a href="/reviewphoto"><i class="fa-solid fa-camera"></i>&nbsp;&nbsp;사진
					올리기</a></li>
			<li><a href="/reviewwrite"><i class="fa-solid fa-thumbs-up"></i>&nbsp;&nbsp;리뷰
					글쓰기</a></li>
		</ul>
	</header>

	<div id="post">
		<img id="postimg"
			src="https://cdn-icons-png.flaticon.com/128/6212/6212423.png">
		<h>작성글</h>
	</div>

	<div id="title">
		<ul id="title1">번호
		</ul>
		<ul id="title2">제목
		</ul>
		<ul id="title3">글쓴이
		</ul>
		<ul id="title4">작성일시
		</ul>
		<ul id="title4">평점
		</ul>

		</ul>
	</div>
	
	<c:forEach items="${reviewlist}" var="dto" varStatus="status">
		<div class="list">

			<span class="list1">${fn:length(reviewlist) - status.index}</span> <span class="list2">${dto.title}</span>
			<span class="list3">${dto.name}</span> <span class="list4">${dto.date}</span>
			<span class="list5">${dto.range}점</span>
		</div>
	</c:forEach>



	<nav id="listnav" aria-label="...">
		<ul class="pagination">
			<li class="page-item disabled"><a class="page-link">이전</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">다음</a></li>
		</ul>
	</nav>



</body>

</html>