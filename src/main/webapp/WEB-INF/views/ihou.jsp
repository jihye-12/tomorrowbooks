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
  <link rel="stylesheet" href="/resources/css/ihou.css">
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
        <a href="/reviewphoto.jsp"><i class="fa-solid fa-camera"></i>&nbsp;&nbsp;사진 올리기</a>
    </li>
    <li>
        <a href="/reviewwrite.jsp"><i class="fa-solid fa-thumbs-up"></i>&nbsp;&nbsp;리뷰 글쓰기</a>
    </li>
</ul>

  <div class="flex-div">
    <div class="img-explain">
      <div>
        <span> 오늘, 기억해 | 시 </span>
        <time>21시간 전</time>
      </div>
      <img src="/resources/images/book6.jpg" />
      <div>
        <img class="production-tag-scroller__item__image" src="/resources/images/book1.png" />
        <img class="production-tag-scroller__item__image" src="/resources/images/book2.jpg" />
        <img class="production-tag-scroller__item__image" src="/resources/images/book3.jpg" />
      </div>
      <p>너무 좋은 책! 요즘 고민이 많은 사람들에게 추천하고 싶다</p>
      <p>&nbsp</p>
      <p class="tag">
        #시집 &nbsp #고민 &nbsp #오늘 &nbsp #기억해 &nbsp #추천 &nbsp #감성
        &nbsp #인공위성 &nbsp #맥주
      </p>
      <p class="tag">#그린인테리어 &nbsp #플랜테리어 &nbsp #거실</p>
      <img class="css-1cqverl e11tzz432" src="/resources/images/book7.jpg" />
      <img class="css-1cqverl e11tzz432" src="/resources/images/book8.jpg" />
      <p>&nbsp</p>
      <p>&nbsp</p>
      <p>&nbsp</p>
      <p>&nbsp</p>
      <p>&nbsp</p>
      <h2>댓글 1</h2>
      <p>&nbsp</p>
      <p>&nbsp</p>
      <div>
        <div class="conmment-container">
          <span class="container-sppan">
            <img
              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36"
              srcset="
                https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72  1.5x,
                https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72  2x,
                https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144 3x
              " /><input class="comment-mention" placeholder="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다 :)" /><button
              class="comment-button">등록
          </span>
          </button></a>
        </div>
        <div class="comment-map-container">
          <img class="comment-feed__item__content__author__image" alt="수진바기"
            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1554475192_xVzZOWEbF.jpeg?gif=1&amp;w=36"
            srcset="
                https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1554475192_xVzZOWEbF.jpeg?gif=1&amp;w=72  1.5x,
                https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1554475192_xVzZOWEbF.jpeg?gif=1&amp;w=72  2x,
                https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1554475192_xVzZOWEbF.jpeg?gif=1&amp;w=144 3x
              " />
          <div class="comment-box">
            수진바기 <a>이 책 너무 좋아요!</a>
            <br />
            <p>2시간 전 좋아요 답글 달기 신고</p>
          </div>
        </div>
      </div>
    </div>
    <div class="right-container">
      <div class="button-container">
        <button class="heart-button">
          <svg width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"
            preserveAspectRatio="xMidYMid meet" class="css-pctok2 ek5sxnq1">
            <path
              d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z">
            </path>
          </svg>
          <span>25</span>
        </button>
        </button>

        <button class="heart-button">
          <svg width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24"
            preserveAspectRatio="xMidYMid meet" class="css-pctok2 ek5sxnq2">
            <path
              d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z">
            </path>
          </svg><span>20</span>
          </onclick=>
      </div>
      </button>
      <div class="aaa">
        <img class="image"
          src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1587137202_t.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c"
          srcset="
              https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1587137202_t.jpeg?gif=1&amp;w=80&amp;h=80&amp;c=c   1.5x,
              https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1587137202_t.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 2x,
              https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1587137202_t.jpeg?gif=1&amp;w=160&amp;h=160&amp;c=c 3x
            " />
        <div class="title">
          2yujin22님의<br />
          <a>인스타-@2yujin22 / 유튜브-유진이의 <br />사부작</a>
        </div>
        <button class="follow-button">팔로우</button>
      </div>
      <div>
        <img class="card-detail-pc-related-card-list__item__image"
          src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164526835121185285.jpeg?gif=1&amp;w=160&amp;h=160&amp;c=c"
          srcset="
              https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164526835121185285.jpeg?gif=1&amp;w=240&amp;h=240&amp;c=c 1.5x,
              https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164526835121185285.jpeg?gif=1&amp;w=320&amp;h=320&amp;c=c 2x,
              https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164526835121185285.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c 3x
            " alt="" />
        <img class="card-detail-pc-related-card-list__item__image"
          src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164518135839386205.jpeg?gif=1&amp;w=160&amp;h=160&amp;c=c"
          srcset="
              https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164518135839386205.jpeg?gif=1&amp;w=240&amp;h=240&amp;c=c 1.5x,
              https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164518135839386205.jpeg?gif=1&amp;w=320&amp;h=320&amp;c=c 2x,
              https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164518135839386205.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c 3x
            " alt="" />
      </div>
      <div>
        <img class="card-detail-pc-related-card-list__item__image"
          src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164508922229212490.jpeg?gif=1&amp;w=160&amp;h=160&amp;c=c"
          srcset="
              https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164508922229212490.jpeg?gif=1&amp;w=240&amp;h=240&amp;c=c 1.5x,
              https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164508922229212490.jpeg?gif=1&amp;w=320&amp;h=320&amp;c=c 2x,
              https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164508922229212490.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c 3x
            " alt="" />
        <img class="card-detail-pc-related-card-list__item__image"
          src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164500705806682627.jpeg?gif=1&amp;w=160&amp;h=160&amp;c=c"
          srcset="
              https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164500705806682627.jpeg?gif=1&amp;w=240&amp;h=240&amp;c=c 1.5x,
              https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164500705806682627.jpeg?gif=1&amp;w=320&amp;h=320&amp;c=c 2x,
              https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164500705806682627.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c 3x
            " alt="" />
      </div>
    </div>
  </div>
  
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