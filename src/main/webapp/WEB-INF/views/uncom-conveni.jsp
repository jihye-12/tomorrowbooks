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
            <a href="/reviewphoto"><i class="fa-solid fa-camera"></i>&nbsp;&nbsp;사진 올리기</a>
        </li>
        <li>
            <a href="/reviewwrite"><i class="fa-solid fa-thumbs-up"></i>&nbsp;&nbsp;리뷰 글쓰기</a>
        </li>
    </ul>


    
    
    <main>
        <section class="article_section">
            <article>
                <div class="article_header">
                    <p>책 소개</p>
                    <h2>불편한데 자꾸만 가고 싶은, 불편한 편의점</h2>
                    <p>김호연 지음 / 나무옆의자 / 2021년 04월 20일 출간</p>
                </div>
                <div class="article_main">
                    <p>서울역에서 노숙인 생활을 하던 독고라는 남자가 어느 날 70대 여성의 지갑을 주워준 인연으로 그녀가 운영하는 편의점에서 야간 알바를 하면서 이야기가 시작된다. 덩치가 곰 같은 이 사내는 알코올성 치매로 과거를 기억하지 못하는 데다 말도 어눌하고 행동도 굼떠 과연 손님을 제대로 상대할 수 있을까 의구심을 갖게 하는데 웬걸, 의외로 그는 일을 꽤 잘해낼 뿐 아니라 주변 사람들을 묘하게 사로잡으면서 편의점의 밤을 지키는 든든한 일꾼이 되어간다.</p>
                    <p>현실감 넘치는 캐릭터와 그들 간의 상호작용을 점입가경으로 형상화하는 데 일가견이 있는 작가의 작품답게 이 소설에서도 독특한 개성과 사연을 지닌 인물들이 차례로 등장해 서로 티격태격하며 별난 관계를 형성해간다. 고등학교에서 역사를 가르치다 정년퇴임하여 매사에 교사 본능이 발동하는 편의점 사장 염 여사를 필두로 20대 취준생 알바 시현, 50대 생계형 알바 오 여사, 매일 밤 야외 테이블에서 참참참(참깨라면, 참치김밥, 참이슬) 세트로 혼술을 하며 하루의 스트레스를 푸는 회사원 경만, 마지막이라는 각오로 청파동에 글을 쓰러 들어온 30대 희곡작가 인경, 호시탐탐 편의점을 팔아치울 기회를 엿보는 염 여사의 아들 민식, 민식의 의뢰를 받아 독고의 뒤를 캐는 사설탐정 곽이 그들이다.</p> 
                    <p>제각기 녹록지 않은 인생의 무게와 현실적 문제를 안고 있는 이들은 각자의 시선으로 독고를 관찰하는데, 그 과정에서 발생하는 오해와 대립, 충돌과 반전, 이해와 공감은 자주 폭소를 자아내고 어느 순간 울컥 눈시울이 붉어지게 한다. 그렇게 골목길의 작은 편의점은 불편하기 짝이 없는 곳이었다가 고단한 삶을 위로하고 웃음을 나누는 특별한 공간이 된다.</p>
                    <div class="article_vedio">
                        <iframe width="800" height="500" src="https://www.youtube.com/embed/fTf-KrprLW4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                    <div class="article_contents">
                        <h2>목 차</h2>
                        <ol>
                            <li>산해진미 도시락</li>
                            <li>제이에스 오브 제이에스</li>
                            <li>삼각김밥의 용도</li>
                            <li>원 플러스 원</li>
                            <li>불편한 편의점에서</li>
                            <li>네 캔에 만원</li>
                            <li>폐기 상품이지만 아직 괜찮아</li>
                            <li>ALWAYS</li>
                            <li>감사의 글</li>
                        </ol>
                    </div>
                    <div class="article_recommendation">
                        <h2>추천사</h2>
                        <p>정여울(『1일 1페이지 세상에서 가장 짧은 심리수업 365』 저자)</p>
                        <p>서울역 홈리스로 지내면서도 자기의 안위보다는 지갑을 잃어버린 낯선 부인의 안부를 걱정하는 독고 씨. 그런 독고를 향해 우정과 치유의 손길을 내미는 편의점 사장 염 여사. 두 사람의 아름다운 우정의 역사는 코로나 사태 이후 고독과 불안을 더욱 예민하게 느끼게 된 우리들에게 눈부신 영감의 씨앗을 심어준다. 모두가 무시하고, 외면하고, 회피하던 홈리스 독고 씨의 변신은 어쩌면 덜 놀라운 사실이다. 독고 씨의 진짜 재능은 많은 사람을 너끈히 구할 수 있는 눈물겹도록 따스한 마음이기에. </p>
                    </div>
                    <div class="into_thebook">
                        <h2>책 속으로</h2>
                        <pre>
“근데 이게 마지막 술이에요. 이거 먹고 술 끊는 조건으로 우리 가게 일 좀 봐줘요.”
독고 씨의 커다란 머리가 갸우뚱거렸다.
“제, 제가……요?”
“독고 씨 할 수 있어요. 곧 날 추워질 텐데 밤에도 따뜻한 편의점에 머물고 돈도 벌고 얼마나 좋아요.”
염 여사는 독고 씨의 눈을 똑바로 응시하며 답을 기다렸다. 독고 씨는 시선을 피한 채 곤란한 듯 광대를 연신 씰룩이다가 작은 눈을 돌려 그녀를 살폈다.
“저한테 왜…… 잘해주세요?”
“독고 씨 하는 만큼이야. 게다가 나 힘들고 무서워 밤에 편의점 못 있겠어요. 그쪽이 일해줘야 해요.”
“나…… 누군지…… 모르잖아요.”
“뭘 몰라. 나 도와주는 사람이죠.”
“나를 나도 모르는데…… 믿을 수 있어요?”
“내가 고등학교 선생으로 정년 채울 때까지 만난 학생만 수만 명이에요. 사람 보는 눈 있어요. 독고 씨는 술만 끊으면 잘할 수 있을 거예요.” (49~50쪽)
                        </pre>
                        <pre>
“그런데 담배 어떻게 그렇게 쉽게 찾았어요?”
“가, 간밤에 담배 손님 많아서…… 후딱 외웠어요. 에쎄는 에쎄원, 에쎄 스페셜 골드, 에쎄 스페셜 골드 1밀리, 에쎄 스페셜 골드 0.5, 에쎄 클래식,
에쎄 수 0.5, 에쎄 수 0.1, 에쎄 골든 리프, 에쎄 골든 리프 1밀리…….”
독고 씨가 마치 구구단 외우듯 담배 종류를 줄줄 내뱉었다. 깜짝 놀란 시현은 한동안 멍하니 있다가 그의 말을 끊었다.
“됐고요, 그걸 하루에 다 외웠다고요?”
“……밤새 할 일도 없고…… 잠도 오고 해서…….”
“혹시 애연가였어요?”
“모, 몰라요.”
“몰라요? 담배 피운 기억이 없어요?”
“피웠는지 안 피웠는지…… 모른다니까요.”
“기억상실증인 거예요?”
“술 때문에…… 머리가…… 갔어요.”
“그럼 과거 언제까지 기억해요?”
“모, 몰라요.”
아오, 씨……. 시현은 대화를 자제하기로 한 아까의 다짐을 또 까먹은 걸 후회했다. 그럼에도 제이에스를 그렇게 퇴치한 건 정말이지 통쾌하지 않을 수 없었다. (70~71쪽)
                        </pre>
                    </div>
                        <div class="article_publisher">
                            <h2>출판사 서평</h2>
                            <p>불편한데 자꾸 가고 싶은 편의점이 있다!</p>
                            <p>힘들게 살아낸 오늘을 위로하는 편의점의 밤 정체불명의 알바로부터 시작된 웃음과 감동의 나비효과 『망원동 브라더스』 김호연의 ‘동네 이야기’ 시즌 2. 청파동 골목에 자리 잡은 작은 편의점 ALWAYS. 어느 날 서울역에서 살던 사내가 야간 알바로 들어오면서 편의점에 변화의 바람이 일기 시작한다!</p>
                        </div>
                        <div class="author_intro">
                            <h2>저자 소개</h2>
                            <div class="author_intro_container">
                                <img src="/resources/images/hoyeon_kim.jpeg">
                                <div class="author_intro_detail">
                                    <div class="author_intro_detail_header">
                                        <p><b>저자 : 김호연</b></p>
                                        <button id="interestAuthor"><i class="fa-solid fa-heart"></i>&nbsp;&nbsp;관심 작가 등록</button>
                                    </div>
                                    <div class="author_class">
                                        <span class="author_class">현대문학가 > 소설가</span>
                                        <span class="author_class">영화인 > 시나리오작가</span>
                                    </div>
                                    <p>영화·만화·소설을 넘나들며 온갖 이야기를 써나가는 전천후 스토리텔러. 1974년 서울생. 고려대학교 인문대학 국어국문학과를 졸업했다.</p>
                                    <p id="moreStart">첫 직장인 영화사에서 공동 작업한 시나리오 「이중간첩」이 영화화되며 시나리오 작가가 되었다. 두 번째 직장인 출판사에서 만화 기획자로 일하며 쓴 「실험인간지대」가 제1회 부천만화스토리 공모전에서 대상을 수상하며 만화 스토리 작가가 되었다. 같은 출판사 소설 편집자로 남의 소설을 만지다가 급기야 전업 작가로 나섰다.</p>
                                    <button id="moreBtn">더보기</button>
                                    <p class="morePhrase">이후 ‘젊은 날 닥치는 대로 글쓰기’를 실천하던 중 장편소설 『망원동 브라더스』로 2013년 제9회 세계문학상 우수상을 수상하며 소설가가 되었다. 장편소설 『망원동 브라더스』(2013), 『연적』(2015), 『고스트라이터즈』(2017), 『파우스터』(2019)와 산문집 『매일 쓰고 다시 쓰고 끝까지 씁니다』(2020)를 펴냈고, 영화 「이중간첩」(2003), 「태양을 쏴라」(2015)의 시나리오와 「남한산성」(2017)의 기획에 참여했다. 2021년 『망원동 브라더스』에 이은 ‘동네 이야기’ 시즌 2 『불편한 편의점』을 출간했다.</p>
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