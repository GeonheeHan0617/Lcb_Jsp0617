<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style>

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
.all{margin-left: 500px; margin-right:120px;}


h2.tit {
    padding: 0 0 26px 0;
    font-size: 1.8666em;
    font-weight: 400;
    letter-spacing: -1px;
    line-height: 1.1;
    color : #503396;;
    font-weight: bold; 
}

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
.table-wrap mt10{padding:0px 500px;}

.btn-group {
    padding: 20px;
    margin-left: 900px;
   
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

.count {
	text-align: right;
}

</style>
</head>
<body>
<%@ include file = "include/header.jsp" %>
<br><br><Br>
<div class= "all">
<h2 class="tit">분실물 문의</h2>
<ul class="dot-list">
					<li>메가박스에서 잃어버린 물건이 있다면 ‘분실물 문의/접수’를 통해 접수해주세요.</li>
					<li>접수하신 글은 비밀글로 등록되어 작성자와 관리자만 확인 가능합니다.</li>
				</ul>
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
										<th scope="row"><label for="place">분실장소</label> <em class="font-orange">*</em></th>
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
										<th scope="row"><label for="name">이름</label> <em class="font-orange">*</em></th>
										<td colspan="3"><input type="text" name="inqurNm" id="name" class="input-text w150px" value="" maxlength="15"></td>
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
												<textarea id="textarea" style="resize: none" name="custInqCn" rows="10" cols="98" title="내용입력" placeholder="※ 분실장소와 분실물에 대한 상세 정보를 작성해주시면 분실물을 찾는데 도움이 됩니다.
	- 관람 영화정보(영화제목, 상영 회차, 상영시간 등) :
	- 극장/좌석/장소 정보 :
	- 분실물 상세정보" class="input-textarea"></textarea>
												<div class="util">
													<p class="count">
														<span id="textareaCnt">0</span> / 2000
													</p>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="pw">비밀번호</label> <em class="font-orange">*</em></th>
										<td colspan="3">
											<input type="number" maxlength="4" name="lstrtclInqPwd" id="pw" class="input-text w150px pwnew" placeholder="숫자 4자리" oninput="gfn_numberMaxLength(this);"> * 분실물에 대한 고객정보 보호를 위하여 게시글의 비밀번호를 설정해주세요.										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="btn-group pt40">
						<button type="submit" class="button purple large">등록</button>
					</div>
					
					<br>
					<br>
					<br>
		<%@ include file = "include/footer.jsp" %>
</body>
</html>