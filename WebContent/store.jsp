<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!-- 부트 스트랩 디자인 -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <link href="js/bootstrap.js" rel="stylesheet">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <link href="css/includebootstrap.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">

  <style>
    
  
  .prod-list .arrow {
    position: absolute;
    bottom: 15px;
    left: 15px;
    display: inline-block;
    width: 100px;
    height: 50px;
    line-height: 50px;
    color: #fff;
    background-color: #999;
}
.prod-link>.hover {
      opacity: 0;
      width: 100px;
      background-color: rgb(40, 0, 78);
  }
  .menu-a{
  	margine:0;
  }
  
  </style>
  
  


</head>
<body>
    <%@ include file = "include/header.jsp" %>
    <br><br><br>
    
    <!-- 본문 -->
    <section>

      <div class="container ">
        <!-- 이름작성영역 -->
        <div class="row">
          <div class="col-xs-12">
            <h2>스토어</h2>
          </div>
        </div>
        <!-- 상품화면영역 -->
        <!-- a태그가 인라인요소여서 이미지가 윤곽을 잡지 못함 그래서 블록으로 요소변경해야함 -->
        <div class="row">
          <ul class="prod-list">
            <li class="col-xs-12 col-sm-6">
              <a href="" class="prod-link">
                <img src="img/팝콘1.png"> 
                <span class="arrow"><i class="glyphicon glyphicon-chevron-right"></i></span>
                <span class="arrow hover">구매하기<i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            <li class="col-xs-12 col-sm-6">
              <a href="" class="prod-link">
                <img src="img/반반에이트세트.png">
                <span class="arrow"><i class="glyphicon glyphicon-chevron-right"></i></span>
                <span class="arrow hover">구매하기<i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>              
            </li>
            <li class="col-xs-12 col-sm-6">
              <span>즉석구이콤보 세트</span>
            </li>
            <li class="col-xs-12 col-sm-6">
              <span>반반에이트 세트</span>
            </li>
            <li class="col-xs-12 col-sm-3">
              <a href="" class="prod-link">
                <img src="img/메가박스티켓1.jpg">
                <span class="arrow"><i class="glyphicon glyphicon-chevron-right"></i></span>
                <span class="arrow hover">구매하기<i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>            
            <li class="col-xs-12 col-sm-3">
              <a href="" class="prod-link">
                <img src="img/스위트전용관람권.jpg">
                <span class="arrow"><i class="glyphicon glyphicon-chevron-right"></i></span>
                <span class="arrow hover">구매하기<i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>            
            <li class="col-xs-12 col-sm-3">
              <a href="" class="prod-link">
                <img src="img/MX전용관람권.jpg">
                <span class="arrow"><i class="glyphicon glyphicon-chevron-right"></i></span>
                <span class="arrow hover">구매하기<i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>            
            <li class="col-xs-12 col-sm-3">
              <a href="" class="prod-link">
                <img src="img/3D전용관람권.jpg">
                <span class="arrow"><i class="glyphicon glyphicon-chevron-right"></i></span>
                <span class="arrow hover">구매하기<i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            <li class="col-xs-12 col-sm-3">
              <span>일반 관람권</span>
            </li>
            <li class="col-xs-12 col-sm-3">
              <span>스위트 전용관람권</span>
            </li>
            <li class="col-xs-12 col-sm-3">
              <span>MX 전용관람권</span>
            </li>
            <li class="col-xs-12 col-sm-3">
              <span>3D 전용관람권</span>
            </li>
            
            <li class="col-xs-12 col-sm-6">
              <a href="" class="prod-link">
                <img src="img/더블콤보.png">
                <span class="arrow"><i class="glyphicon glyphicon-chevron-right"></i></span>
                <span class="arrow hover">구매하기<i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>            
            
            <li class="col-xs-12 col-sm-3">
              <a href="" class="prod-link">
                <img src="img/싱글패키지.jpg">
                <span class="arrow"><i class="glyphicon glyphicon-chevron-right"></i></span>
                <span class="arrow hover">구매하기<i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>            
            <li class="col-xs-12 col-sm-3">
              <a href="" class="prod-link">
                <img src="img/매가패밀리패키지.jpg">
                <span class="arrow"><i class="glyphicon glyphicon-chevron-right"></i></span>
                <span class="arrow hover">구매하기<i class="glyphicon glyphicon-chevron-right"></i></span>
              </a>
            </li>
            <li class="col-xs-12 col-sm-6">
              <span></span>
            </li>
            <li class="col-xs-12 col-sm-6">
              <span>더블콤보</span>
            </li>
            <li class="col-xs-12 col-sm-3">
              <span>싱글패키지</span>
            </li>
            <li class="col-xs-12 col-sm-3">
              <span>매가패키지</span>
            </li>
          </ul>
        </div>
      </div>
    </section>
    <br><br><br>
    
    <%@ include file = "include/footer.jsp" %>

</body>
</html>