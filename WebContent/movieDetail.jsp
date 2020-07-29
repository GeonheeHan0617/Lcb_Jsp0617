<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <link rel="shortcut icon" href="assets/icons/LCB_icon.png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


    <link href="css/includebootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    
    <style>
        /* section*/
        * {
            margin: 0;
            padding: 0;
            list-style: none;
            text-decoration: none;
    
        }
    
    
        .detail_top_wrap {
            position: relative;
            min-height: 240px;
            padding-left: 359px;
            margin-right: 300px;
            margin-bottom: 15px;
            text-align: center;
    
        }    
    
        .detail_top_wrap .detail_info1 {
    
            overflow: hidden;
            padding-bottom: 17px;
            margin-bottom: 20px;
            font-size: 30px;
            border-bottom: 1px solid #ddd;
    
        }
    
        .detail_top_wrap .detail_info1 .sub_info2 {
            font-size: 20px;
        }
    
    
        .detail_top_wrap .detail_info1 .sub_info3 {
            font-size: 20px;
        }
    
    
    
        .detail_top_wrap .detail_info2 {
            margin-bottom: 17px;
            font-size: 25px;
        }
    
    
        ul,
        ol {
            list-style: none;
        }
    
        .detail_top_wrap .poster_info {
            position: absolute;
            top: -0px;
            left: 225px;
            width: 205px;
            height: 305px;
            z-index: 1;
        }
    
        .detail_top_wrap .spacial_hall_info {
            width: 400px;
        }
    
        .detail_top_wrap .tit_info {
            margin: -2px 0 15px 0;
            font-size: 26px;
        }
    
        .movie_detail_aside_menu {
            display: inline-block;
        }
    
        .movie_detail_aside_menu ul {
            padding-left: 200px;
        }
    
        .movie_detail_aside_menu ul li {
            float: left;
        }
    
        .movie_detail_aside_menu ul>li .btn_ic_share {
            display: block;
            position: relative;
            width: 28px;
            height: 28px;
            padding: 0 10px;
            background: url(../../Content/images/icon/ic_share.png) no-repeat 50% 0;
            border: 0;
        }
    
        button {
            border: 1px solid #DDD;
            cursor: pointer;
            background-color: #fff;
        }
    
        input,
        select,
        button {
            vertical-align: middle;
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
        }    
        body,
        input,
        button,
        select,
        textarea {
         	writing-mode: horizontal-tb;
         	font-family:NanumBarunGothic,Dotum,'돋움',sans-serif;
            font-size: 12px;
            color: #000;
        }
    
        button {
            -webkit-appearance: button;
            text-rendering: auto;
            color: -internal-light-dark-color(buttontext, rgb(170, 170, 170));
            letter-spacing: normal;
            word-spacing: normal;
            text-transform: none;
            text-indent: 5px;
            text-shadow: none;
            display: inline-block;
            text-align: center;
            align-items: flex-start;
            cursor: default;
            background-color: -internal-light-dark-color(rgb(239, 239, 239), rgb(74, 74, 74));
            box-sizing: border-box;
            margin-right: 26px;
            font: 400 15px Arial;
            padding: 1px 6px;
            border-width: 2px;
            border-style: outset;
            border-color: -internal-light-dark-color(rgb(118, 118, 118), rgb(195, 195, 195));
            border-image: initial;
            display: inline-block;
            box-sizing: border-box;
            border-radius: 4px;
            border: 1px solid #5a19f1;
            font-size: 30px;
            color: #ffffff;
            text-align: center;
            vertical-align: middle;
            background-color: #8f1afc;
            margin-bottom: 20px;
        }
    
        .btn_col1 {
            display: inline-block;
            box-sizing: border-box;
            border-radius: 4px;
            border: 1px solid #FF243E;
            font-size: 30px;
            color: #ffffff !important;
            text-align: center;
            vertical-align: middle;
            background-color: #FF243E;
        }
    
        a {
            text-decoration: none;
        }
        .movi_tab_info1 {
            overflow: hidden;
            margin: 0px 0 45px 0;
        }
        .movi_tab_info1 .left_con {
            float: left;
            width: 480px;
        }
        .tab_con {
            overflow: inherit;
            position: relative;
            width: auto;
            height: auto;
            text-align: center;
        }
        .mCSB_container{text-align: center;}

        .order .left, .order .right {
            width: 45%;
            height: 60px;
            font-size: 18px;
            box-sizing: border-box;
         
        }
        .purple{
            background-color: rgb(40, 0, 78);
        }
        .btn-info {
            color: #fff;
            background-color:  rgb(40, 0, 78);
            border-color:  rgb(40, 0, 78);
        }
    </style>

</head>
<body>

    
<%@ include file = "include/header.jsp" %>
    <br>
    <br>
    <br>
    <section class="prod">
        <div class="container">
            <h2>반도</h2><small>(15세이상 관람가)</small>
            <hr>
            <div class="row">
                <div class="col-xs-12 col-md-6">
                    <img
                    src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202007/16010_103_1.jpg" alt="반도">
                </div>
                <div class="col-xs-12 col-md-6">
                    <div class="info">
                        <p class="title"> ★관람객 평점: 7.4 점  </p>
                        
                        <p class="price">예매율 1위: 37.5% <br>누적관객수: 2,174,313 명</p>
                        
                        <p class="price"> <strong>★ 영화정보 ★</strong></p>  <br> 
                         <strong>장르:액션 <br> 드라마 / 한국2020.07.15 개봉116분
                            감독: 연상호 <br> 출연:강동원, 이정현, 권해효, 김민재, 구교환</strong>
                            <hr>
                            <p class="delivery">     시놉시스
                            전대미문의 재난 그 후 4년
                            폐허의 땅으로 다시 들어간다!
                            
                            4년 전, 나라 전체를 휩쓸어버린 전대미문의 재난에서
                            가까스로 탈출했던 ‘정석’(강동원).
                            바깥세상으로부터 철저히 고립된 반도에
                            다시 들어가야 하는 피할 수 없는 제안을 받는다.
                            
                            제한 시간 내에 지정된 트럭을 확보해
                            반도를 빠져 나와야 하는 미션을 수행하던 중
                            인간성을 상실한 631부대와 4년 전보다 더욱 거세진
                            대규모 좀비 무리가 정석 일행을 습격한다.
                            
                            절체절명의 순간,
                            폐허가 된 땅에서 살아남은 ‘민정’(이정현) 가족의 도움으로
                            위기를 가까스로 모면하고
                            이들과 함께 반도를 탈출할 수 있는 마지막 기회를 잡기로 한다.
                            
                            되돌아온 자, 살아남은 자 그리고 미쳐버린 자
                            필사의 사투가 시작된다!</p>
                            
                           
                      
                    </div>
                    <div class="control">
                        <div class="price">
                            <p class="right">관람 선호도</p>
                            <p class="left"><strong>
                           </strong>
                           성별:
                                남성 40.0% |
                                여성 60.1%
                                <br>
                            연령:
                                10대: 5.2% |
                                20대: 36.5% |
                                30대: 30.5% |
                                40대: 이상 27.9%</p>
                        </div>
                        <div class="order">
                            <button type="button" class="left btn btn-default">좋아요 1,425개</button>
                            <button type="button" class="right btn purple">예매하기</button>
                        </div>
                    </div>
                </div>
                <form class="reply-wrap col-md-12 col-xs-12" style="margin-top: 80px;" >
                    <div class="reply-image">
                        <img src="img/profile.png">
                    </div>
                    <!--form-control은 부트스트랩의 클래스입니다-->
                    <div class="reply-content">                            
                        <textarea class="form-control" rows="3"></textarea>
                        <!--여기에-->
                        <div class="reply-group ">
                            <div class="left reply-input">
                            <input type="text" class="form-control" placeholder="아이디">
                            <input type="password" class="form-control" placeholder="비밀번호">
                            </div>
                            <button type="button" class="right btn purple">등록하기</button>
                        </div>                            
                    </div>
                </form>

                <div class="reply-wrap col-md-12 col-xs-12">
                    <div class="reply-image">
                        <img src="img/profile.png">
                    </div>
                    <div class="reply-content">
                        <div class="reply-group">
                            <strong class="right">홍길동 </strong> 
                            <small class="rigth">2020/8/01</small>
                            <a href="#" class="right"><span class="glyphicon glyphicon-pencil"></span>수정</a>
                            <a href="#" class="right"><span class="glyphicon glyphicon-remove"></span>삭제</a>
                        </div>
                        <p class="clearfix">여기는 감상평~</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <br>
    <br>
    <br>
    <%@ include file = "include/footer.jsp" %>
</body>
</html>
