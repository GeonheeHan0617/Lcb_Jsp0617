<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/includebootstrap.css" rel="stylesheet">
<style>
	*	{
        padding: 0;
        margin: 0;
         }
     @media screen and (max-width: 600px) {
        .column {
          width: 100%;
          height: auto;
        }
      }  
        

        .menu-a{            
            text-align: center;
            background-color: rgb(40, 0, 78) ;
            color: white;
            width: 100%;
            font-weight: 600;
            font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
        }
        .menu-a ul{
            
            background-color: rgba(128, 0, 128, 0.562);
        }
        .menu-a > ul {
        	
            margin-left: 190px;
            background-color: rgb(40, 0, 78) ;
            display: inline-block;
            border-radius: 5px;
            padding: 40px, 10px;
            margin:0;
            
        }
        .menu-a > ul >li {
            display: inline-block;       
        }

        .menu-a li> a {
            /* background-color: red;  */
            padding: 10px;
            display: block;
        }
        .menu-a li:hover{
            background-color: black;
            color: white;
            text-decoration: none;
        }
        .menu-a li {
            position: relative;
        
        }
        .menu-a ul ul {
            display: none;
            position: absolute;
            margin:0;
            left: 0;
        }
        .menu-a li:hover>ul {
            display: block;
        }
        .menu-a, .on {
          font-size: large;
          z-index: 1;
        }
        .on{ font-size: small;}
        .menu-b{          
          background-color: rgb(40, 0, 78) ;
          color: white;
          width: 100%;          
          font-weight: 600;
          font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
        }
        .menu-b ul{
          float: right;
        }
        .menu-b ul li{display: inline-block;}
        .menu-a li> a {
        	color: white;
        	text-decoration:none;
        }
        .menu-b li> a {
        	color: white;
        	text-decoration:none;
        }
        img{
        	vertical-align: middle;
        }
        
</style>
</head>
<header>
<nav class="menu-b"> 
        <ul style="margin-top: 15px;">
            <li><a href="#">회원가입</a></li>&nbsp;&nbsp;
            <li><a href="#">로그인</a></li>&nbsp;&nbsp;
            <li><a href="#">마이페이지</a></li>&nbsp;&nbsp;
        </ul>
</nav>

      <nav class="menu-a"> 
        <ul>
        	<li>
				<span>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;				
				</span>
        	</li>
            <li><a href="#">영화</a>
                <ul class="on">
                    <li><a href="#">무비차트</a></li>
                    <li><a href="#">감상평</a></li>             
                </ul>
            </li>
            <li><a href="#">예매</a>
                <ul class="on">
                    <li><a href="#">상영시간표</a></li>             
                </ul>
            </li>
            <li><a href="#">극장</a>
                <ul class="on">
                    <li><a href="#">서 울</a></li>
                    <li><a href="#">경 기</a></li>
                    <li><a href="#">인 천</a></li>
                </ul>
            </li>
            <li>
              <img src="${pageContext.request.contextPath}/img/Lcb.png" width="50%" height="39px">
            </li>
            <li><a href="#">이벤트</a>
                <ul class="on">
                    <li><a href="#">포인트 멤버쉽</a></li>                    
                </ul>
            </li>
            <li><a href="#">스토어</a>
                <ul class="on">
                    <li><a href="#">팝콘 & 스낵</a></li>                    
                </ul>
            </li>           
        </ul>
    </nav>
    
</header>