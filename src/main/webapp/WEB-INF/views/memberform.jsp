<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<c:set var="path" value="${pageContext.request.contextPath}" />
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel = "stylesheet" href="/resources/css/memberform.css">
<!--     <script type="text/javascript" src ="/resources/js/asd.js"></script> -->
    <script src="/resources/js/jquery-3.6.0.min.js"></script>
    <script>
       

      
    </script>
</head>
<body>
    <div id = "header">
        <div id ="header_logo">
                <a href="/"><img src="/resources/images/mainlogo.png" alt="Main Logo : Tomorrow Books"></a>
        </div>  
    </div>
    <div id ="container">
        <div id="member">
            <!-- 회원가입 -->
            <h1>회원가입</h1>
        <div id ="logobox">
            <p>SNS계정으로 간편하게 회원가입</p>
            <div id="logo">
                <div class="logo1">
                    <a href="#"><img src="/resources/images/facebook.png" alt="Facebook Logo"></a>
                </div>
                <div class="logo1">
                    <a href="#"><img src="/resources/images/naver.png" alt="Naver Logo"></a>
                </div>
                <div class="logo1">
                    <a href="#"><img src="/resources/images/kakao.png" alt="Kakao Logo"></a>
                </div>

            </div>
        </div> 
        </div>
     	<form action="/insertMember" method="post" id="frm">
        <div id="email">
            <!-- 이메일 form -->
            <h2>이메일</h2>
            <div>
                <input type="text" placeholder="이메일" id="email2" name="email2">
                <span id="aaa">@</span>
                <select name="select1" id="select1" style = "border-radius: 5px;">
                    <option value="naver.com">naver.com</option>
                    <option value="hanmail.net">hanmail.net</option>
                    <option value="daum.net">daum.net</option>
                    <option value="gmail.com">gmail.com</option>
                    <option value="nate.com">nate.com</option>
                </select>
                <input type="hidden" name="email" id="setEmail"/>
<!--                 <input type="button" name="email1" id="email1" value="이메일 중복확인"> -->
            </div>
        </div>
        <br>
        <div id="pass">
            <!-- 비밀번호form -->
            <h2>비밀번호</h2>
            <p class="fon">영문,숫자를 포함한 8자이상의 비밀번호를 입력해주세요.</p>
            <input type="password" placeholder="비밀번호" size="1" id="password"	name="password"><br>
            
<!--             <h2>비밀번호 확인</h2> -->
<!--             <input type="password" placeholder="비밀번호 확인" size="1" id="pass2" > -->
        </div>
        <br>
<!--         <input type="button" value="비밀번호확인" id="pass3"> -->
        <div id="name1">
            <!-- 닉네임form -->
            <h2>닉네임</h2>
            <p class="fon">다른 유저와 겹치지 않는 별명을 입력해주세요.(2~15자)</p>
            <input type="text" placeholder="별명(2~15자)" id="name" name="name">
            
        </div>
        <br>
<!--         <input type="button" id = "nick1" value="닉네임 확인"> -->
<!--    <div id = "agr">
       		<h2>약관동의</h2>
            <div id = "check">
            	<div class=fon2 ><input type="checkbox" checked>전체동의<br></div>
	          	<div class=fon2 ><input type="checkbox" checked>만 14세 이상입니다<span>(필수)</span></div><br>
	            <div class=fon2 ><input type="checkbox" checked><a href="#">이용약관</a><span>(필수)</span></div><br>
	            <div class=fon2 ><input type="checkbox" checked><a href="#">개인정보 수집 및 이용동의</a><span>(필수)</span></div><br>
	           	<div class=fon2 ><input type="checkbox" checked><span class=fon2 >이벤트,프로모션 알림 메일 및 SMS 수신</span><br>
	         	</div>
	    	</div>
		</div> -->
	     	<input type="button" value="회원가입하기" id="insert" ><br>
		</form>
	        <div id="early">
	        	<p>이미 아이디가 있으신가요?<a href="/loginform">로그인</a></p>
	        </div>
	</div>
	<script>
		$(document).ready(function(){
			$('#insert').click(function(){
				//이메일을 조합해서 email  name에 저장한다.

			    if($('#email2').val() == ''){
			    	alert("이메일을 입력해주세요.");
			    	$('#email2').focus();
			    	return false;
			  	}	    
			    
			    if($('#password').val() == ''){
			    	alert("비밀번호를 입력해주세요.");
			    	$('#password').focus();
			    	return false;
			  	}
			    
			    if($('#name').val() == ''){
			    	alert("닉네임을 입력해주세요.");
			    	$('#name').focus();
			  		return false;
			  	}
				
			    var email = $('#email2').val()+"@"+$('#select1').val();
				$('#setEmail').val(email);
				//폼 서브밋을 날린다.
				$('#frm').submit();
			});
		});
	</script>
</body>
</html>