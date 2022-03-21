
$('#text1').text('양서는 처음 읽을 때는 새 친구를 얻은 것 같고, 전에 정독한 책을 다시 읽을 때는 옛 친구를 만나는 것 같다.');
$('#text2').text('책 없는 방은 영혼 없는 육체와 같다');
$('#text3').text('책은 인생의 험준한 바다를 항해하는데 도움이 되게 남들이 마련해 준 나침반이요, 망원경이고 육분의고 도표이다.');
$('#text4').text('약으로 병을 고치듯이 독서로 마음을 다스린다');
$('#text5').text('언제든 괴로운 환상을 위로하고자 한다면 너의 책으로 달려가라. 책은 언제나 변함없는 친절로 너를 대한다.');
$('#text6').text('내가 인생을 안 것은 사람과 접촉했기 때문이 아니라 책과 접촉했었기 때문이다.');
$('#text7').text('책을 사느라 들인 돈은 결코 손해가 아니다. 오히려 훗날에 만 배의 이익을 얻게 될 것이다.');
$('#text8').text('책이란 넓디넓은 시간의 바다를 지나가는 배이다.');
$('#text9').text('인생은 매우 짧고 그 중 조용한 시간은 얼마 안 되므로 그 시간을 가치없는 책을 읽는데 낭비하지 말아야 한다.');



function zoomIn(event) {
    event.target.style.transform = "scale(1.03)";
    event.target.style.zIndex = 1;
    event.target.style.transition = "all 0.5s";
}

function zoomOut(event) {
    event.target.style.transform = "scale(1)";
    event.target.style.zIndex = 0;
    event.target.style.transition = "all 0.5s";
}

function zoomIn2(event) {
    event.target.style.transform = "scale(1.2)";
    event.target.style.zIndex = 1;
    event.target.style.transition = "all 1.3s";
}

function zoomOut2(event) {
    event.target.style.transform = "scale(1)";
    event.target.style.zIndex = 0;
    event.target.style.transition = "all 1s";
}

for (var i = 1; i < 10; i++) {
    document.getElementById("book" + i).setAttribute('onmouseenter', 'zoomIn(event)');
    document.getElementById("book" + i).setAttribute('onmouseleave', 'zoomOut(event)');

    document.getElementById("profile" + i).setAttribute('onmouseenter', 'zoomIn2(event)');
    document.getElementById("profile" + i).setAttribute('onmouseleave', 'zoomOut2(event)');
}

document.getElementById("book1").setAttribute('onclick', "location.href='ihou10.html'");
document.getElementById("book2").setAttribute('onclick', "location.href='ihou11.html'");

for (var i = 3; i < 10; i++) {
    document.getElementById("book" + i).setAttribute('onclick', "location.href='ihou10.html'");
}

for (var i = 1; i < 10; i++) {
    document.getElementById("profile" + i).setAttribute('onclick', "location.href='postlist.html'");
    document.getElementById("id" + i).setAttribute('onclick', "location.href='postlist.html'");
}


