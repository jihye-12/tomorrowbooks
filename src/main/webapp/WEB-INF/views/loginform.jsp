<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/loginform.css">
</head>
<body>
    <div id ="container">
    <div class = "logo">
        <div class="logo_in"><a href="/"><img src="/resources/images/mainlogo.png" alt="Tomorrow Books"></a></div>
    </div>
    <form id="frm" action="/selectLogin" method="post">
        <input type="email" class="login2" placeholder="이메일" name="email" required>
        <input type="password" class="login2" placeholder="비밀번호" name="password" required>
        <div> &nbsp;</div>
        <input type="submit" id ="submit" value = "로그인">
        <div class="flex1">
            <div>비밀번호 재설정</div><div><a href="/memberform">회원가입</a></div> 
        </div>
    </form>
    
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
        <div class = 'pro'>
            <a>로그인 문제가 있으신가요?</a>
        </div>
    </div> 
    
    <div class="nomem">
       <a href="javascript:alert('준비중입니다.');"> 비회원 주문 조회하기</a>
    </div>
</div>
</body>
</html>