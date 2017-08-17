   $(function(){
    	//로그인 데이터-----------------------------------------
    	$("#btnLogin").on("click",function(){
            // 태그.val() : 태그에 입력된 값
            // 태그.val("값") : 태그의 값을 변경 
            var userId = $("#userId").val();
            var userPw = $("#userPw").val();
            if(userId == ""){
                alert("아이디를 입력하세요.");
                $("#userId").focus(); // 입력포커스 이동
                return; // 함수 종료
            }
            if(userPw == ""){
                alert("아이디를 입력하세요.");
                $("#userPw").focus();
                return;
            }
            // 폼 내부의 데이터를 전송할 주소
            document.form1.action="/nike/member/loginCheck.do";
            // 제출
            document.form1.submit();
        });
    });
   
   
