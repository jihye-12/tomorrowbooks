
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

document.getElementById("book1").setAttribute('onclick', "location.href='/ihou10'");
document.getElementById("book2").setAttribute('onclick', "location.href='/ihou11'");

for (var i = 3; i < 10; i++) {
    document.getElementById("book" + i).setAttribute('onclick', "location.href='/ihou10'");
}

for (var i = 1; i < 10; i++) {
    document.getElementById("profile" + i).setAttribute('onclick', "location.href='/postlist'");
    document.getElementById("id" + i).setAttribute('onclick', "location.href='/postlist'");
}


