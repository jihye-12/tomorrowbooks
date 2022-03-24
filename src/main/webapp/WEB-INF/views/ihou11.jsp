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
  <link rel="stylesheet" href="ihou2.css">
  <link rel="stylesheet" href="noticeboard.css" />
  <script src="https://kit.fontawesome.com/6f8304097c.js" crossorigin="anonymous" defer></script>
  <script src="main.js" defer></script>
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
        <a href="/reviewphoto.html"><i class="fa-solid fa-camera"></i>&nbsp;&nbsp;사진 올리기</a>
    </li>
    <li>
        <a href="/reviewwrite.html"><i class="fa-solid fa-thumbs-up"></i>&nbsp;&nbsp;리뷰 글쓰기</a>
    </li>
</ul>
  <div class="flex-div">
    <div class="img-explain">
      <div>
        <span> 우리가 과학을 사랑하는 법 | 과학 </span>
        <time>20시간 전</time>
      </div>
      <img src="https://i.pinimg.com/736x/de/64/37/de64370f226e1980b6108556d58ec5c4.jpg" />
      <div>
        <img class="production-tag-scroller__item__image"
          src="https://i.pinimg.com/736x/de/64/37/de64370f226e1980b6108556d58ec5c4.jpg" />
        <img class="production-tag-scroller__item__image"
          src="https://i.pinimg.com/564x/5e/ba/63/5eba63f4f786b6378c612977ac0adfa8.jpg" />
        <img class="production-tag-scroller__item__image"
          src="https://i.pinimg.com/564x/3e/de/04/3ede04d1872b54fc5751f70ad11fa5c7.jpg" />
        <img class="production-tag-scroller__item__image"
          src="https://i.pinimg.com/564x/c8/25/6d/c8256d488750cb9f7c26ae13fcf86510.jpg" />
      </div>
      <p>여태 읽었던 과학 교양서 중 제일 강하게 추천하고 싶은 책이다. 과학사와 과학 상식, 우리에게 다가올 수 있는 의미의 균형이 절묘하다.</p>
      <p>&nbsp</p>
      <p class="tag">
        #소설 &nbsp #SF &nbsp #화성 &nbsp #지구 &nbsp #질서 &nbsp #추천
        &nbsp #베스트셀러
      </p>
      <p class="tag">#책 &nbsp #과학 &nbsp #우주</p>
      <img class="css-1cqverl e11tzz432"
        src="https://i.pinimg.com/564x/ae/1a/bb/ae1abbd8dc2d591ded4f316b065293e7.jpg" />

      <br><br><br>
      <p>바벨 작가의 [어머니들의 아이]는 미래 시대를 배경으로 한 SF 단편이다. 읽으면서 두 작품이 떠올랐는데 하나는 르귄의 헤인 시리즈이고 또 다른 하나는 클라크의 [유년기의 끝]과 [라마와의
        랑데뷰]였다. 아마 그래서
        어둠의 왼손 서문이 떠올랐던 걸지도 모르겠다. 이 소설은 뭐라고 해야하나, 어떤 고전적인 과학소설의 느낌을 살려낸다. 헤인 시리즈나 클라크 소설이 연상됐다고 말했듯이, 어떤 미지와의 존재와 만날 수
        있다는 희망을
        불러일으킨다. 이게 외계인이든 새로운 환경이든 뭐든 우리가 몰랐던 존재 혹은 우리에게 낯선 존재에 대한 그리움, 만날 수 있다는 가능성, 그리고 그 낯선 존재와 소통할 수 있을 거란 긍정, 나아가
        연대할 수 있을거란
        희망을 보여준다. 이 희망의 정서가 소설 전체를 관통하고 있기 때문에 읽으면서 내내 애틋하고 눈물이 날 것도 같고 이게 설사 썩은 동앗줄일지라도 믿어보고 싶고 응원하고 싶어진다.</p>
      <br><br>
      <p>그렇다고 읽는 내내 마음 속에서 이렇게 솟아나는 이 감정들이 확 끓어오르는 것도 아니다. 소설 자체가 가진 리듬에 휩쓸려 뿜어져나오는 감정이 아니라 안에 잔잔하게 고여있는 느낌이랄까. 이게 가능한
        이유에는 여러가지가
        있겠지만 그 중 하나는 작가가 구사하는 문장이라고 본다. 문장이 선명하다. 아주 가끔 왜 갑자기 모호해지지? 싶기도 했는데, 또 바로 뒤에 가서 작가가 다시 그 모호함을 풀어버린다. 리듬이 좋은
        단편이다. 아주
        천천히 소설 속 세계를 만들면서 폭을 넓히는데 그게 지루하지 않고 호흡이 좋다. 다 읽고 나면 작가에 대한 기대가 생기는 소설이다. 작가가 아주 안정감있게 소설 전체를 끌어가고 있다.</p>
      <br><br>
      <p>한편 성소수자가 연상되지 않을 수가 없도록 쓰여진 소설로 작가가 태그를 통해서 다시 한 번 밝히고 있고. 독자 입장에서 ‘아 어쩌면 웹소설에는 이런 장점이 있겠구나’, 작가가 이야기가 끝났지만 태그를
        이용할 수
        있다는 점 – 이 부분이 좀 신기했다. 이전까지는 못 느껴본 점이었다.</p>
      <br><br>
      <p>팬데믹이라는 시대 상황과도 무관하지 않다. 전홍식 SF&판타지 도서관장은 “모두 마스크를 쓰고 다니고, (위치추적 등) 통신에 의한 통제를 겪고 있다. SF에서만 보던 장면들이다. 직접 경험하다 보니
        과학에 관심이
        많아졌다”라고 말했다. 지난해 SF 문학 무크지 〈오늘의 SF〉 창간사에서 정소연 작가는 ‘SF는 지금 이곳 너머를 말하는 장르이지만, 한편으로 SF라는 장르는 지금 여기에 있다’고 썼다. ‘독자도
        창작자도 비평가도
        엄연히 지금 이곳에 사는 사람들이기 때문이다.’</p>

      <img class="css-1cqverl e11tzz432"
        src="https://i.pinimg.com/564x/c2/fd/6a/c2fd6a9cebb7187f544261c7ab75ad95.jpg" />
      <p>&nbsp</p>
      <p>&nbsp</p>
      <p>&nbsp</p>
      <p>&nbsp</p>
      <p>&nbsp</p>
      <h2>댓글 6</h2>
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
            darby <a>킬링타임으로 읽으려 했던 책이 두고두고 기억에 남게한다.</a>
            <br />
            <p>2시간 전 좋아요 답글 달기 신고</p>
          </div>
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
            델링 <a>큰 기대 없이 본 책인데 무척 재미있게 읽었다.</a>
            <br />
            <p>2시간 전 좋아요 답글 달기 신고</p>
          </div>
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
            디노 <a>일그러진 삶의 부분을 고쳐주는 곳</a>
            <br />
            <p>6시간 전 좋아요 답글 달기 신고</p>
          </div>
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
            sdf35 <a>일을 하게 되는 것을 계기로 본격적인 이야기가 전개된다.</a>
            <br />
            <p>12시간 전 좋아요 답글 달기 신고</p>
          </div>
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
            수피아 <a>행복은 멀리 있지 않고 내 옆의 사람들과 마음을 나누는 데 있음을 이제 깨달았다.</a>
            <br />
            <p>13시간 전 좋아요 답글 달기 신고</p>
          </div>
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
            예그리나 <a>불편한데 자꾸 가고 싶은 편의점이 있다</a>
            <br />
            <p>14시간 전 좋아요 답글 달기 신고</p>
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
          <span>127</span>
        </button>
        </button>
        
        <button class="heart-button">
          <svg width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24"
            preserveAspectRatio="xMidYMid meet" class="css-pctok2 ek5sxnq2">
            <path
              d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z">
            </path>
          </svg><span>54</span>
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
          Umie.haus님의<br />
          <a>인스타-@Umie.haus <br />바다</a>
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