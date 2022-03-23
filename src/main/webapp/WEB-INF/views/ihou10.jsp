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
  <link rel="stylesheet" href="/resources/css/ihou2.css">
  <link rel="stylesheet" href="/resources/css/noticeboard.css">
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
  <div class="flex-div">
    <div class="img-explain">
      <div>
        <span> 나는 고양이로소이다 | 소설 </span>
        <time>3시간 전</time>
      </div>
      <img src="https://i.pinimg.com/564x/30/2d/6d/302d6d42bf778f07d4f7e31f84bb538b.jpg" />
      <div>
        <img class="production-tag-scroller__item__image"
          src="https://i.pinimg.com/564x/23/4a/89/234a89e9a23db85a7f10b7c77ca45f09.jpg" />
        <img class="production-tag-scroller__item__image"
          src="https://i.pinimg.com/564x/bf/fa/68/bffa6871fb68f4562618cf8f76551bf1.jpg" />
        <img class="production-tag-scroller__item__image"
          src="https://i.pinimg.com/564x/41/5e/dd/415edda3139ea338b1f9ce512021caf0.jpg" />
        <img class="production-tag-scroller__item__image"
          src="https://i.pinimg.com/564x/30/2d/6d/302d6d42bf778f07d4f7e31f84bb538b.jpg" />
      </div>
      <p>나츠메 소세키? 나쯔메 소세키? 작가 夏目漱石 와의 인연은?</p>
      <p>&nbsp</p>
      <p class="tag">
        #소설 &nbsp #난 고양이 &nbsp #룰루밀러 &nbsp #꿀잼 &nbsp #질서 &nbsp #추천
        &nbsp #베스트셀러
      </p>
      <p class="tag">#그린인테리어 &nbsp #플랜테리어 &nbsp #거실</p>
      <img class="css-1cqverl e11tzz432"
        src="https://i.pinimg.com/564x/60/c7/e7/60c7e721e123e37eb4096a73191789f3.jpg" />
      <br><br><br>
      <p>

        근대문학 강독시간, 교수님은 너무나 재밌으시다는 표정으로 나츠메 소세키의 <산시로> 를 읽어내려가셨다. 강의실에 앉아 있는 우리는 이제 막 초급 일본어에서 중급으로 올라가려는 쪼무래기들.. 고전문법을
          필요할 정도도
          아니었고 어려운 한자는 아니었지만, 익숙치 않은 한자 및 일본어 단어가 겉돌기만 했다. </p>
      <br>
      <p>

        한국어로 한국의 근대문학을 읽어도 쉽지 않은데 일본의 근대문학이라니..

        그러다 졸업후 일본에 출장 갈 일이 많아졌다. 하루가 멀다고 일본과 한국을 오가며 들락날락하는 그 당시 내 지갑속에는 나츠메 소세키가 그려진 천엔짜리가 항상 대기하고 있었다. 출장 업무가 끝나면
        북스토어에 들러
        그의 작품을 하나 둘 사들이기 시작했다. 그렇게 열성으로 그의 작품을 모았건만, 결국 읽지 않고 빛 바랜 종이가 되어갔다.</p>
      <img class="css-1cqverl e11tzz432"
        src="https://i.pinimg.com/564x/41/5e/dd/415edda3139ea338b1f9ce512021caf0.jpg" />
      <br><br><br>
      <p>

        중간중간 우리가 과학사로부터 배울 점이나 작가님이 느낀 점이 적혀있는데, 학생이 공부하는 데에 있어서 동기부여가 될 법한 문장도 많았다. 과학을 하고 싶은 사람이라면 열정이 불탈법한 내용도, 우리가
        인생을 살고
        공부를 하면서 잊지 말아야 하는 점도, 편견 때문에 가능성이 있는 사람을 배제하는 사회에 대한 비판도 담겨있었다. 읽으면서 많이 공감했다. 또, 곽재식 작가님이 대학원생이었을 때 느꼈던 점을 풀어주신
        것도
        안타까우면서도 재밌었다. 예를 들면, "세상의 대학원생들이 학위를 따기 위해 연구하는 과정을 보다 보면, 중요한 주제라거나 관심이 가는 주제이냐 하는 점 못지않게 빨리 논문을 완성해서 기한 내에 졸업을
        할 수 있느냐
        아니냐에 따라 연구 방향을 정하는 경우가 적지 않다."라고 한 부분에서는 대학원의 현실을 실감할 수 있었다. 대학에 직접 와보기 전에는 대학원 생활에 대한 환상을 품고 있기도 했다.
      </p>
      <br>
      <p>
        그런 환상을 깨줌과
        동시에, 그럼에도 "저는 저의 최선을 다해 노력할 것이고, 최선을 다한 후에도 배울 수 없다면, 그때 포기하겠습니다. 그 전에는 아닙니다."라고 말했던 김점동(박 에스더) 의사의 말처럼, 현실을 굳건히
        이겨나가고 공부를
        계속해나간 사람들의 모습을 보며 의지를 다질 수도 있었다.</p>

      <br><br>
      <p>킬링타임으로 읽으려 했던 책이 두고두고 기억에 남게한다. 가방을 잃어버렸는데 노숙자가 찾아주게 되고, 가방 주인은 편의점 사장이다. 편의점 사장은 가방을 찾아준 노숙자에게 알바를 제안하게 되고,
        편의점 알바로
        노숙자가 일하게 되면서 여러 사람들을 만나 관계를 맺게 된다. 사람이 많지도 않았던 편의점은 노숙자로 인해서 매출이 오르게 되고, 찾는 사람들마저 많아지게 된다. 어찌보면 별거 없는 줄거리같아 보여도
        실제로 읽으면
        읽을수록 뒷 부분이 궁금해지게 만드는 소설이다</p>
      <p>&nbsp</p>
      <p>&nbsp</p>
      <p>&nbsp</p>
      <p>&nbsp</p>
      <p>&nbsp</p>
      <h2>댓글 5</h2>
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
            dff77 <a>새해 첫 책으로 읽었는데 내용,종이질감,표지,삽화 모든 게 진짜 진짜 너무 좋았습니다.</a>
            <br />
            <p>1시간 전 좋아요 답글 달기 신고</p>
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
            아도라 <a>잘 몰랐던 어느 과학자의 전기로 시작해... 아니 갑</a>
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
            알로하 <a>넘 재밌어요</a>
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
            벨리타 <a>잘보고 갑니다</a>
            <br />
            <p>3시간 전 좋아요 답글 달기 신고</p>
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
            클레오 <a>^^</a>
            <br />
            <p>10시간 전 좋아요 답글 달기 신고</p>
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
          <span>245</span>
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
          <a>인스타-@2yujin22 <br />칠월색</a>
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