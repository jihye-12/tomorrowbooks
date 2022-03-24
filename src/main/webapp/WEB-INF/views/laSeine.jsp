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
                    <h2>항공기 사고로 사망한 여인이 센 강에서 발견되었다. 센 강의 이름 모를 여인</h2>
                    <p>기욤 뮈소 지음 / 양영란 옮김 / 밝은세상 / 2022년 01월 19일 출간</p>
                </div>
                <div class="article_main">
                    <p><b>사랑과 감동의 마에스트로 기욤 뮈소의 2021년 신작!</b></p>
                    <p>기욤 뮈소는 센 강의 이름 모를 여인에 대한 이야기와 고대 그리스로부터 전해 내려오는 디오니소스 숭배 관습을 버무려 가슴이 서늘해지는 한 편의 스릴러를 선보이고 있다. 센 강을 지키는 하천경찰대가 익사 직전의 한 여인을 구조한다. 옷을 전혀 걸치지 않은 알몸에 손목에 시계와 팔찌를 차고 있다. 여인의 다리에는 담쟁이덩굴로 만든 왕관, 얼룩무늬 모피 문양 문신이 새겨져 있다. 질문을 해도 기억을 잃은 상태라 자신이 누구인지조차 알지 못한다. 하천경비대는 여인을 경찰청 간호실에 입원시킨다. 경찰청 간호실 안전 요원이 병원으로 이송하던 도중 여인은 몰래 도망친다. 여인이 머물렀던 경찰청 간호실의 병실에 금빛 머리카락과 소변이 남아 있다.</p>
                    <p>BNRF(국립 도주자 수색대)에서 수사팀을 이끌던 록산 몽크레스티앙 경감은 한직인 BANC(특이 사건국)로 전출된다. 센 강의 이름 모를 여인에 대한 사건을 맡은 록산은 여인의 머리카락과 소변으로 유전자 검사를 실시한 결과 매우 놀라운 사실을 발견한다. 여인의 이름은 밀레나 베르그만, 독일 출신의 유명 피아니스트이다. 그런데 그녀는 일 년 전 아르헨티나의 부에노스아이레스를 출발해 파리로 향하던 에어프랑스229 항공기에 탑승했다가 추락 사고가 발생하면서 현장에서 사망한 사실이 밝혀진다. 그 당시 담당 경찰은 사망자들의 유전자 검사를 철저하게 진행했고, 가족들의 사체 확인 절차를 거치며 신원 확인을 마무리한 만큼 오류 가능성은 제로에 가깝다고 주장한다. 그렇다면 센 강에서 건져 올린 여인은 누구인가?</p> 
                    <div class="article_vedio">
                        <iframe width="800" height="500" src="https://www.youtube.com/embed/8xS9SDXtROs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                    <div class="article_contents">
                        <h2>목 차</h2>
                        <ol>
                            <li>시계탑</li>
                            <li>경찰청 간호실</li>
                            <li>루소처럼 걷는 법</li>
                            <li>밀레나 베르그만</li>
                            <li>AF229 항공편의 여자 승객</li>
                            <li>유리의 집에서</li>
                            <li>정신병자들 속으로 들어간 작가</li>
                            <li>라파엘 바타유</li>
                            <li>본래 모습 그대로가 아닌 세상</li>
                            <li>디오니소스의 그림자</li>
                            <li>심장에 내려앉은 밤</li>
                            <li>환상의 궁전</li>
                            <li>드러나지 않은 이유</li>
                            <li>베벨의 아들</li>
                            <li>네가지 진실 </li>
                            <li>발광점</li>
                            <li>세상은 연극이다</li>
                            <li>무대 위의 이름 모를 여인</li>
                        </ol>
                    </div>
                    <div class="article_recommendation">
                        <h2>추천사</h2>
                        <p>뉴욕 타임스</p>
                        <p>이 소설 한 권으로 기욤 뮈소는 최고의 스릴러 작가라는 사실이 증명되었다.</p>
                        <p>기욤 뮈소는 프랑스를 넘어 세계적인 작가이다.</p>
                        <p>기욤 뮈소 현상은 여전히 현재진행형이다.</p>
                    </div>
                    <div class="into_thebook">
                        <h2>책 속으로</h2>
                        <pre>
시계점 주인이 말했다.
“그 시계에는 두 개의 추가 달려있죠. 그 두 개가 만나 하나의 소리를 냅니다.”
“시계에서 하나의 소리가 난들 무슨 의미가 있죠?”
시계점 주인이 빙긋 미소를 지었다.
“뭐 특별한 의미는 없습니다. 그냥 제작자의 아이디어일 뿐이죠. 매우 특별한 상징이기도 하고요.”
“상징이라면?”
“첫 번째 주인이었던 화가 숀 로렌츠는 이 시계에 대해 동시에 뛰는 두 개의 심장이라고 표현했죠.”
록산은 아라공의 시 ‘나는 내 심장을 너의 두 손 사이에 놓았지. 그건 네 심장과 보조를 맞춰 함께 뛰었지.’를 연상시키는 그 표현이 마음에 들었다.
시계점 주인이 도자기로 된 커피를 은쟁반에 담아왔다.
“숀 로렌츠가 사망했을 당시 소설가인 로맹 오조르스키의 부인이 남편에게 선물하고 싶다며 그 시계를 구입했습니다. 특별히 시계 뒷면에 글자를 새겨 달라고 하면서요.”
록산은 시계 뒷면에 새겨진 문장을 소리 내어 읽었다.
“당신은 내 마음의 평화인 동시에 혼돈이야. 프란츠 카프카가 펠리체 바우어에게 보낸 편지에서 따온 글이네요.”
록산은 이 시계에 얽힌 역사가 대단히 멋지고 시적이라는 느낌이 들었다.
“로맹 오조르스키가 부인과 이혼한 후 시계를 처분해 버리고 싶어하기에 제가 고객을 대신해 구입했습니다.”
“그 고객이 누군데요?”
“직업상 비밀 유지 의무가 있는 만큼 이 자리에서 고객이 누군지 밝힐 수는 없습니다.”
록산이 어이없다는 듯 두 눈을 치켜떴다.
“당신은 판사도 의사도 변호사도 아니잖아요. 직업상 비밀 유지 의무가 없다는 뜻입니다.”
흰 토끼의 침묵은 그리 오래 가지 않았다.
“그 고객은 바로 소설가 라파엘 바타유였습니다. 그는 로맹 오조르스키의 열렬한 팬이기도 했죠.”
록산은 어안이 벙벙해지며 자기도 모르게 들고 있던 커피 잔을 내려놓았다.
-72p~74p
                        </pre>
                        <pre>
“디오니소스의 어머니는 신이 아니라 인간이었습니다. 제우스가 유혹해 디오니소스를 낳은 세멜레는 테베의 왕 카드모스의 딸이었죠.
그녀는 신들의 왕인 제우스의 사랑을 독차지하는 한편 아이를 임신하게 되었습니다. 세멜레는 연인인 제우스에게 신들의 왕다운 위력을 볼 수 있게 해달라고 요청했습니다.
그런데 막상 제우스의 몸을 감싸고 있는 번개와 불을 본 세멜레는 몸이 산 채로 불태워지게 되죠.
제우스는 가까스로 세멜레의 태중에 있는 아기를 꺼내 자신의 허벅지 속에 넣고 꿰맸습니다.
그 결과 간신히 아기를 구해낼 수 있었죠. 디오니소스는 제우스와 인간이 합체해 태어난 신이죠.”
록산은 ‘디오니소스가 제우스의 허벅지에서 태어났다.’는 말이 왜 나오게 되었는지 이제야 알 수 있을 듯했다.
“디오니소스를 숭배한 풍습을 다룬 연구논문들이 다수 존재합니다. 누군가에 대한 무조건적인 숭배는 언제나 악마적이고 퇴폐적인 모습으로 변질되기 마련이죠.”
숲에서 벌어지는 카니발, 바쿠스 제, 사티로스들에게 몸을 바치는 요정들이 연상되었다.
원색적으로 표현하자면 숲에서 벌어지는 난교 파티였다.
“디오니소스는 어디를 가든 여자들을 유혹했어요. 신비한 망상에 사로잡힌 여자들은 디오니소스를 숭배하게 되었죠.
디오니소스는 자신을 숭배하게 된 여자들을 숲으로 데려가 숭배 의식을 치렀습니다.
디오니소스의 난교 파티에 참석한 여인들을 여신도라고 부릅니다. 여신도들은 사티로스들과 더불어 디오니소스를 보좌하는 수행원 역할을 하게 되죠.
디오니소스가 가는 곳이면 어디든지 따라다녔고요.”
-142p~143p
                        </pre>
                    </div>
                        <div class="article_publisher">
                            <h2>출판사 서평</h2>
                            <p>디오니소스 신화와 센 강의 데스마스크 이야기가 결합된 매혹적인 스릴러!</p>
                            <p>이 소설은 그리스의 디오니소스 신화에서 센 강의 데스마스크 이야기로 이어지면서 지금껏 한 번도 경험해보지 못했던 새로운 스타일의 서스펜스를 선보인다. 독자들은 매우 신비롭고 흥미로운 이야기들과 개성 만점의 인물들이 만들어내는 다양한 변주를 통해 매우 독특한 서스펜스를 경험하게 될 것이다. 고대 그리스 신화와 센 강의 데스마스크 이야기를 결합시킨 이번 소설은 기욤 뮈소의 뛰어난 상상력과 또 다른 변신을 보여준다.</p>
                        </div>
                        <div class="author_intro">
                            <h2>저자 소개</h2>
                            <div class="author_intro_container">
                                <img src="/resources/images/ericweiner.jpeg">
                                <div class="author_intro_detail">
                                    <div class="author_intro_detail_header">
                                        <p><b>저자 : 기욤 뮈소</b></p>
                                        <button id="interestAuthor"><i class="fa-solid fa-heart"></i>&nbsp;&nbsp;관심 작가 등록</button>
                                    </div>
                                    <div class="author_class">
                                        <span class="author_class">현대소설가 > 프랑스작가</span>
                                    </div>
                                    <p>1974년 프랑스 앙티브에서 태어나 니스대학에서 경제학을 공부했고, 몽펠리에대학원 경제학과에서 석사 과정을 이수한 후 국제고등학교 교사로 재직하며 집필 활동을 시작했다.</p>
                                    <p id="moreStart">첫 소설 《스키다마링크》에 이어 2004년 두 번째 소설 《그 후에》를 출간하며 프랑스 문단에 일대 센세이션을 불러일으켰고, 《그 후에》부터 《인생은 소설이다》까지 17권의 소설 모두가 프랑스 베스트셀러 1위를 기록했다.</p>
                                    <button id="moreBtn">더보기</button>
                                    <p class="morePhrase">매년 《르 피가로》지와 〈프랑스서점연합회〉에서 조사하는 베스트셀러 작가 순위에서도 8년 연속 1위에 올랐다. 세 번째 소설 《구해줘》는 아마존 프랑스 85주 연속 베스트셀러 1위를 기록했고, 국내에서도 무려 200주 이상 베스트셀러에 등재되었다. 현재 전 세계 45개국 독자들이 그의 소설에 공감과 지지를 보내고 있다. 기욤 뮈소의 소설은 단숨에 심장을 뛰게 만드는 스토리, 한시도 눈을 뗄 수 없는 흡입력, 눈에 보일 듯 생생한 묘사로 독자들을 매료시키고 있다.</p>
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