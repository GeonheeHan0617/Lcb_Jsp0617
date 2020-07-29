<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.all{margin-left: 500px; margin-right:120px;}


body {
 
    
    line-height: 1.5;
    font-size: 15px;
    color: #444;
    font-weight: 400;
    font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
}
* {
    box-sizing: border-box;
}
.tit{
	  padding: 0 0 26px 0;
    font-size: 1.8666em;
    font-weight: 400;
    letter-spacing: -1px;
    line-height: 1.1;
    color : #503396;;
    font-weight: bold; 
    
}
.tit-content{
font-size : 1.6em;}

table {
	
    width: 70%;
    margin: 0;
    border: 0;
    table-layout: fixed;
    border-collapse: collapse;
    empty-cells: show;
    display: table;
    border-collapse: separate;
    box-sizing: border-box;
    border-spacing: 2px;
    -webkit-border-horizontal-spacing: 2px;
    -webkit-border-vertical-spacing: 2px;
    border-color: grey;
  	border-collapse: collapse;
  	
  	
}


th{
	padding: 10px 20px;
	border:1px solid #eaeaea;
	background-color: #f7f8f9;
}

td{
	padding: 10px 20px;
	border:1px solid #eaeaea;
}
tr{	
	padding: 10px 20px;
	border:1px solid #eaeaea;
}

.textarea {
	
    display: inline-block;
    width: 100%;
    height: 200px;
    padding: 10px;
    line-height: 16px;
    color: #333;
    border-radius: 0!important;
    border: 1px solid #d8d9db;
    vertical-align: middle;
    font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
}

.count {
	text-align: right;
}

.uploadBtn{
display: inline-block;
}
.table-wrap mt10{padding:0px 500px;}

.btn-group {
    padding: 20px;
    margin-left: 400px;
   
}
.button.purple {
    color: #fff;
    line-height: 36px;
    border: 0;
    background: #503396;
}
.button.large {
    height: 46px;
    padding: 0 30px;
    line-height: 44px;
}
a.button.purple:active, a.button.purple:focus, a.button.purple:hover, a.button.purple:visited {
    color: #fff;
}
.button.purple:hover {
    background-color: #351f67;
}
a.button:focus {
    outline: 1px dotted #000;
}
.button.purple {
    color: #fff;
    line-height: 36px;
    border: 0;
    background: #503396;
}
.button {
    display: inline-block;
    height: 36px;
    margin: 0;
    padding: 0 15px;
    text-align: center;
    line-height: 34px;
    color: #503396;
    font-weight: 400;
    border-radius: 4px;
    font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
    text-decoration: none;
    border: 1px solid #503396;
    vertical-align: middle;
    background-color: #fff;
    cursor: pointer;
}


</style>
</head>
<body>
<%@ include file = "include/header.jsp" %>
<br><br><Br>
<div class ="all">

<h4 class="tit">1:1 문의</h4>

<li>1:1 문의글 답변 운영시간 09:00 ~ 21:00</li>
<br>	
<div class="table-wrap mt10">
						<table class="board-form va-m" >
							<colgroup>
								<col style="width:150px;">
								<col>
								<col style="width:150px;">
								<col>
							</colgroup>
								<tbody>
									<tr>
										<th scope="row"><label for="place">문의지점</label> <em class="font-orange">*</em></th>
										<td colspan="3">
											<select id="theater" class="small" title="지역선택">
												<option value="">지역선택</option>
												
													<option value="10">서울</option>
												
													<option value="30">경기</option>
												
													<option value="35">인천</option>
												
													<option value="45">대전/충청/세종</option>
												
													<option value="55">부산/대구/경상</option>
												
													<option value="65">광주/전라</option>
												
													<option value="70">강원</option>
												
													<option value="80">제주</option>
												
											</select>
											<select name="brchNo" id="theater02" title="극장선택" class="small ml07">
												
											<option value="">극장선택</option><option value="1372">강남</option><option value="1359">강남대로(씨티)</option><option value="1341">강동</option><option value="1431">군자</option><option value="1003">동대문</option><option value="1572">마곡</option><option value="1581">목동</option><option value="1311">상봉</option><option value="1211">상암월드컵경기장</option><option value="1331">성수</option><option value="1371">센트럴</option><option value="1381">송파파크하비오</option><option value="1202">신촌</option><option value="1221">은평</option><option value="1561">이수</option><option value="1321">창동</option><option value="1351">코엑스</option><option value="1212">홍대</option><option value="1571">화곡</option><option value="1562">ARTNINE</option></select>
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="ID">ID</label> <em class="font-orange">*</em></th>
										<td colspan="3"><input type="text" name="id" id="user_id" class="input-text w150px" value="" maxlength="15"></td>
									</tr>
									<tr>
										<th scope="row"><label for="hpNum1">연락처</label> <em class="font-orange">*</em></th>
										<td>
											
												
												
													<input type="text" name="hpNum1" id="hpNum1" size="3" class="input-text w60px numType" maxlength="3" title="핸드폰번호 첫자리 입력">
													<span>-</span>
													<input type="text" name="hpNum2"size="4" class="input-text w60px numType" maxlength="4" title="핸드폰번호 중간자리 입력">
													<span>-</span>
													<input type="text" name="hpNum3"size="4" class="input-text w60px numType" maxlength="4" title="핸드폰번호 마지막자리 입력">
												
											
										</td>
										<th scope="row"><label for="email">이메일</label> <em class="font-orange">*</em></th>
										<td><input type="text" name="rpstEmail" id="email" class="input-text" value="" autocomplete="new-password" maxlength="50"></td>
									</tr>
									<tr>
										<th scope="row"><label for="title">제목</label> <em class="font-orange">*</em></th>
										<td colspan="3"><input type="text" name="custInqTitle" id="title" class="input-text" maxlength="100"></td>
									</tr>
									<tr>
										<th scope="row"><label for="textarea">내용</label> <em class="font-orange">*</em></th>
										<td colspan="3">
											<div class="textarea">
											<textarea style="resize: none"  id="textarea" name="custInqCn" rows="10" cols="94" title="내용입력" placeholder="※ 불편사항이나 문의사항을 남겨주시면 최대한 신속하게 답변 드리겠습니다." class="input-textarea" style="margin-top: 0px; margin-bottom: 0px;"></textarea>
											<div class="util">
												<p class="count">
													<span id="textareaCnt">0</span> / 2000
												</p>
											</div>
										</div>
										</td>
									</tr>
									<tr>
									<th scope="row">사진첨부</th>
									<td colspan="3">
										<div class="upload-image-box">

											<div class="info-txt">
												<p>* JPEG, PNG 형식의 5M 이하의 파일만 첨부 가능합니다. (최대 5개)</p>

												
												
												<p>* 개인정보가 포함된 이미지 등록은 자제하여 주시기 바랍니다.</p>
												<button type="button" id="uploadBtn" class="btn-image-add"><span>파일선택</span></button>
											</div>

											<div id="imgList"></div>

										</div>
									</td>
								</tr>
									<tr>
										<th scope="row"><label for="pw">비밀번호</label> <em class="font-orange">*</em></th>
										<td colspan="3">
											<input type="number" maxlength="4" name="lstrtclInqPwd" id="pw" class="input-text w150px pwnew" placeholder="숫자 4자리" oninput="gfn_numberMaxLength(this);"> * 문의 글에 대한 고객정보 보호를 위하여 게시글의 비밀번호를 설정해주세요.										</td>
									</tr>
								</tbody>
							</table>
							<div class="btn-group pt40">
						<button type="submit" class="button purple large">등록</button>
					</div>
						</div>
						
					</div>
	
	
</div>
</div>

<br>
<br>
<br>
<%@ include file = "include/footer.jsp" %>
<script>
$(function() {
    $('#textarea').keyup(function (e){
        var textarea = $(this).val();
        $(this).height(((textarea.split('\n').length + 1) * 1.5) + 'em');
        $('#textareaCnt').html(textarea.length + '/300');
    });
    $('#textarea').keyup();
});

</script>
</body>
</html>