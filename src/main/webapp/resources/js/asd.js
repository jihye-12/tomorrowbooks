


   
    window.onload=function(){
        //이메일
        let email= document.getElementById('email2');
        let select1 = document.getElementById('select1');
        let option1 = document.getElementById('op1');
        let selected = select1.getElementsByTagName("option")[0].getAttribute('selected')
        console.log(selected);
        console.log(""+email.value+"")
       
            email.onblur=
        
         function(){
            let email1=document.getElementById('email1');
            let email2=document.getElementById('email2');
            email.style.border='solid 1px red'
            select1.style.border='solid 1px red'
            
        }
       
        
        email1.onclick=function(){
        const regex = /^[a-z0-9]+$/;
        
       
        if(regex.test(email2.value)&&!(selected=='selected')) {
            
            alert("사용할수있는 이메일 입니다!")
            email1.setAttribute('value','이메일 확인완료')
            email.style.border='solid 1px black'
            select1.style.border='solid 1px black'
        }else{
            alert('이메일형식을 확인하세요')
            email.style.border='solid 1px red'
            select1.style.border='solid 1px red'
           
        }

            }
        
//비밀번호 
        let pass = document.getElementById('pass1');
        let pass2 = document.getElementById('pass2');
        let pass3 = document.getElementById('pass3');
        pass3.onclick=
        
        function(){
           
            if(!(pass.value==pass2.value)){
                alert('비밀번호가 일치하지 않습니다')
                pass.style.border='solid 1px red'
                pass2.style.border='solid 1px red'
            }else if(pass.value.length<8){
                alert('비밀번호는 8자리이상이어야 합니다')
                pass.style.border='solid 1px red'
                pass2.style.border='solid 1px red'
            } 
                else{
                alert('사용가능한 비밀번호입니다')
                pass.style.border='solid 1px black'
                pass2.style.border='solid 1px black'
                pass3.setAttribute('value','비밀번호 확인완료')

                }
            }
 //닉네임        
        let nick=document.getElementById('nick')
        let nick1=document.getElementById('nick1')
        nick1.onclick=function(){
                if(nick.value.length<2||nick.value.length>15){
                    alert("닉네임은 2~15자 입니다")
                    nick.style.border='solid 1px red'
                }else{
                    alert("사용할 수 있는 닉네임입니다")
                    nick.style.border='solid 1px black'
                    nick1.setAttribute('value','닉네임 확인완료')
                }
            } 
            console.log(nick1.value)
            //회원가입하기
            
            let push=document.getElementById('push1')
             push.onclick=
                function(){
                    let email1=document.getElementById('email1');
                    let pass3 = document.getElementById('pass3');
                    let nick1=document.getElementById('nick1')
                    
                    if(!(email1.value=='이메일 확인완료')){
                        alert('이메일을 확인하세요')
                        email.style.border='solid 1px red'
                        select1.style.border='solid 1px red'
                    }else if(!(pass3.value=='비밀번호 확인완료')){
                        alert('비밀번호를 확인하세요')
                        pass.style.border='solid 1px red'
                        pass2.style.border='solid 1px red'
                    }else if(!(nick1.value=='닉네임 확인완료')){
                        alert('닉네임을 확인하세요')
                        nick.style.border='solid 1px red'
                        
                    }else if(!(true)){

                    }
                    else{
                        alert('회원가입이 완료되었습니다')
                        
                        location.href='loginform.html'
                    }
                    
                }
            
            
                
        }
    

            
    

