<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/megabox.min.css">
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
</head>
<body class="body-iframe">
<%@ include file = "include/header.jsp" %>
<br><br><br>
    <input type="hidden" id="playSchdlNo" name="playSchdlNo" value="2007231372020">
    <input type="hidden" id="brchNo" name="brchNo" value="1372">
    <section id="layer_age_alert" class="modal-layer" style="z-index: 900"><a href="" class="focus">레이어로 포커스 이동 됨</a>
        <div class="wrap" style="width: 500px; height: 350px; margin-left: -250px; margin-top: 0px; top: 140px;">
            <header class="layer-header">
                <h3 class="tit">알림</h3>
            </header>
            <div class="layer-con">
                <div class="alert-age-layer age15">
                    <div class="age-box age-15">
                        <div class="left">
                            <p class="circle">15</p>
                        </div>
                        <div class="right">
                            <p class="tit">15세이상관람가</p>
                            <p class="txt">
                            <p>[15세 이상 관람가]<br><br>만 15 세 미만의 고객님은(영,유아 포함) 반드시 부모님 또는<br> 성인 보호자의 동반하에 관람이 가능합니다.<br>연령
                                확인 불가 시 입장이 제한될 수 있습니다.</p>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="btn-group-fixed">
                <button type="button" class="button purple close-layer">확인</button>
            </div>
            <button type="button" class="btn-modal-close">레이어 닫기</button>
        </div>
    </section>
    <div class="inner-wrap" style="padding-top:40px; padding-bottom:100px;">
        <div class="quick-reserve">
            <h2 class="tit">빠른예매</h2>
            <!-- cti 일때만 출력 -->







            <script type="text/javascript">
                var requestPayAt = "N";             
                

                $(function () {
                    //RIA의 경우
                    if (parent.sellChnlCd != "") {
                        $('.inner-wrap')
                            .css('padding-bottom', '')
                            .css('padding-top', '');	//하단 상단 공백 제거
                        //         $('#btnLangChg').hide();    //언어전환 버튼숨김

                        //로그인 되었으면
                        if (parent.riaLoginAt == "Y") {
                            $('.cti-area input[name=riaName]').attr('value', parent.riaParamName);	//고객명
                            $('.cti-area input[name=riaMobileNo]').attr('value', parent.riaParamMobileNo);	//고객전화번호
                            $('.cti-area input[name=riaBirthday]').attr('value', parent.riaParamBirthday);	//고객생년월일
                            $('.cti-area input[name=riaMemberYn]').attr('value', parent.riaMemberYn == "Y" ? "회원" : "비회원");	//회원여부

                            $('.cti-area input[name=riaName]').attr("readonly", true);		//고객명
                            $('.cti-area input[name=riaMobileNo]').attr("readonly", true);	//고객전화번호
                            $('.cti-area input[name=riaBirthday]').attr("readonly", true);	//고객생년월일

                            $('.cti-area input[name=riaMemberYn]').attr("readonly", true);	//회원여부

                            $('.cti-area button').attr('login-at', "Y");

                            //결제화면이 아니면
                            if ("N" == requestPayAt) {
                                $('.cti-area button').html('재인증');
                            }
                        }
                        //로그인 되지 않았으면
                        else {
                            $('.cti-area input[name=riaName]').attr('value', parent.riaParamName);	//고객명
                            $('.cti-area input[name=riaMobileNo]').attr('value', parent.riaParamMobileNo);	//고객전화번호
                            $('.cti-area input[name=riaBirthday]').attr('value', parent.riaParamBirthday);	//고객생년월일
                            $('.cti-area input[name=riaMemberYn]').attr('value', '');	//회원여부

                            $('.cti-area input[name=riaName]').attr("readonly", false);		//고객명
                            $('.cti-area input[name=riaMobileNo]').attr("readonly", false);	//고객전화번호
                            $('.cti-area input[name=riaBirthday]').attr("readonly", false);	//고객생년월일

                            $('.cti-area input[name=riaMemberYn]').attr("readonly", true);	//회원여부

                            $('.cti-area button').attr('login-at', "N");	//회원여부
                            //결제화면이 아니면
                            if ("N" == requestPayAt) {
                                $('.cti-area button').html('인증요청');
                            }
                        }

                        //드림센터의 경우
                        if (parent.sellChnlCd == "TELLER") {
                            $('.cti-area').show();	//cti 로그인창 표시
                        }
                        else {
                            $('.cti-area').hide();	//cti 로그인창 표시
                        }


                        //회원정보 확인을 위한 초기 파라메타 셋팅

                        //파라메타 셋팅후
                        //회원여부확인				부모창
                        //나머지 화면 disable 처리	부모창

                    }
                    else {
                        $('.quick-reserve-ad-area').show();	//광고영역 표시
                        //         $('#btnLangChg').show();	//언어전환 버튼표시 사용안함 20200106 김민영
                    }

                    /* RIA 재인증 버튼 클릭 */
                    $('.cti-area button').on("click", function () {

                        //입력값 검증
                        if ($('.cti-area button').attr('login-at') == "N") {

                            // 			if($(".cti-area input[name=riaName]").val().length == 0){
                            // 				gfn_alertMsgBoxSize('이름은  필수 입력 항목 입니다.',400,250);	//{0} 필수 입력 항목 입니다.
                            // 				return;
                            // 			}

                            if (!fn_validateDateYn($(".cti-area input[name=riaBirthday]").val())) {
                                gfn_alertMsgBoxSize('생년월일을 정확히 입력해주세요.', 400, 250);	//생년월일을 정확히 입력해주세요.
                                return;
                            }

                            if ($(".cti-area input[name=riaMobileNo]").val().length < 10) {
                                gfn_alertMsgBoxSize('휴대폰번호를 정확히 입력해주세요.', 400, 250);	//휴대폰번호를 정확히 입력해주세요.
                                return;
                            }

                            if ($(".cti-area input[name=riaMobileNo]").val().substr(0, 2) != "01") {
                                gfn_alertMsgBoxSize('휴대폰번호를 정확히 입력해주세요.', 400, 250);	//휴대폰번호를 정확히 입력해주세요.
                                return;
                            }
                        }
                        parent.fn_setRiaLoginToggle([$('.cti-area button').attr('login-at')
                            , $(".cti-area input[name=riaName]").val()
                            , $(".cti-area input[name=riaBirthday]").val()
                            , $(".cti-area input[name=riaMobileNo]").val()]
                        );
                    });


                    /* 이름 숫자를 제외한 입력 여부판단 */
                    $(".cti-area input[name=riaName]").on("keyup", function (e) {
                        var partton = /[^ㄱ-힣a-zA-Z]/g;
                        if (partton.test($(this).val())) {
                            var value = $(this).val().replace(/[^ㄱ-힣a-zA-Z]/g, "");
                            $(this).val(value);
                        }
                    });
                    $(".cti-area input[name=riaName]").focusout(function () {
                        var partton = /[^ㄱ-힣a-zA-Z]/g;
                        if (partton.test($(this).val())) {
                            var value = $(this).val().replace(/[^ㄱ-힣a-zA-Z]/g, "");
                            $(this).val(value);
                        }
                    });

                    /* 생년월일 숫자만 입력 여부판단 */
                    $(".cti-area input[name=riaBirthday]").on("keyup", function (e) {
                        $(this).val($(this).val().replace(/[^0-9]/g, ""));
                    });
                    $(".cti-area input[name=riaBirthday]").focusout(function () {
                        $(this).val($(this).val().replace(/[^0-9]/g, ""));
                    });

                    /* 휴대폰번호 숫자만 입력 여부판단 */
                    $(".cti-area input[name=riaMobileNo]").on("keyup", function (e) {
                        $(this).val($(this).val().replace(/[^0-9]/g, ""));
                    });
                    $(".cti-area input[name=riaMobileNo]").focusout(function () {
                        $(this).val($(this).val().replace(/[^0-9]/g, ""));
                    });
                });


                /*날짜 형태 확인*/
                function fn_validateDateYn(param) {
                    try {
                        var yearFront = "";
                        var year = "";
                        var month = "";
                        var day = "";

                        param = param.replace(/-/g, '');

                        // 자리수가 맞지않을때
                        if (isNaN(param) || param.length < 6 || param.length == 7) {
                            return false;
                        }

                        if (param.length == 6) {
                            year = Number(param.substring(0, 2));
                            month = Number(param.substring(2, 4));
                            day = Number(param.substring(4, 6));
                        }
                        else if (param.length == 8) {
                            var date = new Date();
                            yearFront = Number(param.substring(0, 4));
                            year = Number(param.substring(2, 4));
                            month = Number(param.substring(4, 6));
                            day = Number(param.substring(6, 8));

                            if (yearFront > date.getFullYear()) {
                                return false;
                            }
                        }
                        var dd = day / 0;

                        if (month < 1 || month > 12) {
                            return false;
                        }

                        var maxDaysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
                        var maxDay = maxDaysInMonth[month - 1];

                        // 윤년 체크
                        if (month == 2 && (year % 4 == 0 && year % 100 != 0 || year % 400 == 0)) {
                            maxDay = 29;
                        }

                        if (day <= 0 || day > maxDay) {
                            return false;
                        }
                        return true;

                    } catch (err) {
                        return false;
                    }
                }

            </script>
            <!-- cti 일때만 출력 -->
            <div class="cti-area" style="display:none">
                <p>이름</p>
                <input maxlength="20" name="riaName" type="text" title="이름 출력" class="input-text a-c w120px"
                    placeholder="이름" value="">

                <p>생년월일</p>
                <input maxlength="8" name="riaBirthday" type="text" title="생년월일 출력" class="input-text a-c w150px"
                    placeholder="6자리 또는 8자리" value="">

                <p>휴대폰번호</p>
                <input maxlength="11" name="riaMobileNo" type="text" title="휴대폰번호 출력" class="input-text a-c w150px"
                    placeholder="- 없이 입력" value="">

                <p>회원</p>
                <input name="riaMemberYn" type="text" title="회원여부 출력" class="input-text a-c w100px" value=""
                    readyonly="readyonly">


                <button type="button" class="button gray ml10" login-at="N"></button>

            </div>
            <div class="seat-select-section">
                <div class="seat-section">
                    <div class="tit-util">
                        <h3 class="tit small"> 관람인원선택<span class="sub">(최대 8매 선택가능)</span>
                        </h3>
                        <div class="right">
                            <button type="button" class="button gray-line small" id="seatMemberCntInit"> <i
                                    class="iconset ico-reset-small"></i>초기화</button>
                        </div>
                    </div>
                    <div class="seat-area">
                        <div class="seat-count" style="min-height: 52px">
                            <div class="cell">
                                <p class="txt">성인</p>
                                <div class="count"><button type="button" class="down" title="성인 좌석 선택 감소">-</button>
                                    <div class="number"><button type="button" class="now" title="성인 현재 좌석 선택 수"
                                            ticketgrpcd="TKA">0</button>
                                        <ul class="num-choice">
                                            <li><button type="button" class="btn on">0</button></li>
                                            <li><button type="button" class="btn">1</button></li>
                                            <li><button type="button" class="btn">2</button></li>
                                            <li><button type="button" class="btn">3</button></li>
                                            <li><button type="button" class="btn">4</button></li>
                                            <li><button type="button" class="btn">5</button></li>
                                            <li><button type="button" class="btn">6</button></li>
                                            <li><button type="button" class="btn">7</button></li>
                                            <li><button type="button" class="btn">8</button></li>
                                        </ul>
                                    </div><button type="button" class="up" title="성인 좌석 선택 증가">+</button>
                                </div>
                            </div>
                            <div class="cell">
                                <p class="txt">청소년</p>
                                <div class="count"><button type="button" class="down" title="청소년 좌석 선택 감소">-</button>
                                    <div class="number"><button type="button" class="now" title="청소년 현재 좌석 선택 수"
                                            ticketgrpcd="TKY">0</button>
                                        <ul class="num-choice">
                                            <li><button type="button" class="btn on">0</button></li>
                                            <li><button type="button" class="btn">1</button></li>
                                            <li><button type="button" class="btn">2</button></li>
                                            <li><button type="button" class="btn">3</button></li>
                                            <li><button type="button" class="btn">4</button></li>
                                            <li><button type="button" class="btn">5</button></li>
                                            <li><button type="button" class="btn">6</button></li>
                                            <li><button type="button" class="btn">7</button></li>
                                            <li><button type="button" class="btn">8</button></li>
                                        </ul>
                                    </div><button type="button" class="up" title="청소년 좌석 선택 증가">+</button>
                                </div>
                            </div>
                            <div class="cell">
                                <p class="txt">우대</p>
                                <div class="count"><button type="button" class="down" title="우대 좌석 선택 감소">-</button>
                                    <div class="number"><button type="button" class="now" title="우대 현재 좌석 선택 수"
                                            ticketgrpcd="TKS">0</button>
                                        <ul class="num-choice">
                                            <li><button type="button" class="btn on">0</button></li>
                                            <li><button type="button" class="btn">1</button></li>
                                            <li><button type="button" class="btn">2</button></li>
                                            <li><button type="button" class="btn">3</button></li>
                                            <li><button type="button" class="btn">4</button></li>
                                            <li><button type="button" class="btn">5</button></li>
                                            <li><button type="button" class="btn">6</button></li>
                                            <li><button type="button" class="btn">7</button></li>
                                            <li><button type="button" class="btn">8</button></li>
                                        </ul>
                                    </div><button type="button" class="up" title="우대 좌석 선택 증가">+</button>
                                </div>
                            </div>
                        </div>
                        <div class="seat-layout">
                            <div class="alert" style="display: none;"></div>
                            <div class="seat-count-before off" style="top: 0px">관람인원을 선택하십시요</div>
                            <div class="scroll m-scroll mCustomScrollbar _mCS_1 mCS_no_scrollbar">
                                <div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
                                    style="max-height: none;" tabindex="0">
                                    <div id="mCSB_1_container" class="mCSB_container mCS_no_scrollbar_y"
                                        style="position: relative; top: 0px; left: 0px; height: 210px;" dir="ltr">
                                        <div id="seatLayout" style="width: 100%; height: 210px;">
                                            <img src="img/img-theater-screen.png" alt="screen"
                                                style="position: absolute; left: 62px; top: 10px;"
                                                class="mCS_img_loaded">
                                            <div class'row'=""> <button type="button" class="btn-seat-row" title="A 행"
                                                    style="position:absolute; left:206px; top:52px;">A</button><button
                                                    type="button" title="A1 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:251px; top:50px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100101"
                                                    rownm="A" seatno="1" seatchoidircval="1" seatchoigrpno="2"
                                                    seatchoigrpnm="A2" seatchoirowcnt="6" seatchoigrpseq="1"
                                                    seattocnt="1"><span class="num">1</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="A2 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:271px; top:50px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100201"
                                                    rownm="A" seatno="2" seatchoidircval="1" seatchoigrpno="2"
                                                    seatchoigrpnm="A2" seatchoirowcnt="6" seatchoigrpseq="2"
                                                    seattocnt="1"><span class="num">2</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="A3 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:291px; top:50px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100301"
                                                    rownm="A" seatno="3" seatchoidircval="1" seatchoigrpno="2"
                                                    seatchoigrpnm="A2" seatchoirowcnt="6" seatchoigrpseq="3"
                                                    seattocnt="1"><span class="num">3</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="A4 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard finish pos"
                                                    style="position:absolute; left:311px; top:50px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100401"
                                                    rownm="A" seatno="4" seatchoidircval="1" seatchoigrpno="2"
                                                    seatchoigrpnm="A2" seatchoirowcnt="6" seatchoigrpseq="4"
                                                    seattocnt="1"><span class="num">4</span><span
                                                        class="kind">스탠다드</span><span class="condition">선택불가</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="A5 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:331px; top:50px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100501"
                                                    rownm="A" seatno="5" seatchoidircval="1" seatchoigrpno="2"
                                                    seatchoigrpnm="A2" seatchoirowcnt="6" seatchoigrpseq="5"
                                                    seattocnt="1"><span class="num">5</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="A6 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:351px; top:50px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100601"
                                                    rownm="A" seatno="6" seatchoidircval="1" seatchoigrpno="2"
                                                    seatchoigrpnm="A2" seatchoirowcnt="6" seatchoigrpseq="6"
                                                    seattocnt="1"><span class="num">6</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="A7 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:391px; top:50px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100801"
                                                    rownm="A" seatno="7" seatchoidircval="0" seatchoigrpno="3"
                                                    seatchoigrpnm="A3" seatchoirowcnt="5" seatchoigrpseq="1"
                                                    seattocnt="1"><span class="num">7</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="A8 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:411px; top:50px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100901"
                                                    rownm="A" seatno="8" seatchoidircval="0" seatchoigrpno="3"
                                                    seatchoigrpnm="A3" seatchoirowcnt="5" seatchoigrpseq="2"
                                                    seattocnt="1"><span class="num">8</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="A9 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:431px; top:50px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00101001"
                                                    rownm="A" seatno="9" seatchoidircval="0" seatchoigrpno="3"
                                                    seatchoigrpnm="A3" seatchoirowcnt="5" seatchoigrpseq="3"
                                                    seattocnt="1"><span class="num">9</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="A10 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard finish pos"
                                                    style="position:absolute; left:451px; top:50px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00101101"
                                                    rownm="A" seatno="10" seatchoidircval="0" seatchoigrpno="3"
                                                    seatchoigrpnm="A3" seatchoirowcnt="5" seatchoigrpseq="4"
                                                    seattocnt="1"><span class="num">10</span><span
                                                        class="kind">스탠다드</span><span class="condition">선택불가</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="A11 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:471px; top:50px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00101201"
                                                    rownm="A" seatno="11" seatchoidircval="0" seatchoigrpno="3"
                                                    seatchoigrpnm="A3" seatchoirowcnt="5" seatchoigrpseq="5"
                                                    seattocnt="1"><span class="num">11</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="A12 (스탠다드/장애인석)"
                                                    class="jq-tooltip seat-condition standard disabled"
                                                    style="position:absolute; left:491px; top:50px; width:20px;"
                                                    seatclasscd="DISABLED_CLS" seatzonecd="GERN_ZONE"
                                                    seatuniqno="00101301" rownm="A" seatno="12" seatchoidircval="0"
                                                    seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="2"
                                                    seatchoigrpseq="1" seattocnt="1"
                                                    seatnotimsg="해당좌석은 장애인 전용 좌석으로 일반고객은 다른 좌석을 선택하여  주시기 바랍니다."><span
                                                        class="num">12</span><span class="kind">스탠다드</span><span
                                                        class="condition">판매가능</span><span
                                                        class="rank">장애인석</span></button><button type="button"
                                                    title="A13 (스탠다드/장애인석)"
                                                    class="jq-tooltip seat-condition standard disabled"
                                                    style="position:absolute; left:511px; top:50px; width:20px;"
                                                    seatclasscd="DISABLED_CLS" seatzonecd="GERN_ZONE"
                                                    seatuniqno="00101401" rownm="A" seatno="13" seatchoidircval="0"
                                                    seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="2"
                                                    seatchoigrpseq="2" seattocnt="1"
                                                    seatnotimsg="해당좌석은 장애인 전용 좌석으로 일반고객은 다른 좌석을 선택하여  주시기 바랍니다."><span
                                                        class="num">13</span><span class="kind">스탠다드</span><span
                                                        class="condition">판매가능</span><span
                                                        class="rank">장애인석</span></button> <button type="button"
                                                    class="btn-seat-row" title="B 행"
                                                    style="position:absolute; left:206px; top:72px;">B</button><button
                                                    type="button" title="B1 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:251px; top:70px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200101"
                                                    rownm="B" seatno="1" seatchoidircval="1" seatchoigrpno="4"
                                                    seatchoigrpnm="B4" seatchoirowcnt="6" seatchoigrpseq="1"
                                                    seattocnt="1"><span class="num">1</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="B2 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:271px; top:70px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200201"
                                                    rownm="B" seatno="2" seatchoidircval="1" seatchoigrpno="4"
                                                    seatchoigrpnm="B4" seatchoirowcnt="6" seatchoigrpseq="2"
                                                    seattocnt="1"><span class="num">2</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="B3 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard finish pos"
                                                    style="position:absolute; left:291px; top:70px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200301"
                                                    rownm="B" seatno="3" seatchoidircval="1" seatchoigrpno="4"
                                                    seatchoigrpnm="B4" seatchoirowcnt="6" seatchoigrpseq="3"
                                                    seattocnt="1"><span class="num">3</span><span
                                                        class="kind">스탠다드</span><span class="condition">선택불가</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="B4 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:311px; top:70px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200401"
                                                    rownm="B" seatno="4" seatchoidircval="1" seatchoigrpno="4"
                                                    seatchoigrpnm="B4" seatchoirowcnt="6" seatchoigrpseq="4"
                                                    seattocnt="1"><span class="num">4</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="B5 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:331px; top:70px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200501"
                                                    rownm="B" seatno="5" seatchoidircval="1" seatchoigrpno="4"
                                                    seatchoigrpnm="B4" seatchoirowcnt="6" seatchoigrpseq="5"
                                                    seattocnt="1"><span class="num">5</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="B6 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:351px; top:70px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200601"
                                                    rownm="B" seatno="6" seatchoidircval="1" seatchoigrpno="4"
                                                    seatchoigrpnm="B4" seatchoirowcnt="6" seatchoigrpseq="6"
                                                    seattocnt="1"><span class="num">6</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="B7 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:391px; top:70px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200801"
                                                    rownm="B" seatno="7" seatchoidircval="0" seatchoigrpno="5"
                                                    seatchoigrpnm="B5" seatchoirowcnt="7" seatchoigrpseq="1"
                                                    seattocnt="1"><span class="num">7</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="B8 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:411px; top:70px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200901"
                                                    rownm="B" seatno="8" seatchoidircval="0" seatchoigrpno="5"
                                                    seatchoigrpnm="B5" seatchoirowcnt="7" seatchoigrpseq="2"
                                                    seattocnt="1"><span class="num">8</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="B9 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard finish pos"
                                                    style="position:absolute; left:431px; top:70px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00201001"
                                                    rownm="B" seatno="9" seatchoidircval="0" seatchoigrpno="5"
                                                    seatchoigrpnm="B5" seatchoirowcnt="7" seatchoigrpseq="3"
                                                    seattocnt="1"><span class="num">9</span><span
                                                        class="kind">스탠다드</span><span class="condition">선택불가</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="B10 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:451px; top:70px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00201101"
                                                    rownm="B" seatno="10" seatchoidircval="0" seatchoigrpno="5"
                                                    seatchoigrpnm="B5" seatchoirowcnt="7" seatchoigrpseq="4"
                                                    seattocnt="1"><span class="num">10</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="B11 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:471px; top:70px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00201201"
                                                    rownm="B" seatno="11" seatchoidircval="0" seatchoigrpno="5"
                                                    seatchoigrpnm="B5" seatchoirowcnt="7" seatchoigrpseq="5"
                                                    seattocnt="1"><span class="num">11</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="B12 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:491px; top:70px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00201301"
                                                    rownm="B" seatno="12" seatchoidircval="0" seatchoigrpno="5"
                                                    seatchoigrpnm="B5" seatchoirowcnt="7" seatchoigrpseq="6"
                                                    seattocnt="1"><span class="num">12</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="B13 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard finish pos"
                                                    style="position:absolute; left:511px; top:70px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00201401"
                                                    rownm="B" seatno="13" seatchoidircval="0" seatchoigrpno="5"
                                                    seatchoigrpnm="B5" seatchoirowcnt="7" seatchoigrpseq="7"
                                                    seattocnt="1"><span class="num">13</span><span
                                                        class="kind">스탠다드</span><span class="condition">선택불가</span><span
                                                        class="rank">일반</span></button> <button type="button"
                                                    class="btn-seat-row" title="C 행"
                                                    style="position:absolute; left:206px; top:92px;">C</button><button
                                                    type="button" title="C1 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:251px; top:90px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300101"
                                                    rownm="C" seatno="1" seatchoidircval="1" seatchoigrpno="6"
                                                    seatchoigrpnm="C6" seatchoirowcnt="6" seatchoigrpseq="1"
                                                    seattocnt="1"><span class="num">1</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="C2 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:271px; top:90px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300201"
                                                    rownm="C" seatno="2" seatchoidircval="1" seatchoigrpno="6"
                                                    seatchoigrpnm="C6" seatchoirowcnt="6" seatchoigrpseq="2"
                                                    seattocnt="1"><span class="num">2</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="C3 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:291px; top:90px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300301"
                                                    rownm="C" seatno="3" seatchoidircval="1" seatchoigrpno="6"
                                                    seatchoigrpnm="C6" seatchoirowcnt="6" seatchoigrpseq="3"
                                                    seattocnt="1"><span class="num">3</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="C4 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard finish pos"
                                                    style="position:absolute; left:311px; top:90px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300401"
                                                    rownm="C" seatno="4" seatchoidircval="1" seatchoigrpno="6"
                                                    seatchoigrpnm="C6" seatchoirowcnt="6" seatchoigrpseq="4"
                                                    seattocnt="1"><span class="num">4</span><span
                                                        class="kind">스탠다드</span><span class="condition">선택불가</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="C5 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:331px; top:90px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300501"
                                                    rownm="C" seatno="5" seatchoidircval="1" seatchoigrpno="6"
                                                    seatchoigrpnm="C6" seatchoirowcnt="6" seatchoigrpseq="5"
                                                    seattocnt="1"><span class="num">5</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="C6 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:351px; top:90px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300601"
                                                    rownm="C" seatno="6" seatchoidircval="1" seatchoigrpno="6"
                                                    seatchoigrpnm="C6" seatchoirowcnt="6" seatchoigrpseq="6"
                                                    seattocnt="1"><span class="num">6</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="C7 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:391px; top:90px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300801"
                                                    rownm="C" seatno="7" seatchoidircval="0" seatchoigrpno="7"
                                                    seatchoigrpnm="C7" seatchoirowcnt="7" seatchoigrpseq="1"
                                                    seattocnt="1"><span class="num">7</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="C8 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:411px; top:90px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300901"
                                                    rownm="C" seatno="8" seatchoidircval="0" seatchoigrpno="7"
                                                    seatchoigrpnm="C7" seatchoirowcnt="7" seatchoigrpseq="2"
                                                    seattocnt="1"><span class="num">8</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="C9 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:431px; top:90px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00301001"
                                                    rownm="C" seatno="9" seatchoidircval="0" seatchoigrpno="7"
                                                    seatchoigrpnm="C7" seatchoirowcnt="7" seatchoigrpseq="3"
                                                    seattocnt="1"><span class="num">9</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="C10 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard finish pos"
                                                    style="position:absolute; left:451px; top:90px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00301101"
                                                    rownm="C" seatno="10" seatchoidircval="0" seatchoigrpno="7"
                                                    seatchoigrpnm="C7" seatchoirowcnt="7" seatchoigrpseq="4"
                                                    seattocnt="1"><span class="num">10</span><span
                                                        class="kind">스탠다드</span><span class="condition">선택불가</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="C11 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:471px; top:90px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00301201"
                                                    rownm="C" seatno="11" seatchoidircval="0" seatchoigrpno="7"
                                                    seatchoigrpnm="C7" seatchoirowcnt="7" seatchoigrpseq="5"
                                                    seattocnt="1"><span class="num">11</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="C12 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:491px; top:90px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00301301"
                                                    rownm="C" seatno="12" seatchoidircval="0" seatchoigrpno="7"
                                                    seatchoigrpnm="C7" seatchoirowcnt="7" seatchoigrpseq="6"
                                                    seattocnt="1"><span class="num">12</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="C13 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:511px; top:90px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00301401"
                                                    rownm="C" seatno="13" seatchoidircval="0" seatchoigrpno="7"
                                                    seatchoigrpnm="C7" seatchoirowcnt="7" seatchoigrpseq="7"
                                                    seattocnt="1"><span class="num">13</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button> <button type="button"
                                                    class="btn-seat-row" title="D 행"
                                                    style="position:absolute; left:206px; top:112px;">D</button><button
                                                    type="button" title="D1 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:251px; top:110px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400101"
                                                    rownm="D" seatno="1" seatchoidircval="1" seatchoigrpno="8"
                                                    seatchoigrpnm="D8" seatchoirowcnt="6" seatchoigrpseq="1"
                                                    seattocnt="1"><span class="num">1</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="D2 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:271px; top:110px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400201"
                                                    rownm="D" seatno="2" seatchoidircval="1" seatchoigrpno="8"
                                                    seatchoigrpnm="D8" seatchoirowcnt="6" seatchoigrpseq="2"
                                                    seattocnt="1"><span class="num">2</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="D3 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard finish pos"
                                                    style="position:absolute; left:291px; top:110px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400301"
                                                    rownm="D" seatno="3" seatchoidircval="1" seatchoigrpno="8"
                                                    seatchoigrpnm="D8" seatchoirowcnt="6" seatchoigrpseq="3"
                                                    seattocnt="1"><span class="num">3</span><span
                                                        class="kind">스탠다드</span><span class="condition">선택불가</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="D4 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:311px; top:110px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400401"
                                                    rownm="D" seatno="4" seatchoidircval="1" seatchoigrpno="8"
                                                    seatchoigrpnm="D8" seatchoirowcnt="6" seatchoigrpseq="4"
                                                    seattocnt="1"><span class="num">4</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="D5 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:331px; top:110px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400501"
                                                    rownm="D" seatno="5" seatchoidircval="1" seatchoigrpno="8"
                                                    seatchoigrpnm="D8" seatchoirowcnt="6" seatchoigrpseq="5"
                                                    seattocnt="1"><span class="num">5</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="D6 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:351px; top:110px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400601"
                                                    rownm="D" seatno="6" seatchoidircval="1" seatchoigrpno="8"
                                                    seatchoigrpnm="D8" seatchoirowcnt="6" seatchoigrpseq="6"
                                                    seattocnt="1"><span class="num">6</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="D7 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:391px; top:110px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400801"
                                                    rownm="D" seatno="7" seatchoidircval="0" seatchoigrpno="9"
                                                    seatchoigrpnm="D9" seatchoirowcnt="7" seatchoigrpseq="1"
                                                    seattocnt="1"><span class="num">7</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="D8 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:411px; top:110px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400901"
                                                    rownm="D" seatno="8" seatchoidircval="0" seatchoigrpno="9"
                                                    seatchoigrpnm="D9" seatchoirowcnt="7" seatchoigrpseq="2"
                                                    seattocnt="1"><span class="num">8</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="D9 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard finish pos"
                                                    style="position:absolute; left:431px; top:110px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00401001"
                                                    rownm="D" seatno="9" seatchoidircval="0" seatchoigrpno="9"
                                                    seatchoigrpnm="D9" seatchoirowcnt="7" seatchoigrpseq="3"
                                                    seattocnt="1"><span class="num">9</span><span
                                                        class="kind">스탠다드</span><span class="condition">선택불가</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="D10 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:451px; top:110px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00401101"
                                                    rownm="D" seatno="10" seatchoidircval="0" seatchoigrpno="9"
                                                    seatchoigrpnm="D9" seatchoirowcnt="7" seatchoigrpseq="4"
                                                    seattocnt="1"><span class="num">10</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="D11 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:471px; top:110px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00401201"
                                                    rownm="D" seatno="11" seatchoidircval="0" seatchoigrpno="9"
                                                    seatchoigrpnm="D9" seatchoirowcnt="7" seatchoigrpseq="5"
                                                    seattocnt="1"><span class="num">11</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="D12 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard finish pos"
                                                    style="position:absolute; left:491px; top:110px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00401301"
                                                    rownm="D" seatno="12" seatchoidircval="0" seatchoigrpno="9"
                                                    seatchoigrpnm="D9" seatchoirowcnt="7" seatchoigrpseq="6"
                                                    seattocnt="1"><span class="num">12</span><span
                                                        class="kind">스탠다드</span><span class="condition">선택불가</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="D13 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:511px; top:110px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00401401"
                                                    rownm="D" seatno="13" seatchoidircval="0" seatchoigrpno="9"
                                                    seatchoigrpnm="D9" seatchoirowcnt="7" seatchoigrpseq="7"
                                                    seattocnt="1"><span class="num">13</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button> <button type="button"
                                                    class="btn-seat-row" title="E 행"
                                                    style="position:absolute; left:206px; top:132px;">E</button><button
                                                    type="button" title="E1 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:251px; top:130px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500101"
                                                    rownm="E" seatno="1" seatchoidircval="1" seatchoigrpno="10"
                                                    seatchoigrpnm="E10" seatchoirowcnt="6" seatchoigrpseq="1"
                                                    seattocnt="1"><span class="num">1</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="E2 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:271px; top:130px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500201"
                                                    rownm="E" seatno="2" seatchoidircval="1" seatchoigrpno="10"
                                                    seatchoigrpnm="E10" seatchoirowcnt="6" seatchoigrpseq="2"
                                                    seattocnt="1"><span class="num">2</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="E3 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:291px; top:130px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500301"
                                                    rownm="E" seatno="3" seatchoidircval="1" seatchoigrpno="10"
                                                    seatchoigrpnm="E10" seatchoirowcnt="6" seatchoigrpseq="3"
                                                    seattocnt="1"><span class="num">3</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="E4 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard finish pos"
                                                    style="position:absolute; left:311px; top:130px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500401"
                                                    rownm="E" seatno="4" seatchoidircval="1" seatchoigrpno="10"
                                                    seatchoigrpnm="E10" seatchoirowcnt="6" seatchoigrpseq="4"
                                                    seattocnt="1"><span class="num">4</span><span
                                                        class="kind">스탠다드</span><span class="condition">선택불가</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="E5 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:331px; top:130px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500501"
                                                    rownm="E" seatno="5" seatchoidircval="1" seatchoigrpno="10"
                                                    seatchoigrpnm="E10" seatchoirowcnt="6" seatchoigrpseq="5"
                                                    seattocnt="1"><span class="num">5</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="E6 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:351px; top:130px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500601"
                                                    rownm="E" seatno="6" seatchoidircval="1" seatchoigrpno="10"
                                                    seatchoigrpnm="E10" seatchoirowcnt="6" seatchoigrpseq="6"
                                                    seattocnt="1"><span class="num">6</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="E7 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:391px; top:130px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500801"
                                                    rownm="E" seatno="7" seatchoidircval="0" seatchoigrpno="11"
                                                    seatchoigrpnm="E11" seatchoirowcnt="7" seatchoigrpseq="1"
                                                    seattocnt="1"><span class="num">7</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="E8 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:411px; top:130px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500901"
                                                    rownm="E" seatno="8" seatchoidircval="0" seatchoigrpno="11"
                                                    seatchoigrpnm="E11" seatchoirowcnt="7" seatchoigrpseq="2"
                                                    seattocnt="1"><span class="num">8</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="E9 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:431px; top:130px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00501001"
                                                    rownm="E" seatno="9" seatchoidircval="0" seatchoigrpno="11"
                                                    seatchoigrpnm="E11" seatchoirowcnt="7" seatchoigrpseq="3"
                                                    seattocnt="1"><span class="num">9</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="E10 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard finish pos"
                                                    style="position:absolute; left:451px; top:130px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00501101"
                                                    rownm="E" seatno="10" seatchoidircval="0" seatchoigrpno="11"
                                                    seatchoigrpnm="E11" seatchoirowcnt="7" seatchoigrpseq="4"
                                                    seattocnt="1"><span class="num">10</span><span
                                                        class="kind">스탠다드</span><span class="condition">선택불가</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="E11 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:471px; top:130px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00501201"
                                                    rownm="E" seatno="11" seatchoidircval="0" seatchoigrpno="11"
                                                    seatchoigrpnm="E11" seatchoirowcnt="7" seatchoigrpseq="5"
                                                    seattocnt="1"><span class="num">11</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="E12 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:491px; top:130px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00501301"
                                                    rownm="E" seatno="12" seatchoidircval="0" seatchoigrpno="11"
                                                    seatchoigrpnm="E11" seatchoirowcnt="7" seatchoigrpseq="6"
                                                    seattocnt="1"><span class="num">12</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="E13 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:511px; top:130px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00501401"
                                                    rownm="E" seatno="13" seatchoidircval="0" seatchoigrpno="11"
                                                    seatchoigrpnm="E11" seatchoirowcnt="7" seatchoigrpseq="7"
                                                    seattocnt="1"><span class="num">13</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button> <button type="button"
                                                    class="btn-seat-row" title="F 행"
                                                    style="position:absolute; left:206px; top:152px;">F</button><button
                                                    type="button" title="F1 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:251px; top:150px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600101"
                                                    rownm="F" seatno="1" seatchoidircval="1" seatchoigrpno="12"
                                                    seatchoigrpnm="F12" seatchoirowcnt="6" seatchoigrpseq="1"
                                                    seattocnt="1"><span class="num">1</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="F2 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:271px; top:150px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600201"
                                                    rownm="F" seatno="2" seatchoidircval="1" seatchoigrpno="12"
                                                    seatchoigrpnm="F12" seatchoirowcnt="6" seatchoigrpseq="2"
                                                    seattocnt="1"><span class="num">2</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="F3 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard finish pos"
                                                    style="position:absolute; left:291px; top:150px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600301"
                                                    rownm="F" seatno="3" seatchoidircval="1" seatchoigrpno="12"
                                                    seatchoigrpnm="F12" seatchoirowcnt="6" seatchoigrpseq="3"
                                                    seattocnt="1"><span class="num">3</span><span
                                                        class="kind">스탠다드</span><span class="condition">선택불가</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="F4 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:311px; top:150px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600401"
                                                    rownm="F" seatno="4" seatchoidircval="1" seatchoigrpno="12"
                                                    seatchoigrpnm="F12" seatchoirowcnt="6" seatchoigrpseq="4"
                                                    seattocnt="1"><span class="num">4</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="F5 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:331px; top:150px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600501"
                                                    rownm="F" seatno="5" seatchoidircval="1" seatchoigrpno="12"
                                                    seatchoigrpnm="F12" seatchoirowcnt="6" seatchoigrpseq="5"
                                                    seattocnt="1"><span class="num">5</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="F6 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:351px; top:150px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600601"
                                                    rownm="F" seatno="6" seatchoidircval="1" seatchoigrpno="12"
                                                    seatchoigrpnm="F12" seatchoirowcnt="6" seatchoigrpseq="6"
                                                    seattocnt="1"><span class="num">6</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="F7 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:391px; top:150px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600801"
                                                    rownm="F" seatno="7" seatchoidircval="0" seatchoigrpno="13"
                                                    seatchoigrpnm="F13" seatchoirowcnt="6" seatchoigrpseq="1"
                                                    seattocnt="1"><span class="num">7</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="F8 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:411px; top:150px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600901"
                                                    rownm="F" seatno="8" seatchoidircval="0" seatchoigrpno="13"
                                                    seatchoigrpnm="F13" seatchoirowcnt="6" seatchoigrpseq="2"
                                                    seattocnt="1"><span class="num">8</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="F9 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard finish pos"
                                                    style="position:absolute; left:431px; top:150px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00601001"
                                                    rownm="F" seatno="9" seatchoidircval="0" seatchoigrpno="13"
                                                    seatchoigrpnm="F13" seatchoirowcnt="6" seatchoigrpseq="3"
                                                    seattocnt="1"><span class="num">9</span><span
                                                        class="kind">스탠다드</span><span class="condition">선택불가</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="F10 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:451px; top:150px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00601101"
                                                    rownm="F" seatno="10" seatchoidircval="0" seatchoigrpno="13"
                                                    seatchoigrpnm="F13" seatchoirowcnt="6" seatchoigrpseq="4"
                                                    seattocnt="1"><span class="num">10</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="F11 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:471px; top:150px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00601201"
                                                    rownm="F" seatno="11" seatchoidircval="0" seatchoigrpno="13"
                                                    seatchoigrpnm="F13" seatchoirowcnt="6" seatchoigrpseq="5"
                                                    seattocnt="1"><span class="num">11</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="F12 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:491px; top:150px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00601301"
                                                    rownm="F" seatno="12" seatchoidircval="0" seatchoigrpno="13"
                                                    seatchoigrpnm="F13" seatchoirowcnt="6" seatchoigrpseq="6"
                                                    seattocnt="1"><span class="num">12</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button> <button type="button"
                                                    class="btn-seat-row" title="G 행"
                                                    style="position:absolute; left:206px; top:172px;">G</button><button
                                                    type="button" title="G1 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:251px; top:170px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700101"
                                                    rownm="G" seatno="1" seatchoidircval="1" seatchoigrpno="14"
                                                    seatchoigrpnm="G14" seatchoirowcnt="6" seatchoigrpseq="1"
                                                    seattocnt="1"><span class="num">1</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="G2 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:271px; top:170px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700201"
                                                    rownm="G" seatno="2" seatchoidircval="1" seatchoigrpno="14"
                                                    seatchoigrpnm="G14" seatchoirowcnt="6" seatchoigrpseq="2"
                                                    seattocnt="1"><span class="num">2</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="G3 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:291px; top:170px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700301"
                                                    rownm="G" seatno="3" seatchoidircval="1" seatchoigrpno="14"
                                                    seatchoigrpnm="G14" seatchoirowcnt="6" seatchoigrpseq="3"
                                                    seattocnt="1"><span class="num">3</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="G4 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard finish pos"
                                                    style="position:absolute; left:311px; top:170px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700401"
                                                    rownm="G" seatno="4" seatchoidircval="1" seatchoigrpno="14"
                                                    seatchoigrpnm="G14" seatchoirowcnt="6" seatchoigrpseq="4"
                                                    seattocnt="1"><span class="num">4</span><span
                                                        class="kind">스탠다드</span><span class="condition">선택불가</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="G5 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:331px; top:170px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700501"
                                                    rownm="G" seatno="5" seatchoidircval="1" seatchoigrpno="14"
                                                    seatchoigrpnm="G14" seatchoirowcnt="6" seatchoigrpseq="5"
                                                    seattocnt="1"><span class="num">5</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="G6 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:351px; top:170px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700601"
                                                    rownm="G" seatno="6" seatchoidircval="1" seatchoigrpno="14"
                                                    seatchoigrpnm="G14" seatchoirowcnt="6" seatchoigrpseq="6"
                                                    seattocnt="1"><span class="num">6</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="G7 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:391px; top:170px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700801"
                                                    rownm="G" seatno="7" seatchoidircval="0" seatchoigrpno="15"
                                                    seatchoigrpnm="G15" seatchoirowcnt="5" seatchoigrpseq="1"
                                                    seattocnt="1"><span class="num">7</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="G8 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:411px; top:170px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700901"
                                                    rownm="G" seatno="8" seatchoidircval="0" seatchoigrpno="15"
                                                    seatchoigrpnm="G15" seatchoirowcnt="5" seatchoigrpseq="2"
                                                    seattocnt="1"><span class="num">8</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="G9 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:431px; top:170px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00701001"
                                                    rownm="G" seatno="9" seatchoidircval="0" seatchoigrpno="15"
                                                    seatchoigrpnm="G15" seatchoirowcnt="5" seatchoigrpseq="3"
                                                    seattocnt="1"><span class="num">9</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="G10 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard finish pos"
                                                    style="position:absolute; left:451px; top:170px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00701101"
                                                    rownm="G" seatno="10" seatchoidircval="0" seatchoigrpno="15"
                                                    seatchoigrpnm="G15" seatchoirowcnt="5" seatchoigrpseq="4"
                                                    seattocnt="1"><span class="num">10</span><span
                                                        class="kind">스탠다드</span><span class="condition">선택불가</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="G11 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:471px; top:170px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00701201"
                                                    rownm="G" seatno="11" seatchoidircval="0" seatchoigrpno="15"
                                                    seatchoigrpnm="G15" seatchoirowcnt="5" seatchoigrpseq="5"
                                                    seattocnt="1"><span class="num">11</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button> <button type="button"
                                                    class="btn-seat-row" title="H 행"
                                                    style="position:absolute; left:206px; top:192px;">H</button><button
                                                    type="button" title="H3 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:291px; top:190px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00800301"
                                                    rownm="H" seatno="3" seatchoidircval="1" seatchoigrpno="16"
                                                    seatchoigrpnm="H16" seatchoirowcnt="4" seatchoigrpseq="1"
                                                    seattocnt="1"><span class="num">3</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="H4 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:311px; top:190px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00800401"
                                                    rownm="H" seatno="4" seatchoidircval="1" seatchoigrpno="16"
                                                    seatchoigrpnm="H16" seatchoirowcnt="4" seatchoigrpseq="2"
                                                    seattocnt="1"><span class="num">4</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="H5 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard finish pos"
                                                    style="position:absolute; left:331px; top:190px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00800501"
                                                    rownm="H" seatno="5" seatchoidircval="1" seatchoigrpno="16"
                                                    seatchoigrpnm="H16" seatchoirowcnt="4" seatchoigrpseq="3"
                                                    seattocnt="1"><span class="num">5</span><span
                                                        class="kind">스탠다드</span><span class="condition">선택불가</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="H6 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:351px; top:190px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00800601"
                                                    rownm="H" seatno="6" seatchoidircval="1" seatchoigrpno="16"
                                                    seatchoigrpnm="H16" seatchoirowcnt="4" seatchoigrpseq="4"
                                                    seattocnt="1"><span class="num">6</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="H7 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:391px; top:190px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00800801"
                                                    rownm="H" seatno="7" seatchoidircval="0" seatchoigrpno="17"
                                                    seatchoigrpnm="H17" seatchoirowcnt="4" seatchoigrpseq="1"
                                                    seattocnt="1"><span class="num">7</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="H8 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard finish pos"
                                                    style="position:absolute; left:411px; top:190px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00800901"
                                                    rownm="H" seatno="8" seatchoidircval="0" seatchoigrpno="17"
                                                    seatchoigrpnm="H17" seatchoirowcnt="4" seatchoigrpseq="2"
                                                    seattocnt="1"><span class="num">8</span><span
                                                        class="kind">스탠다드</span><span class="condition">선택불가</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="H9 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:431px; top:190px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00801001"
                                                    rownm="H" seatno="9" seatchoidircval="0" seatchoigrpno="17"
                                                    seatchoigrpnm="H17" seatchoirowcnt="4" seatchoigrpseq="3"
                                                    seattocnt="1"><span class="num">9</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button><button type="button"
                                                    title="H10 (스탠다드/일반)"
                                                    class="jq-tooltip seat-condition standard common"
                                                    style="position:absolute; left:451px; top:190px; width:20px;"
                                                    seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00801101"
                                                    rownm="H" seatno="10" seatchoidircval="0" seatchoigrpno="17"
                                                    seatchoigrpnm="H17" seatchoirowcnt="4" seatchoigrpseq="4"
                                                    seattocnt="1"><span class="num">10</span><span
                                                        class="kind">스탠다드</span><span class="condition">판매가능</span><span
                                                        class="rank">일반</span></button></div> <img
                                                src="img/img-door-left-right.png" alt="좌우측 출입구"
                                                style="position:absolute; left:231px; top:30px; width:16px; height: 16px;"
                                                class="mCS_img_loaded">
                                        </div>
                                    </div>
                                    <div id="mCSB_1_scrollbar_vertical"
                                        class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical">
                                        <div class="mCSB_draggerContainer">
                                            <div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
                                                style="position: absolute; min-height: 30px; display: none; height: 732px; top: 0px; max-height: 382px;">
                                                <div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
                                            </div>
                                            <div class="mCSB_draggerRail"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="zone-legend" style="display: none"></div>
                    </div>
                </div>
                <div class="seat-result">
                    <div class="wrap">
                        <div class="tit-area">
                            <span class="movie-grade small age-all age-15">15세이상관람가</span>
                            <p class="tit">반도</p>
                            <p class="cate">2D</p>
                        </div>
                        <div class="info-area">
                            <p class="theater">강남</p>
                            <p class="special">5관</p>
                            <p class="date"><span>2020.07.23</span><em>(목)</em></p>
                            <div class="other-time">
                                <button type="button" class="now">19:05~21:11<i class="arr"></i></button>
                                <ul class="other">
                                    <li><button type="button" choicnt="55" playschdlno="2007231372020"
                                            class="btn on ">19:05~21:11</button></li>
                                    <li><button type="button" choicnt="172" playschdlno="2007231372010"
                                            class="btn ">19:40~21:46</button></li>
                                    <li><button type="button" choicnt="72" playschdlno="2007231372051"
                                            class="btn ">20:15~22:21</button></li>
                                    <li><button type="button" choicnt="70" playschdlno="2007231372017"
                                            class="btn ">20:30~22:36</button></li>
                                    <li><button type="button" choicnt="69" playschdlno="2007231372024"
                                            class="btn ">21:30~23:36</button></li>
                                    <li><button type="button" choicnt="182" playschdlno="2007231372011"
                                            class="btn ">22:05~24:11</button></li>
                                    <li><button type="button" choicnt="82" playschdlno="2007231372018"
                                            class="btn ">22:55~25:01</button></li>
                                </ul>
                            </div>
                            <p class="poster">
                                <img src="img/bando.gif"
                                    onerror="noImg(this);" alt="반도">
                            </p>
                        </div>
                        <div class="choice-seat-area">
                            <div class="legend">
                                <ul class="list">
                                    <li>
                                        <div class="seat-condition choice" title="선택한 좌석"></div> <em>선택</em>
                                    </li>
                                    <li>
                                        <div class="seat-condition finish" title="예매 완료"></div> <em>예매완료</em>
                                    </li>
                                    <li>
                                        <div class="seat-condition impossible" title="선택 불가"></div> <em>선택불가</em>
                                    </li>
                                    <li>
                                        <div class="seat-condition pos" title="띄어앉기석"></div> <em>띄어앉기석</em>
                                    </li>
                                    <li>
                                        <div class="seat-condition common" title="일반"></div> <em> 일반</em>
                                    </li>
                                    <li>
                                        <div class="seat-condition disabled" title="장애인석"></div> <em> 장애인석</em>
                                    </li>
                                </ul>
                            </div>
                            <div class="seat-num">
                                <p class="tit">선택좌석</p>
                                <div class="my-seat">
                                    <div class="seat all" title="구매가능 좌석">-</div>
                                    <div class="seat all" title="구매가능 좌석">-</div>
                                    <div class="seat all" title="구매가능 좌석">-</div>
                                    <div class="seat all" title="구매가능 좌석">-</div>
                                    <div class="seat all" title="구매가능 좌석">-</div>
                                    <div class="seat all" title="구매가능 좌석">-</div>
                                    <div class="seat all" title="구매가능 좌석">-</div>
                                    <div class="seat all" title="구매가능 좌석">-</div>
                                </div>
                            </div>
                        </div>
                        <div class="pay-area">
                            <p class="count"></p>
                            <div class="pay">
                                <p class="tit">최종결제금액</p>
                                <div class="money">
                                    <em>0</em> <span>원</span>
                                </div>
                            </div>
                        </div>
                        <div class="btn-group">
                            <a href="javaScript:void(0)" class="button" id="pagePrevious" title="이전">이전</a>
                            <a href="javaScript:void(0)" class="button disabled" id="pageNext" title="다음">다음</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	 
    <div class="normalStyle"
        style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">
        닫기</div>
    <div class="alertStyle"
        style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;">
    </div>
   <div class="br">
   <br>
   <br>
   <br>
   <br>
   <br>
   </div>
    
    <%@ include file = "include/footer.jsp" %>
    
    <script>    	
        $(document).on('mouseenter focus', 'button.seat-condition', function () {
            if (!$(this).hasClass('finish') && !$(this).hasClass('impossible')) {
                $(this).addClass('on');
            }
        });

        $(document).on('mouseleave blur', 'button.seat-condition', function () {
            $(this).removeClass('on');
        });
    </script>
</body>

</html>