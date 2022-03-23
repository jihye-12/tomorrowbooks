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
    <link rel="stylesheet" href="/resources/css/article.css">
    <script src="https://kit.fontawesome.com/6f8304097c.js" crossorigin="anonymous" defer></script>
    <script src="/resources/js/main.js" defer></script>
    <script src="/resources/js/article.js" defer></script>
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
            <a href="/reviewphoto.jsp"><i class="fa-solid fa-camera"></i>&nbsp;&nbsp;사진 올리기</a>
        </li>
        <li>
            <a href="/reviewwrite.jsp"><i class="fa-solid fa-thumbs-up"></i>&nbsp;&nbsp;리뷰 글쓰기</a>
        </li>
    </ul>


    
    
    <main>
        <section class="article_section">
            <article>
                <div class="article_header">
                    <p>책 소개</p>
                    <h2>잠들어야만 입장 가능한 꿈 백화점, 달러구트 꿈 백화점</h2>
                    <p>이미예 지음 / 팩토리나인 / 2020년 07월 08일 출간</p>
                </div>
                <div class="article_main">
                    <p><b>잠들어야만 입장 가능한 꿈 백화점에서 일어나는 비밀스럽고도 기묘하며 가슴 뭉클한 판타지 소설</b></p>
                    <p>여기는 잠들어야만 입장할 수 있는 ‘달러구트 꿈 백화점’입니다. 잠들어야만 입장할 수 있는 독특한 마을. 그곳에 들어온 잠든 손님들에게 가장 인기 있는 곳은, 온갖 꿈을 한데 모아 판매하는 ‘달러구트의 꿈 백화점’이다. 긴 잠을 자는 사람들은 물론이고, 짧은 낮잠을 자는 사람들과 동물들로 매일매일 대성황을 이룬다.</p> 
                    <p>범상치 않은 혈통의 주인장 ‘달러구트’, 그리고 그의 최측근에서 일하게 된 신참 직원 ‘페니’, 꿈을 만드는 제작자 ‘아가넵 코코’, 그리고 베일에 둘러싸인 비고 마이어스…등이 등장한다.</p>
                    <p>《달러구트 꿈 백화점》은 ‘무의식에서만 존재하는 꿈을 정말 사고 팔 수 있을까?’라는 기발한 질문에 답을 찾아가며, 꿈을 만드는 사람, 파는 사람, 사는 사람의 비밀스런 에피소드를 담고 있는 판타지 소설이다. 텀블벅 펀딩 1812% 달성, 전자책 출간 즉시 베스트셀러 1위를 3주간 기록하며 수많은 독자들의 요청으로 종이책으로 출간하게 되었다.</p>
                    <div class="article_vedio">
                        <iframe width="800" height="500" src="https://www.youtube.com/embed/CkM21p0dPG8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                    <div class="article_contents">
                        <h2>목 차</h2>
                        <ol>
                            <li>주문하신 꿈은 매진입니다</li>
                            <li>한밤의 연애지침서</li>
                            <li>미래를 보여 드립니다.</li>
                            <li>환불 요청 대소동</li>
                            <li>노 쇼는 사양합니다.</li>
                            <li>이 달의 베스트셀러</li>
                            <li>비틀즈와 벤젠고리</li>
                            <li>‘타인의 삶(체험판)’ 출시</li>
                            <li>예약하신 꿈이 도착하였습니다</li>
                        </ol>
                    </div>
                    <div class="article_recommendation">
                        <h2>추천사</h2>
                        <p>조디 피코(《작지만 위대한 일들》 작가)</p>
                        <p>아름다운 우화, 영화 〈멋진 인생〉의 현대판. 누구도 상상하지 못했던 세상에 갇혀버린 지금, 우리 모두에게 시의적절하다!</p>
                    </div>
                    <div class="into_thebook">
                        <h2>책 속으로</h2>
                        <pre>
“지금 잡생각이 많으신 것 같은데 꿈은 다음에 구입하시는 게 어떨까요? 꿈의 선명도가 떨어진답니다. 이럴 때는 그냥 숙면하시는 게 좋죠.
외람된 말씀이지만 제 경험상 손님의 경우에는 99% 꿈을 꾸는 도중에도 잡생각이 끼어들거든요. 전혀 다른 내용이 되어버려요.
옆 골목에서 파는 양파 우유가 굉장히 고소하답니다. 숙면에도 도움이 되지요. 드시고 푹 주무시는 게 좋겠어요.”
남자 손님은 꿍얼거리며 엘리베이터 쪽으로 가버렸다. 매니저로 보이는 남자는 손님이 놓고 간 꿈 상자를 집어서 손수건으로 살짝 문지르더니 각을 맞춰 진열장에 다시 올려놓았다.
(1. 주문하신 꿈은 매진입니다)
                        </pre>
                        <pre>
달러구트는 흙먼지가 묻은 손으로 아가냅 코코와 악수했다.
다른 직원들은 아가냅 코코를 보고 양손으로 입을 틀어막으며 감격했다. 정신없이 날던 레프라혼 요정들조차 공중에 가만히 떠 있었다.
운 좋게 그들 가까이에 서 있던 페니는, 아가냅 코코에게서 과일 풋내가 난다고 생각했다. 그건 장식한 과일들의 냄새보다 더 진하고 풍부한 냄새였다.
그리고 아주 포근한 인상과 얼굴 곳곳의 깊은 주름과 대비되는 통통하고 발그레한 볼살은 마치 뽀얀 아기의 그것과 같았다.
뒤이어 가게 안으로 들어온 수행원들은 고급 비단 보자기로 싼 꾸러미들을 양손에 묵직하게 들고 있었다.
“달러구트, 약속한 물건이야. 별 볼 일 없는 물건이지만 잘 팔아줘, 어련히 알아서 잘하겠지만.”
_ 3. 미래를 보여 드립니다.
                        </pre>
                    </div>
                        <div class="article_publisher">
                            <h2>출판사 서평</h2>
                            <p>잠들면 나타나는 비밀 상점. 그곳에서 만나는 다양한 사람들의 이야기</p>
                            <p>잠들어야만 입장할 수 있는 상점가 마을. 그곳에는 잠든 이들의 관심을 끌 만한 요소들이 즐비하다. 잠이 솔솔 오도록 도와주는 주전부리를 파는 푸드트럭, 옷을 훌렁훌렁 벗고 자는 손님들에게 정신없이 가운을 입혀주는 투덜이 녹틸루카들, 후미진 골목 끝에서 악몽을 만드는 막심의 제작소, 만년 설산의 오두막에서 1년에 딱 한 번 상점가로 내려온다는 베일에 싸인 꿈 제작자, 태몽을 만드는 전설의 꿈 제작자 아가냅 코코, 하늘을 나는 꿈을 만드는 레프라혼 요정들의 시끌벅적 작업실 등…</p>
                            <p>하지만 잠든 손님들에게 가장 인기 있는 곳은, 두말할 것도 없이 온갖 꿈을 한데 모아 판매하는 상점가! 이 골목은 긴 잠을 자는 사람들은 물론이고, 짧은 낮잠을 자는 사람들과 동물들로 매일매일 대성황을 이룬다. 그리고 거리 한가운데 터줏대감처럼 자리 잡은 5층짜리 목조건물인 ‘달러구트의 꿈 백화점’은 가장 유서 깊은 상점으로 ‘꿈 백화점’이라는 별명에 걸맞게 층층마다 특별한 장르의 꿈들을 구비하고 있다.</p>
                        </div>
                        <div class="author_intro">
                            <h2>저자 소개</h2>
                            <div class="author_intro_container">
                                <img src="/resources/images/miyelee.jpeg">
                                <div class="author_intro_detail">
                                    <div class="author_intro_detail_header">
                                        <p><b>저자 : 이미예</b></p>
                                        <button id="interestAuthor"><i class="fa-solid fa-heart"></i>&nbsp;&nbsp;관심 작가 등록</button>
                                    </div>
                                    <div class="author_class">
                                        <span class="author_class">현대문학가 > 소설가</span>
                                    </div>
                                    <p>부산에서 태어났다. 부산대에서 재료공학을 공부하고 반도체 엔지니어로 일했다. </p>
                                    <p id="moreStart">클라우드 펀딩 프로젝트 [주문하신 꿈은 매진입니다](《달러구트 꿈 백화점》)으로 첫 소설을 발표해 10~20대에게 열렬한 지지를 받아 성공적으로 펀딩을 종료하였다.</p>
                                    <button id="moreBtn">더보기</button>
                                    <p class="morePhrase">잠을 자면 기억에 남는 꿈을 자주 꾸는 편이다. 좋아하는 것은 8시간 푹 자고 일하기 / 싫어하는 것은 잠도 못 자고 밤새워 일하기</p>
                                </div>
                            </div>
        
                        </div>
                </div>



            </article>






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