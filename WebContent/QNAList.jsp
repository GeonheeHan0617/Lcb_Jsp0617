<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.all {
	margin-left: 200px;
	margin-right: 200px
}

.select {
	text-align: center;
}

h2.tit {
	padding: 0 0 26px 0;
	font-size: 1.8666em;
	font-weight: 300;
	letter-spacing: -1px;
	line-height: 1.1;
	color: #503396;;
	font-weight: bold;
	margin-left: 220px;
}

.searchkey {
	height: 50px;
	line-height: 40px;
	padding: 0 10px;
	border-radius: 4px;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	-ms-border-radius: 4px;
	-o-border-radius: 4px;
	background-color: #fff;
	font-size: 14px;
	box-sizing: border-box;
	border: 1px solid #DDD;
}

.select {
	margin-left: 230px;
	margin-right: 230px;
	position: relative;
	border: 1px solid #DDDDDD;
	border-radius: 4px;
	background: #F8F8F8;
	padding: 20px 60px;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	-ms-border-radius: 4px;
	-o-border-radius: 4px;
	font-size: 0;
}

input {
	color: -internal-light-dark(black, white);
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	display: inline-block;
	text-align: start;
	appearance: textfield;
	background-color: -internal-light-dark(rgb(255, 255, 255),
		rgb(59, 59, 59));
	-webkit-rtl-ordering: logical;
	cursor: text;
	margin: 0em;
	font: 400 13.3333px Arial;
	padding: 1px 2px;
	border-width: 2px;
	border-style: inset;
	border-color: -internal-light-dark(rgb(118, 118, 118),
		rgb(195, 195, 195));
	border-image: initial;
}

.btn_col2 {
	display: inline-block;
	box-sizing: border-box;
	border-radius: 4px;
	border: 1px solid #414141;
	font-size: 14px;
	color: #ffffff !important;
	text-align: center;
	vertical-align: middle;
	background-color: #414141;
	width: 86px;
	height: 50px;
	line-height: 34px;
	vertical-align: middle;
	margin-left: 20px;
	margin-bottom: 9px;
}


table {
	padding-left: 400px
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
  	margin-left: 300px;
  	
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


</style>
</head>

<body>
	   <%@ include file = "include/header.jsp" %>
	   <Br><Br><Br>
	<div class="all">
		<h2 class="tit">분실물안내 검색하기</h2>
		<br>
		<br>
		<div class="select" width="80%">
			<input type="text" class="searchkey" placeholder="검색어를 입력해주세요."
				id="searchKeyword" style="width: 800px;">
			<button type="button" class="btn_col2">검색</button>
		</div>
		<table class="tbl_list text_c" summary="분실물 검색내용에 대한 표입니다">
			<br><br>
			<colgroup>
				<col style="width: 10%;">
				<col style="width: 15%;">
				<col style="width: auto;">
				<col style="width: 15%;">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">작성자</th>
					<th scope="col">제목</th>
					<th scope="col">등록일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>15694</td>
					<td>월드타워</td>
					<td class="text_l"><a id="19291">2020-07-22_월드타워 분실물 습득안내</a><strong
						class="txt_new">NEW</strong></td>
					<td>2020-07-22</td>
				</tr>
				<tr>
					<td>15693</td>
					<td>월드타워</td>
					<td class="text_l"><a id="19290">2020-07-21_월드타워 분실물 습득안내</a><strong
						class="txt_new">NEW</strong></td>
					<td>2020-07-21</td>
				</tr>
				<tr>
					<td>15692</td>
					<td>월드타워</td>
					<td class="text_l"><a id="19289">2020-07-20_월드타워 분실물 습득안내</a><strong
						class="txt_new">NEW</strong></td>
					<td>2020-07-21</td>
				</tr>
				<tr>
					<td>15691</td>
					<td>월드타워</td>
					<td class="text_l"><a id="19288">2020-07-19_월드타워 분실물 습득안내</a><strong
						class="txt_new">NEW</strong></td>
					<td>2020-07-20</td>
				</tr>
				<tr>
					<td>15690</td>
					<td>월드타워</td>
					<td class="text_l"><a id="19285">2020-07-17_월드타워 분실물 습득안내</a><strong
						class="txt_new">NEW</strong></td>
					<td>2020-07-18</td>
				</tr>
				<tr>
					<td>15689</td>
					<td>동해</td>
					<td class="text_l"><a id="19283">2020-07-17_동해 분실물 습득안내</a><strong
						class="txt_new">NEW</strong></td>
					<td>2020-07-17</td>
				</tr>
				<tr>
					<td>15688</td>
					<td>월드타워</td>
					<td class="text_l"><a id="19282">2020-07-16_월드타워 분실물 습득안내</a></td>
					<td>2020-07-16</td>
				</tr>
				<tr>
					<td>15687</td>
					<td>월드타워</td>
					<td class="text_l"><a id="19281">2020-07-15_월드타워 분실물 습득안내</a></td>
					<td>2020-07-16</td>
				</tr>
				<tr>
					<td>15686</td>
					<td>월드타워</td>
					<td class="text_l"><a id="19280">2020-07-14_월드타워 분실물 습득안내</a></td>
					<td>2020-07-14</td>
				</tr>
				<tr>
					<td>15685</td>
					<td>동해</td>
					<td class="text_l"><a id="19279">2020-07-14_동해 분실물 습득안내</a></td>
					<td>2020-07-14</td>
				</tr>
			</tbody>
		</table>
	</div>
	<br><br><br><br><br>
	<%@ include file = "include/footer.jsp" %>
</body>
</html>