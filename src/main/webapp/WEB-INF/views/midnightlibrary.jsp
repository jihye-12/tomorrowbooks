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
                    <h2>죽기 바로 전에만 열리는 마법의 도서관, 미드나잇 라이브러리</h2>
                    <p>매트 헤이그 지음 / 노진선 옮김 / 인플루엔셜 / 2021년 04월 28일 출간</p>
                </div>
                <div class="article_main">
                    <p><b>밤 12시, 죽기 바로 전에만 열리는 마법의 도서관에서 인생의 두 번째 기회를 드립니다</b></p>
                    <p>매트 헤이그의 소설 《미드나잇 라이브러리》는 2021년 4월 출간 이후 10개월 만에 30만 독자의 마음을 사로잡으며 눈물과 웃음, 가슴 뭉클한 감동을 선사하고 있다. 죽기로 결심한 주인공 ‘노라 시드’가 삶과 죽음 사이에 존재하는 미스터리한 도서관 ‘미드나잇 라이브러리’에서 눈을 뜨며 인생의 두 번째 기회를 얻는 이 소설은, 노라의 가장 완벽한 삶을 찾는 모험을 따라가며 ‘살아 있음’과 ‘살아가는 것’에 대한 깊은 통찰을 보여준다.</p> 
                    <p>“책을 덮는 순간 내일이 기대된다!” “내 인생의 반려책을 만났다” “다시 살아봐야겠다는 힘을 얻었다” 등 이 책을 읽은 독자들의 뜨거운 반응에 힘입어 주요 서점에서 2021 올해의 책으로 선정되었고, 그 열기는 여전히 계속되고 있다. 타인의 삶에 대한 공감, 자신의 삶에 대한 긍정, 살아 있는 것 자체가 살아야 할 이유라는 깊은 통찰력까지 매트 헤이그 작가가 보내는 공감과 위로의 메시지는 세대와 성별을 아우르며 전 세계 독자들의 마음을 사로잡았다. 《뉴욕타임스》 베스트셀러 1위, 영국 아마존 종합 베스트셀러 1위를 기록했고, 미국 아마존과 《뉴욕타임스》 60주 이상, 독일 《슈피겔》에서도 38주 연속 장기 베스트셀러에 올랐다. 현재 덴마크, 이탈리아, 스페인, 루마니아, 타이완, 이란 등 세계 각지에서 출간되며 글로벌한 인기를 누리고 있다.</p>
                    <div class="article_vedio">
                        <iframe width="800" height="500" src="https://www.youtube.com/embed/dBVs1t50Iz8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                    <div class="article_contents">
                        <h2>목 차</h2>
                        <p>이 도서는 목차가 없습니다.</p>
                    </div>
                    <div class="article_recommendation">
                        <h2>추천사</h2>
                        <p>조디 피코(《작지만 위대한 일들》 작가)</p>
                        <p>아름다운 우화, 영화 〈멋진 인생〉의 현대판. 누구도 상상하지 못했던 세상에 갇혀버린 지금, 우리 모두에게 시의적절하다!</p>
                    </div>
                    <div class="into_thebook">
                        <h2>책 속으로</h2>
                        <pre>
죽기로 결심하기 19년 전, 노라 시드는 베드퍼드에 있는 헤이즐딘 스쿨의 아늑하고 작은 도서관에 앉아 있었다. 노라는 낮은 테이블 앞에 앉아 체스판을 응시했다.
“얘, 노라, 미래가 걱정되는 건 당연해.” 도서관 사서인 엘름 부인이 햇빛을 받은 서리처럼 눈을 반짝이며 말했다.
그러고는 첫수를 두었다. 흰 폰이 일렬로 반듯하게 늘어선 줄을 나이트가 훌쩍 뛰어넘었다.
“물론 시험이 걱정될 거야. 하지만 넌 원하는 건 뭐든 될 수 있어, 노라. 그 모든 가능성을 생각해봐. 얼마나 신나니.”
“네. 그러네요.”
“넌 앞날이 창창해.”
“창창하죠.”
“뭐든 할 수 있고, 어디서든 살 수 있어. 덜 춥고 덜 축축한 곳에서 말이야.”
-9쪽 ‘비 오는 날의 대화’ 중에서
                        </pre>
                        <pre>
“여기 있는 책들, 이 도서관에 있는 책들은 전부 너의 다른 삶이야. 이 책만 제외하고. 이 도서관은 네 도서관이거든. 널 위해 존재하지. 사람의 삶에는 무수히 많은 결말이 있어.
이 서가에 있는 책들은 모두 네 삶이고, 같은 시간에 시작해. 바로 지금, 4월 28일 화요일 자정에. 하지만 이 자정의 가능성이 모두 똑같지는 않아. 비슷한 삶들도 있지만 아주 다르기도 해.”
“말도 안 돼요. 이것만 제외하고요? 이 책만?” 노라는 회색 책을 엘름 부인 쪽으로 내밀었다.
엘름 부인은 한쪽 눈썹을 치켜세웠다. “그래. 그 책만 제외야. 그건 네가 한 글자도 쓰지 않고서 쓴 책이지.”
“네?”
“네 모든 문제의 근원과 해답이 담겨 있는 책이란다.”
“이게 무슨 책인데요?”
“《후회의 책》이야.”
-53~54쪽 ‘후회의 책’ 중에서
                        </pre>
                    </div>
                        <div class="article_publisher">
                            <h2>출판사 서평</h2>
                            <p>“후회하는 일을 되돌릴 기회가 생긴다면 다른 선택을 해보겠니?</p>
                            <p>23시 22분. 죽기에 딱 좋은 시간. 초록의 책들이 가득한 자정의 도서관에서 가장 완벽한 삶을 찾는 여정이 시작된다!</p>
                            <p>어머니의 죽음, 파혼, 해고, 반려 고양이 볼츠의 죽음… 더 이상 삶을 견딜 수 없던 주인공 노라는 자살을 결심한다. 눈을 뜬 곳은 초록색 책들로 가득한 자정의 도서관. 친절하고 다정한 사서의 안내로 서가의 책이 모두 노라가 살았을지도 모르는 삶들을 담고 있음을 알게 되고 노라는 《후회의 책》을 펼쳐서, 가장 후회되는 순간 다른 선택을 했던 삶을 살아본다. 빙하학자, 뮤지션, 동네 펍 주인, 수영 선수가 되는 삶, 평범하지만 지루한 삶, 아이가 있는 삶 등등 가장 ‘완벽한 삶’을 찾을 때까지 수만 가지의 새로운 삶을 거친다. 그러나 노라는 자꾸만 ‘자정의 도서관’으로 돌아오게 되고, 무엇이 완벽한 삶인지 의문을 품는다. 20대에 심한 우울증을 겪으며 정신적 붕괴를 경험했던 작가 매트 헤이그는 ‘살아야 할 이유’에 대해서 끊임없이 고민해왔고, 신작 장편소설 《미드나잇 라이브러리》에서 자신만의 해답을 구한다.</p>
                        </div>
                        <div class="author_intro">
                            <h2>저자 소개</h2>
                            <div class="author_intro_container">
                                <img src="/resources/images/matthaig.png">
                                <div class="author_intro_detail">
                                    <div class="author_intro_detail_header">
                                        <p><b>저자 : 매트 헤이그</b></p>
                                        <button id="interestAuthor"><i class="fa-solid fa-heart"></i>&nbsp;&nbsp;관심 작가 등록</button>
                                    </div>
                                    <div class="author_class">
                                        <span class="author_class">현대문학가 > 소설가</span>
                                        <span class="author_class">영화인 > 시나리오작가</span>
                                    </div>
                                    <p>1975년 영국 사우스요크셔주 셰필드에서 태어났다. “강렬한 존재감과 위대한 재능을 가진 소설가”로 평가받는 영국의 소설가이자 동화작가. 기발한 상상력에 유머와 위트가 더해진 그의 작품은 독자들에게 큰 공감과 위로를 주며 많은 사랑을 받고 있다.</p>
                                    <p id="moreStart">1975년 영국 사우스요크셔주 셰필드에서 태어났다. 20대 초 절벽 끝에 서서 스스로 생을 마감하려던 순간, 자신의 우울증과 불안장애를 깨달은 작가는 파트너와 가족의 도움을 받아 서서히 건강을 회복했다. 이때부터 소설을 쓰기 시작한 그는 2004년 《영국의 마지막 가족》을 출간하며 소설가로 데뷔했다.</p>
                                    <button id="moreBtn">더보기</button>
                                    <p class="morePhrase">2007년 첫번째 어린이책 《그림자 숲의 비밀》로 네슬레 어린이도서상과 블루 피터 도서상을 수상했고, 이후 카네기상 최종 후보에 세 번이나 오르면서 동화작가로서도 인정을 받았다. 2014년 《휴먼: 어느 외계인의 기록》으로 에드거상 최종 후보에 올랐고, 2015년 우울증을 극복한 과정을 담은 에세이 《살아야 할 이유》가 영국에서 베스트셀러가 되며, “마음 건강에 대하여 우리 시대에 가장 영향력 있는 작가”로 자리매김했다. 그 외에도 20여 편 이상이 되는 그의 작품은 30여 개 이상의 언어로 번역 출판되었고, 소설 《시간을 멈추는 법》과 동화 《크리스마스로 불리는 소년》은 영화화될 예정이다. 2020년 출간된 《미드나잇 라이브러리》는 출간 이후 각종 베스트셀러를 휩쓸며 평단과 독자들의 지지를 받고 있다.</p>
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