/**
 * 
 */

$(function(){
	$("#Red").on("click",function(){
        if($("#Red").is(":checked")==true){
		$("#Red").is(":checked",true).css("color","Yellow");
        }
	});
});