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


    
    
    <main>
        <section class="article_section">
            <article>
                <div class="article_header">
                    <p>책 소개</p>
                    <h2>질문을 품고 떠나는 철학 기차 여행, 소크라테스 익스프레스</h2>
                    <p>에릭 와이너 지음 / 김하현 옮김 / 어크로스 / 2021년 04월 28일 출간</p>
                </div>
                <div class="article_main">
                    <p><b>"인생에서 길을 잃는 수많은 순간마다 이 철학자들의 목소리가 들려올 것이다"</b></p>
                    <p>프랑스 사상가 모리스 리즐링은 말한다. “결국 인생은 우리 모두를 철학자로 만든다.” 하지만 인생이 호락호락하지 않음을 우리는 수시로 깨닫는다. 여기, 인생에서 가장 중요한 질문을 하고 답을 찾기 위해 평생을 바친 철학자들이 있다. 그들에게 삶에 도움이 되는 조언을 받는 것은 어떨까?
                        《소크라테스 익스프레스》는 마르쿠스 아우렐리우스부터 몽테뉴까지 역사상 가장 위대한 철학자들을 만나러 떠나는 여행기이자, 그들의 삶과 작품 속의 지혜가 우리 인생을 개선하는 데 어떻게 도움이 되는지 답을 찾아가는 책이다. 매력적인 글솜씨로 “빌 브라이슨의 유머와 알랭 드 보통의 통찰력이 만났다”는 평가를 받는 에릭 와이너가 이 여행의 동반자로 나선다.</p>
                    <p>철학적 질문은 우리가 살아가는 도처에 존재한다고 에릭 와이너는 말한다. 심지어 아침 침대에서 일어나는 것조차 철학적인 문제라고 이야기하는데, 그 대답을 도와줄 사람은 로마 황제이자 스토아 철학자였던 마르쿠스 아우렐리우스다. 위대한 아우렐리우스에게도 아침은 커다란 적이었다. 그 역시 우리와 마찬가지로 침대에서 ‘5분만 더!’를 외치는 평범한 사람이었다. 하지만 그는 대체로 침대에서 나오는 데 성공한다. ‘침대에서 나오는 방법’ 같은 지식이나 정보를 알아서가 아니라, ‘굳이 왜 그래야 하는가’에 대해 스스로 납득할 만한 대답, 말하자면 자기 생각과 기준을 찾았기 때문이다.</p> 
                    <div class="article_vedio">
                        <iframe width="800" height="500" src="https://www.youtube.com/embed/DbcmxZrqAbc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                    <div class="article_contents">
                        <h2>목 차</h2>
                        <ol>
                            <li>마르쿠스 아우렐리우스처럼 침대에서 나오는 법</li>
                            <li>소크라테스처럼 궁금해하는 법</li>
                            <li>루소처럼 걷는 법</li>
                            <li>소로처럼 보는 법</li>
                            <li>쇼펜하우어처럼 듣는 법</li>
                            <li>에피쿠로스처럼 즐기는 법</li>
                            <li>시몬 베유처럼 관심을 기울이는 법</li>
                            <li>간디처럼 싸우는 법</li>
                            <li>공자처럼 친절을 베푸는 법</li>
                            <li>세이 쇼나곤처럼 작은 것에 감사하는 법</li>
                            <li>에픽테토스처럼 역경에 대처하는 법</li>
                            <li>보부아르처럼 늙어가는 법</li>
                            <li>몽테뉴처럼 죽는 법</li>
                        </ol>
                    </div>
                    <div class="article_recommendation">
                        <h2>추천사</h2>
                        <p>인문 MD 김경영(알라딘)</p>
                        <p>유쾌한 방랑자 에릭 와이너가 이번에 향하는 곳은 위대한 철학자들이다. 소크라테스부터 보부아르까지, 그는 삶의 지혜를 습득할 목적으로 여행을 떠난다. 진득하고 진한 철학의 정수를 기대하는 독자는 열차 탑승을 다시 고려해보시길. 이 책은 경쾌하고 산뜻한 여행자에게 어울린다.</p>
                        <p>에릭 와이너는 총 열네 명의 철학자에게서 배울 점을 하나씩 집어 그 주변을 나풀나풀 걷는다. 소크라테스의 문답법을 곱씹으며 질문을 살아내는 법에 대해 말하고, 늙음을 사유하는 보부아르를 통해 잘 늙는 방법을 고민하는 식이다. 여유롭게 이어지는 수다를 읽다 보면 마음에 콕콕 와 박히는 문장들이 남는다. 소문난 그의 유머는 여행을 한층 즐겁게 만든다. 해 저물녘, 맥주 한 캔을 손에 들고 등을 살짝 뒤로 젖힌 자세로 지혜롭게 산다는 것이 무엇인지 고민하며 읽기에 딱 좋을 책이다.</p>
                    </div>
                    <div class="into_thebook">
                        <h2>책 속으로</h2>
                        <pre>
우리는 우리가 원한다고 생각하는 것을 원하지 않는다. 우리는 우리가 정보와 지식을 원한다고 생각한다.
하지만 그렇지 않다. 우리는 지혜를 원한다. 여기에는 차이가 있다.
정보는 사실이 뒤죽박죽 섞여 있는 것이고, 지식은 뒤죽박죽 섞인 사실을 좀 더 체계적으로 정리한 것이다.
지혜는 뒤얽힌 사실들을 풀어내어 이해하고, 결정적으로 그 사실들을 최대한 활용할 수 있는 방법을 제시한다.
영국의 음악가 마일스 킹턴은 이렇게 말했다. “지식은 토마토가 과일임을 아는 것이다. 지혜는 과일 샐러드에 토마토를 넣지 않는 것이다.” (들어가는 말, 6페이지)
                        </pre>
                        <pre>
우리에겐 늘 지혜가 필요하지만 삶의 단계마다 필요한 지혜가 다르다. 열다섯 살에게 중요한 ‘어떻게’ 질문과 서른다섯 살, 또는 일흔다섯 살에게 중요한 질문은 같지 않다.
철학은 각 단계에 반드시 필요한 이야기를 들려준다. (들어가는 말, 14페이지)
                        </pre>
                    </div>
                        <div class="author_intro">
                            <h2>저자 소개</h2>
                            <div class="author_intro_container">
                                <img src="/resources/images/ericweiner.jpeg">
                                <div class="author_intro_detail">
                                    <div class="author_intro_detail_header">
                                        <p><b>저자 : 에릭 와이너</b></p>
                                        <button id="interestAuthor"><i class="fa-solid fa-heart"></i>&nbsp;&nbsp;관심 작가 등록</button>
                                    </div>
                                    <div class="author_class">
                                        <span class="author_class">탐험/여행작가</span>
                                    </div>
                                    <p>에릭와이너는 [뉴욕타임스] 베스트셀러 작가이자 강연가다.</p>
                                    <p id="moreStart">무엇보다 철학적 여행가다. 저서로 베스트셀러 《행복의 지도》와 《신을 찾아 떠난 여행》 등이 있다. 두 책은 스무 개 이상의 언어로 번역되었다. NPR의 해외통신원으로 일했으며 〈워싱턴포스트〉와 여행잡지 〈어파〉 등에 기고했다. 아내와 딸, 사납게 날뛰는 고양이, 강아지와 함께 워싱턴D.C.에 살고 있다.</p>
                                    <button id="moreBtn">더보기</button>
                                    <p class="morePhrase">에릭 와이너는 철학적 여행가이자 회복중인 불평분자다. 여러분의 창조성에 불씨를 당기는 장소가 있으면 다음 주소로 알려주기 바란다. www.EricWeinerBooks.com</p>
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