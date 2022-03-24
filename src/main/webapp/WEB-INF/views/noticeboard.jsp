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
        <div class="item">
            <img class="profile" id="profile1"
                src="https://i.pinimg.com/564x/a8/47/fd/a847fd5c3550086ed7d912aebe8126a8.jpg">
            <p class="id" id="id1">2yujin22</p>
            <img class="book" id="book1" src="https://i.pinimg.com/564x/30/2d/6d/302d6d42bf778f07d4f7e31f84bb538b.jpg"
                onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)" style="cursor: pointer;">
            <p class="text" id="text1"></p>
        </div>
        <div class="item">
            <img class="profile" id="profile2"
                src="https://i.pinimg.com/564x/f9/d7/20/f9d72002169d6630715a6051208ef467.jpg">
            <p class="id" id="id2">Umie.haus</p>
            <img class="book" id="book2" src="https://i.pinimg.com/736x/de/64/37/de64370f226e1980b6108556d58ec5c4.jpg">
            <p class="text" id="text2"></p>
        </div>
        <div class="item">
            <img class="profile" id="profile3"
                src="https://i.pinimg.com/564x/f9/d7/20/f9d72002169d6630715a6051208ef467.jpg">
            <p class="id" id="id3">sat.12am</p>
            <img class="book" id="book3" src="https://i.pinimg.com/564x/fa/0b/bf/fa0bbf521037b41955c31163b5102cf3.jpg">
            <p class="text" id="text3"></p>
        </div>
        <div class="item">
            <img class="profile" id="profile4"
                src="https://i.pinimg.com/564x/ab/8a/fe/ab8afefecab288d300fcb466da602137.jpg">
            <p class="id" id="id4">monda.ily</p>
            <img class="book" id="book4" src="https://i.pinimg.com/564x/1f/6e/a0/1f6ea01870204bedfe689783c4bca7fa.jpg">
            <p class="text" id="text4"></p>
        </div>
        <div class="item">
            <img class="profile" id="profile5"
                src="https://i.pinimg.com/736x/1d/c8/0c/1dc80c20df98ff2bf1267992624ad346.jpg">
            <p class="id" id="id5">affel</p>
            <img class="book" id="book5" src="https://i.pinimg.com/564x/91/3b/5b/913b5bac87225fe159e4b84ca6b42542.jpg">
            <p class="text" id="text5"></p>
        </div>
        <div class="item">
            <img class="profile" id="profile6"
                src="https://i.pinimg.com/564x/f9/d7/20/f9d72002169d6630715a6051208ef467.jpg">
            <p class="id" id="id6">sinhye_ori</p>
            <img class="book" id="book6" src="https://i.pinimg.com/564x/20/c3/ff/20c3ff84b3438b5d0cfb919d011a2c8b.jpg">
            <p class="text" id="text6"></p>
        </div>
        <div class="item">
            <img class="profile" id="profile7"
                src="https://i.pinimg.com/564x/f9/d7/20/f9d72002169d6630715a6051208ef467.jpg">
            <p class="id" id="id7">be_Bright_</p>
            <img class="book" id="book7" src="https://i.pinimg.com/564x/05/91/55/0591553335ef7ad08ce7a58616084071.jpg">
            <p class="text" id="text7"></p>
        </div>
        <div class="item">
            <img class="profile" id="profile8"
                src="https://i.pinimg.com/564x/f9/d7/20/f9d72002169d6630715a6051208ef467.jpg">
            <p class="id" id="id8">dgd46</p>
            <img class="book" id="book8" src="https://i.pinimg.com/564x/9b/9d/5e/9b9d5e8198d9ecee39614fd4d91dd982.jpg">
            <p class="text" id="text8"></p>
        </div>
        <div class="item">
            <img class="profile" id="profile9"
                src="https://i.pinimg.com/564x/f9/d7/20/f9d72002169d6630715a6051208ef467.jpg">
            <p class="id" id="id">sashgfn</p>
            <img class="book" id="book9" src="https://i.pinimg.com/564x/fa/0b/bf/fa0bbf521037b41955c31163b5102cf3.jpg">
            <p class="text" id="text9"></p>
        </div>

    </div>

</body>

</html>