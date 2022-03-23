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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/noticeboard.css" />
    <script src="https://kit.fontawesome.com/6f8304097c.js" crossorigin="anonymous" defer></script>
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
                    <li>
                        <a href="/loginform">로그인</a>
                    </li>
                    <li>
                        <a href="/memberform">회원가입</a>
                    </li>
                    <li>
                        <a href="/mypage">마이페이지</a>
                    </li>
                </ul>
                <button id="writing_btn">글쓰기&nbsp;&nbsp;<i class="fa-solid fa-angle-down"></i></button>
            </nav>
        </section>



        <!-- 글쓰기 버튼 클릭시 생성 -->
	   <ul class="edit_toggle">
	        <li>
	            <a href="/reviewphoto"><i class="fa-solid fa-camera"></i>&nbsp;&nbsp;사진 올리기</a>
	        </li>
	        <li>
	            <a href="/reviewwrite"><i class="fa-solid fa-thumbs-up"></i>&nbsp;&nbsp;리뷰 글쓰기</a>
	        </li>
	    </ul>
    </header>

    <div id="post">
        <img id="postimg" src="https://cdn-icons-png.flaticon.com/128/6212/6212423.png">
        <h>작성글</h>
    </div>

    <div id="title">
        <ul id="title1">번호</ul>
        <ul id="title2">제목</ul>
        <ul id="title3">글쓴이</ul>
        <ul id="title4">작성일시</ul>
    </div>
    <div class="list">
        <span class="list1">1</span>
        <span class="list2">하루의 소중함을 일깨워주는 책 - 오늘은 당신의 남은 인생의 첫날이다</span>
        <span class="list3">2yujin22</span>
        <span class="list4">2022년 2월 23일</span>
    </div>
    <div class="list">
        <span class="list1">2</span>
        <span class="list2">인생은 선택의 연속 - 직관의 힘</span>
        <span class="list3">2yujin22</span>
        <span class="list4">2022년 1월 4일</span>
    </div>
    <div class="list">
        <span class="list1">3</span>
        <span class="list2">행복해지고 싶지만 길을 몰라 헤매는 당신에게</span>
        <span class="list3">2yujin22</span>
        <span class="list4">2022년 1월 1일</span>
    </div>
    <div class="list">
        <span class="list1">4</span>
        <span class="list2">아침형 인간을 위한 이들에게 - 미라클 모닝</span>
        <span class="list3">2yujin22</span>
        <span class="list4">2021년 12월 5일</span>
    </div>
    <div class="list">
        <span class="list1">5</span>
        <span class="list2">공대생을 울린 시 강의 - 시를 잊은 그대에게</span>
        <span class="list3">2yujin22</span>
        <span class="list4">2021년 8월 27일</span>
    </div>
    <div class="list">
        <span class="list1">6</span>
        <span class="list2">무라카미 하루키 단편 소설 - 여자없는 남자들</span>
        <span class="list3">2yujin22</span>
        <span class="list4">2019년 7월 8일</span>
    </div>
    <div class="list">
        <span class="list1">7</span>
        <span class="list2">작은 변화가 큰 변화를 만든다 - 아주 작은 반복의 힘</span>
        <span class="list3">2yujin22</span>
        <span class="list4">2019년 7월 8일</span>
    </div>
    <div class="list">
        <span class="list1">8</span>
        <span class="list2">여러분의 결혼생활은 행복하신가요? - 결혼 후 10년</span>
        <span class="list3">2yujin22</span>
        <span class="list4">2019년 7월 8일</span>
    </div>
    <div class="list">
        <span class="list1">9</span>
        <span class="list2">작은 변화가 큰 변화를 만든다 - 아주 작은 반복의 힘</span>
        <span class="list3">2yujin22</span>
        <span class="list4">2019년 7월 8일</span>
    </div>
    <div class="list">
        <span class="list1">10</span>
        <span class="list2">하버드대학교의 고정관념을 깨버린 '하버드 불량일기'</span>
        <span class="list3">2yujin22</span>
        <span class="list4">2019년 7월 8일</span>
    </div>
    <div class="list">
        <span class="list1">11</span>
        <span class="list2">지리산, 가장 아플 때 와라 - 지리산 둘레길 로드에세이</span>
        <span class="list3">2yujin22</span>
        <span class="list4">2019년 7월 8일</span>
    </div>
    <div class="list">
        <span class="list1">12</span>
        <span class="list2">이석원 이야기 산문집 - 언제 들어도 좋은 말</span>
        <span class="list3">2yujin22</span>
        <span class="list4">2019년 7월 8일</span>
    </div>



    <nav id="listnav" aria-label="...">
        <ul class="pagination">
            <li class="page-item disabled">
                <a class="page-link">이전</a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">4</a></li>
            <li class="page-item">
                <a class="page-link" href="#">다음</a>
            </li>
        </ul>
    </nav>



</body>

</html>