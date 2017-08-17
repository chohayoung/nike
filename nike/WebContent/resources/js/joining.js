$(function(){

	var regpass = /^(?=.*[a-zA-Z0-9])((?=.*\W)).{8,12}/;
	var regemail = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	//┌────────────────────┐
	//  아이디 유효성검사 : 08/07     
	//└────────────────────┘
	$('#id').on("keyup",function(){

		   var selUserName = $(this).val();
		   var trans_object = {'id':selUserName}
		   var trans_json = JSON.stringify(trans_object); 
		$.ajax({
			
			url:"http://localhost:8080/nike/member/Checkid",
			type:'POST',
			dataType:'json',
			data:trans_json,
			contentType:'application/json',
			mimeType:'application/json',
			
			beforeSend:function(){
				$('#noti_loginId1').css("display","none");
	        	$('#noti_loginId').css("display","none");
			},
			success:function(Checkidin){
			 
				 var regid = /^.*(?=.{8,12})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
				 var id = $('#id').val();
			     var result = regid.test(id);
				 if(Checkidin == false && result==false){
			        	$('#noti_loginId1').css("display","block");
			        	$('#noti_loginId').css("display","block");
			     }
				 else if(Checkidin == false){
					    $('#noti_loginId1').css("display","block");
				 }
				 else if(result==false){
					    $('#noti_loginId').css("display","block");
				 }
				 else{
			        	$('#noti_loginId1').css("display","none");
			        	$('#noti_loginId').css("display","none");
			     };
				
				
			}
		});
     });
   
    //┌────────────────────┐
	// 패스워드 유효성검사 : 08/07  
	//└────────────────────┘
    $('#pw').keyup(function(){ 
        var pw = $('#pw').val();
        var result = regpass.test(pw);
        if(result == false){
        	$('.pwchk').css("display","block");
         }else{
        	$('.pwchk').css("display","none");
         };
    });
    $('#repw').keyup(function(){ //패스워드 확인
    	var pw = $('#pw').val();
        var pwChk = $('#repw').val();
        if(pw==pwChk){
        	$('.pwchk-error').css("display","none");
        }else{
        	$('.pwchk-error').css("display","block");
        }
    });
    //┌────────────────────┐
	//  이메일 유효성검사 : 08/07     
	//└────────────────────┘
    $('#email').keyup(function(){
    	var email = $('#email').val();
    	var result = regemail.test(email);
        if(result == false){
         	$('#noti_email').css("display","block");
        }else{
         	$('#noti_email').css("display","none");
        };
        });
    
    //┌────────────────────┐
	//  약관 전체선택 : 08/03     
	//└────────────────────┘
    $("[name=checkAll]").click(function(){
    		allCheckFunc( this );
    	});
    $("[name=chk]").each(function(){
    		$(this).click(function(){
    			oneCheckFunc( $(this) );
    		});
    	});

    
    function allCheckFunc(ch) {
    	    alert(ch);
    		$("[name=chk]").prop("checked", $(ch).prop("checked") );
    }
    //┌────────────────────┐
	//  체크박스 선택시 전체선택여부   
	//└────────────────────┘
    function oneCheckFunc(ch){
    	var allObj = $("[name=checkAll]");
    	var objName = $(ch).attr("name");

    	if( $(ch).prop("checked") )
    	{
    		checkBoxLength = $("[name="+ objName +"]").length;
    		checkedLength = $("[name="+ objName +"]:checked").length;

    		if( checkBoxLength == checkedLength ) {
    			allObj.prop("checked", true);
    		} else {
    			allObj.prop("checked", false);
    		}
    	}
    	else
    	{
    		allObj.prop("checked", false);
    	}
    }
    //┌────────────────────┐
	//  필수약관 체크확인 : 08/07  
	//└────────────────────┘
    $('#entry').on("click",function(){
    	if($('#chkTerms').is(":checked")==false){
    		alert("필수 약관에 동의 하셔야합니다.");
    		$('#chkTerms').focus();
    		return false;
    	}else{
    		return true;
    	}
    });
    
}); 