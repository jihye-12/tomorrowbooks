    var i = 1;
    var gridnum = 2;
    $(document).ready(function(){
    	$("#add1").on('click', function(){
    		add();
    	});
    });
    const drawStar = (target) => {
    	console.log(target.id);
    	var lastChar = target.id.charAt(5);
    	document.querySelector(`.star`+lastChar+` span`).style.width = `${target.value * 10}%`;
    }
    
    function add(){
    	if(i < 5){
    		$("#add"+i).hide();
        	i++;
        	gridnum++;
        	
        	var createDiv = "<div align='left' class='temp-box' id='box" + gridnum + "'>";
        	createDiv += "<input type='text' id='register" + i + "' placeholder='등록인 이름'/>";
        	createDiv += "<span class='star" + i + "'>★★★★★<span>★★★★★</span><input type='range' id='range" + i + "'oninput='drawStar(this)' value='1' step='1' min='0' max='10'></span>";
        	createDiv += "<input type='text' id='title" + i + "' placeholder='제목'/>";
        	createDiv += "<textarea id='conetent" + i + "' placeholder='설명'></textarea>";
        	createDiv += "<input type='button' id='add" + i + "' value='책 추가하기' onclick='add()'/>";
        	createDiv += "</div>";
        	
        	$(".main-container").append(createDiv);
    		
    	}
    	

    	// 여기까지 box5
    }