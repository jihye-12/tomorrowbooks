
// 글쓰기 토글 이벤트
const writingBtn = document.querySelector('#writing_btn');
const editToggle = document.querySelector('.edit_toggle');

writingBtn.addEventListener('click', () => {
    editToggle.classList.toggle('active');
});

//메인 그림 보러가기 배경색 변경 이벤트
const mainImg = document.querySelector('.main_img');
const seeingBtn = document.querySelector('.img_caption button');

mainImg.addEventListener('mouseover', () => {
    seeingBtn.style.backgroundColor = 'rgb(0, 255, 255)';
});

mainImg.addEventListener('mouseleave', () => {
    seeingBtn.style.backgroundColor = '';
});

//메인 이미지 새로고침마다 바뀌는 이벤트
const mainimg_cation = document.getElementById('mainimg_caption');
const imglink = document.getElementById('imglink');
let number = parseInt(Math.random() * 5);
mainImg.classList.add('bg0'+number);

if(number == 0) { //추후 백엔드에서 쿼리로 가져오기 편하게 만들어 보았습니다.
    imglink.setAttribute('href', '/uncom-conveni');
    mainimg_cation.textContent = '불편한데 자꾸 가고 싶은 편의점이 있다!';
} else if(number == 1) {
    imglink.setAttribute('href', '/dalergoot');
    mainimg_cation.textContent = '잠들어야만 입장 가능한 꿈 백화점';
} else if(number == 2) {
    imglink.setAttribute('href', '/laSeine');
    mainimg_cation.textContent = '사망한 여인이 센 강에서 발견되었다.';
} else if(number == 3) {
    imglink.setAttribute('href', '/midnightlibrary');
    mainimg_cation.textContent = '죽기 바로 전에만 열리는 마법의 도서관';
} else {
    imglink.setAttribute('href', '/socrates');
    mainimg_cation.textContent = '질문을 품고 떠나는 철학 기차 여행';
}

//랭킹 차트 시간지날 때마다 굵기 변화 
let listnumber = 2; //1번은 스타일 고정 CSS 참고
function interval(){
    let recoverchart = document.querySelector('.ranking li:nth-child(' + (listnumber - 1) + ')');
    if(listnumber>10) {
        listnumber = listnumber % 10;
    }
    let boldchart = document.querySelector('.ranking li:nth-child(' + listnumber + ')');
    boldchart.style.fontWeight = 800;
    listnumber++;
    recoverchart.style.fontWeight = 'inherit';
}

let timer = setInterval( interval, 2000 ); //자동호출

const rankingContainer = document.querySelector('.ranking_container');
const listAll = document.querySelectorAll('.ranking_list');
rankingContainer.addEventListener('mouseenter', () => {
    clearInterval( timer ); // 마우스 엔터시 일시중지
    listAll.forEach( ( list ) => { //마우스 엔터시 모든 리스트 굵기 초기화
        list.style.fontWeight = 'normal';
    });
});

rankingContainer.addEventListener('mouseleave', () => {
    timer = setInterval( interval, 2000 ); //마우스 리브시 재호출 (일시정지)
});

listAll.forEach( (list) => {
    list.addEventListener('mouseover', () => {
        list.style.fontWeight = 800;
    })

    list.addEventListener('mouseleave', () => {
        list.style.fontWeight = 'normal';
    })
});

//현재 시간 구하기 (랭킹차트 하단 기준 시간)
let time = new Date();
const now = document.getElementById('now');
now.textContent = time.toLocaleDateString() + " " + time.toLocaleTimeString();

