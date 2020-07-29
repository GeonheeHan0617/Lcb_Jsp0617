<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.all {
	width: 100%;
	margin: 0 auto;
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
	margin-left: 300px;
}

th {
	padding: 10px 20px;
	border: 1px solid #eaeaea;
	background-color: #f7f8f9;
}

td {
	padding: 10px 20px;
	border: 1px solid #eaeaea;
	text-align: center;
}

tr {
	text-align: center;
	padding: 10px 20px;
	border: 1px solid #eaeaea;
}

.active{
	display: none;
}
</style>
</head>

<body>

<%@ include file = "include/header.jsp" %>
<br><br><br>
	<div class="all">
	<h2 class="tit">FAQ</h2>
	<h2 class="tit" font-size=10>자주묻는 질문</h1>
		<table class="tbl_list text_c">
			<colgroup>
				<col style="width: 20%;">
				<col style="width: auto;">
			</colgroup>
			<br>
			<br>
			<thead>
				<tr>
					<th scope="col">구분</th>
					<th scope="col">질문</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td id="row0" headers="thead0">영화관 이용</td>
					<td headers="thead1 row0" class="text_l"><a href="#"
						class="ic_q" title="열림" aria-expanded="true"><strong
							class="txt_qna q"></strong>카드로 결제할 경우 환불은 언제 되나요?</a></td>
				</tr>

				<tr class="acc_body active a1" role="region" id="tr2_150">
					<td colspan="2" headers="thead1 row0"><div class="ic_a">
							<strong class="txt_qna a"><span>답변</span></strong>
							<div>
								■ 환불안내<br>&nbsp;<br>ㆍ 신용카드<br>&nbsp;- 결제 후 3일 이내
								취소시 승인취소 가능합니다.<br>&nbsp;<font color="#ff0000">- 3일
									이후 예매 취소 시 영업일 기준 3일 ~7일 이내 카드사에서 환불됩니다.</font><br>&nbsp;<br>ㆍ
								체크카드<br>&nbsp;- 결제 후 3일 이내 취소 시 당일 카드사에서 환불 처리됩니다.<br>&nbsp;<font
									color="#ff0000">- 3일 이후 예매 취소 시 카드사에 따라 3일 ~ 10일 이내
									카드사에서 환불됩니다.<br>
								</font>&nbsp;<br>ㆍ 휴대폰 결제<br>&nbsp;<font color="#ff0000">-
									결제 일자 기준 당월(1일~말일까지) 취소만 가능합니다.<br>
								</font>&nbsp;- 익월 취소의 경우 롯데시네마 고객센터(1544-8855)로 문의 주시기 바랍니다.<br> <br>ㆍ카카오페이
								간편결제<br>&nbsp;- 카카오페이머니를 사용하신 경우 카카오페이머니 잔액으로 원복됩니다.<br>&nbsp;-
								카드 결제를 한 경우 카드사 정책에 따라 승인취소가 진행되며,<br>&nbsp;&nbsp;&nbsp; 3일
								이후 매입 취소 시 영업일 기준 3~10일 소요됩니다. <br> <br>ㆍ페이코 간편결제<br>&nbsp;
								- PAYCO 쿠폰/포인트를 사용하신 경우 각각의 쿠폰/포인트로 원복됩니다.&nbsp;<br>&nbsp;
								- 카드 결제 금액은 카드사 정책에 따라 승인취소가 진행되며,<br>&nbsp;&nbsp;&nbsp; 3일
								이후 매입취소 시 영업일 기준 3~10일 소요됩니다.
							</div>
						</div></td>
				</tr>

				<tr>
					<td id="row0" headers="thead0">영화관 이용</td>
					<td headers="thead1 row0" class="text_l"><a href="#"
						class="ic_q" title="열림" aria-expanded="true"><strong
							class="txt_qna q"></strong>국가유공자 할인은 어떻게 받나요?</a></td>
				</tr>

				<tr class="acc_body active" role="region" id="tr2_141">
					<td colspan="2" headers="thead1 row0"><div class="ic_a">
							<strong class="txt_qna a"><span>답변</span></strong>
							<div>국가유공자임을 증명할 수 있는 국가유공자증 소지자 본인에 한해 일반(2D) 영화 5천원 관람이
								가능합니다. 국가유공자 할인의 경우, 온라인 예매 시에는 할인 적용이 불가하며 영화관 현장에서 예매할 시에만 할인
								가능합니다. 또한, 국가유공상이자는 장애인석을 이용하실 수 있습니다.</div>
						</div></td>
				</tr>
				<tr>
					<td id="row0" headers="thead0">영화관 이용</td>
					<td headers="thead1 row0" class="text_l"><a href="#"
						class="ic_q" title="열림" aria-expanded="true"><strong
							class="txt_qna q"></strong>SWEET SPOT이 뭔가요?</a></td>
				</tr>

				<tr class="acc_body active" role="region" id="tr2_79">
					<td colspan="2" headers="thead1 row0"><div class="ic_a">
							<strong class="txt_qna a"><span>답변</span></strong>
							<div>
								<p>SWEET SPOT이란, 스크린 가운데에서 상영관 뒤 벽까지 직선 거리의 2/3 지점으로, 롯데시네마가
									추천하는 최적의 화면과 사운드를 즐길 수 있는 좌석입니다.</p>
								<p>
									<font color="#ff0000">별도의 추가 요금은 없습니다.</font>
								</p>
							</div>
						</div></td>
				</tr>
				

				<tr>
					<td id="row0" headers="thead0">영화관 이용</td>
					<td headers="thead1 row0" class="text_l"><a href="#"
						class="ic_q" title="열림" aria-expanded="true"><strong
							class="txt_qna q"><span>질문</span></strong>카드로 결제할 경우 환불은asdasd 언제
							되나요?</a></td>
				</tr>

				<tr class="acc_body active" role="region" id="tr2_78">
					<td colspan="2" headers="thead1 row0"><div class="ic_a">
							<strong class="txt_qna a"><span>답변</span></strong>
							<div>영화관을 이용하시다가 소지물품을 분실하신 경우에는 롯데시네마 통합콜센터 1544-8855로
								연락하시어 확인 하시거나, 롯데시네마 홈페이지 고객센터 - 분실물안내에서 분실물 접수 혹은 확인을 하실 수
								있습니다.</div>
						</div></td>
				</tr>

				<tr>
					<td id="row0" headers="thead0">영화관 이용</td>
					<td headers="thead1 row0" class="text_l"><a href="#"
						class="ic_q" title="열림" aria-expanded="true"><strong
							class="txt_qna q"></strong>단체관람의 경우 할인 혜택이 어떻게 되나요?</a></td>
				</tr>

				<tr class="acc_body active" role="region" id="tr2_77">
					<td colspan="2" headers="thead1 row0"><div class="ic_a">
							<strong class="txt_qna a"><span>답변</span></strong>
							<div>
								<p>단체 관람의 경우, 20명 이상 티켓 구매 시 1인당 1,000원씩 할인 혜택을 받으실 수 있습니다.
								</p>
								<p>단체 관람과 관련하여 문의가 있으실 경우 롯데시네마 통합콜센터 1544-8855로 연락하시거나
									롯데시네마 [홈페이지] → [고객센터] → [단체관람/대관문의]로 내용 접수해주시기 바랍니다.</p>
								<p>
									※ 조조, 심야, 문화의 날, 공휴일, 주말 등 일부는 제외될 수 있습니다.<br>※ 영화관 별로 단체
									관람 대상 인원수 및 할인 혜택에 일부 차이가 있을 수 있습니다.
								</p>
							</div>
						</div></td>
				</tr>

			</tbody>
		</table>
	</div>
	
	<br><br><br>
	<br><br><br>
	<br><br><br>
	<br><br><br>
	
	<script>
	
		var a = document.querySelectorAll(".ic_q");
		a[0].onclick = function(){
			
			var a1 = document.querySelector(".a1");
			a1.style.display = "table-row";
		}
	</script>
	
	<%@ include file = "include/footer.jsp" %>
</body>
</html>