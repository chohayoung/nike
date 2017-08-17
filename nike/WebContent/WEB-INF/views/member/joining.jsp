<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%@ include file="topmember.jsp" %>
<!DOCTYPE html>
<html lang="en">

<div class="gb-join-wrap">
<form method="post" id="membForm" name="membForm" action="${path}/nike/member/complete">
<!--  회원기본정보 -->

	<div id="ctWrap">
	<div class="join-form full">
	<h2 class="page_title">회원 가입</h2>
		<dl>
			<dt>아이디</dt>
			<dd>
				<div class="place_input">
					<label for="loginId" class="gb_login_label"></label>
					<input type="text" id="id" name="id" placeholder="영문+숫자 조합 8~12자리 이내" maxlength="12" />
				</div>
				
			
				<p class="inp-error1" id="noti_loginId1" style="display:none">최근 탈퇴한 회원이거나 이미 존재하는 아이디입니다.</p>
			    <p class="inp-error" id="noti_loginId" style="display:none">아이디는 영문+숫자 조합 8~12자리 이내로 입력해 주세요.</p>

			</dd>

			<dt>패스워드</dt>
			<dd>
				<div class="place_input">
					<label for="password" class="gb_login_label"></label>
					<input type="password" id="pw" name="pw" placeholder="영문+숫자+특수문자 조합 8~12자리 이내" maxlength="12"/>
				</div>
				<p class="inp-error pwchk" id="noti_password">패스워드는 영문+숫자+특수문자 조합 8~12자리 이내로 입력해 주세요.</p>
			</dd>
			<dt>패스워드 확인</dt>
			<dd>
				<div class="place_input">
					<label for="repw" class="gb_login_label"></label>
					<input type="password" id="repw" name="repw" placeholder="위에 패스워드를 다시 입력해 주세요." maxlength="12" />
				</div>
				<p class="inp-error pwchk-error" id="noti_repwd">입력한 패스워드와 일치하지 않습니다.</p>
			</dd>

			<dt>이름</dt>
			<dd>
				<div class="place_input">
					<label for="memberName" class="gb_login_label"></label>
					<input type="text" id="name" name="name" placeholder="이름을 입력해 주세요." maxlength="10" />
				</div>
			</dd>
			
			<dt>휴대폰</dt>
			<dd>
				<div class="place_input">
					<label for="cellPhone" class="gb_login_label"></label>
					<input type="tel" id="tel" name="tel" pattern="^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$" placeholder="'-'없이 입력해주세요." maxlength="11" />
				</div>
				<p class="inp-error" id="noti_cellPhone">휴대폰 번호를 정확히 입력해 주세요.</p>
			</dd>

			<dt>E-mail</dt>
			<dd>
				<div class="place_input">
					<label for="email1Address" class="gb_login_label" id=""></label>
					<input type="email" id="email" name="email" placeholder="E-mail을 입력해 주세요.    example@nike.com" maxlength="100" />
				</div>
		 	<p class="inp-error" id="noti_email">E-mail 형식이 올바르지 않습니다.</p> 
			</dd>
           
            <dt>주소</dt>
			<dd>
				<div class="place_input">
					<label for="address" class="gb_login_label" id=""></label>
					<input type="text" id="address" name="address" value="" placeholder="주소를 입력해 주세요." maxlength="100" />
				</div>
			</dd>
		</dl>
	</div>
    </div>
	<div class="private-period">
		<p class="title">개인정보 보관 기간</p>
		<div class="pp-comment">
			<ul>
				<li>정보통신망 이용촉진 및 정보 보호 등에 관한 법률 제29조 제2항에 따라 설정된 개인정보 보관 기간 동안<br/>나이키 사용 이력이 없는 경우 휴면 계정으로 되며, 계정의 개인 정보는 안전하게 분리 보관 처리됩니다.</li><br>
				<li>▼</li>
				<li>개인정보 보관 기간 설정은 회원정보관리에서 수정 가능합니다.</li>
				<li>사용이력이 없어 휴면이 된 경우 활성화 요청에 의해 가능합니다.</li>
			</ul>
		</div>
		<ul class="btn-area">
			<li>
					<input type="radio" id="year01" name="year" value="365" checked="checked" />
					<label class="btn_type" for="year01">1년 보관</label>
			</li>
			<li>
					<input type="radio" id="year03" name="year" value="1095" />
					<label class="btn_type" for="year03">3년 보관</label>
			</li>
			<li>
					<input type="radio" id="year00" name="year" value="9999" />
					<label class="btn_type" for="year00">영구 보관</label>
			</li>
		</ul>
	</div>
	<div class="terms-agree" id="terms_agree">
		<p class="title-chk-all">
			<input type="checkbox" title="��ü ����" id="checkAll" name="checkAll" value="��ü ����" onclick="allCheckFunc(this)" />
			<label for="chkAllAgree"><strong>전체동의</strong> &nbsp; (본인은 <strong>만 14세 이상</strong> 이며, NIKE.COM 전체 약관 및 마케팅 정보 수신에 <strong>동의합니다.</strong>)</label>
		</p>
		<ul>
			<li class="necessary">
				<input type="checkbox" id="chkTerms" name="chk"/>
				<label for="chkTerms">
					<span>필수</span>
					<em>
						<a href="#" target="_blank">서비스 이용약관</a>,
						<a href="#" target="_blank">개인정보보호를 위한 이용자</a>, 
						<a href="#" target="_blank">개인정보보안 국외 이전</a>
					</em>
				</label>
			</li>
			<li>
				<input type="checkbox" id="chkChoiceAgreeYn" name="chk"/>
				<label for="chkChoiceAgreeYn">
					<span>선택</span>
					<em><a href="#" target="_blank">개인 정보 취급 업무의 위탁</a></em>
				</label>
			</li>
			<li class="_2d">
				<div class="_2d_box">
					<input type="checkbox" id="chkEmail" name="chk">
					<label for="chkEmail">
						<span>선택</span>
						<em>쇼핑 정보 이메일 수신 동의</em>
					</label>
				</div>
				<div class="_2d_box">
					<input type="checkbox" id="chkSms" name="chk"/>
					<label for="chkSms">
						<span>선택</span>
						<em>쇼핑 정보 모바일 수신 동의</em>
					</label>
				</div>
			</li>
			<li class="_2_last">&#91;신상품, 프로모션 정보를 받아보세요! 상품구매 관련 내용은 수신동의 여부와 관계없이 발송됩니다.&#93;</li>
		</ul>
		<p class="termsAgree-comment" id="noti_agree" style="display:none;">NIKE의 이용약관과 개인정보 수집 및 이용에 대한 내용에 <br>동의하셔야 회원가입이 가능합니다.</p>
	</div>

	<div class="gb-btn-area">
	    <input type="submit" value="가입하기" class="btn" id="entry">
		<input type="reset" value="취소하기" class="btn">
	</div>
</form>
</div>
<%@ include file="footermember.jsp" %>

