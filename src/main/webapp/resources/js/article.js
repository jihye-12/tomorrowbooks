
// 관심작가등록 버튼 토글 이벤트
const interestAuthor = document.querySelector('#interestAuthor');

interestAuthor.addEventListener('click', () => {
    interestAuthor.classList.toggle('active');
});

// 더보기 버튼 토글 이벤트
const moreBtn = document.querySelector('#moreBtn');
const morePhrase = document.querySelector('.morePhrase');

moreBtn.addEventListener('click', () => {
    morePhrase.classList.toggle('active');
    moreBtn.innerHTML == '더보기' ? moreBtn.innerHTML = '접기' : moreBtn.innerHTML = '더보기';
});