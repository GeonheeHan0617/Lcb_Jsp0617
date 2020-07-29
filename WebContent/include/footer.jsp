<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 .footer {
            width: 100vw;
            display: block;
            overflow: hidden;
            padding: 10px 0;
            box-sizing: border-box;
            background-color: rgb(40, 0, 78);            
            bottom: 0px;            
            postion: absolute;
        }

        .inner_footer {
            display: block;
            margin: 0 auto;
            width: 1100px;
            height: 100%;

        }

        .inner_footer .logo_container {
            width: 35%;
            float: left;
            height: 100%;
            display: block;
        }

        .inner_footer .logo_container img {
            width: 30%;
            height: auto;
        }

        .inner_footer .inner_third {
            width: calc(21.6666667% - 20px);
            max-width: 10px;
            float: left;
            height: 100%;
        }

  

        .inner_footer .footer_third h1 {
            font-family: 'arial';
            font-size: 22px;
            color: rgb(239, 232, 255);
            display: block;
            width: 100%;
            margin-bottom: 20px;
            margin-top:10px;
        }
        .inner_footer .footer_third p {
            font-family: 'arial';
            font-size: 14px;
            font-weight: 200;
            color: rgb(197, 172, 255);
            display: block;
            width: 100%;
            margin-bottom: 5px;
            padding-bottom: 0px;
          
        }
        .help article > div {
          border: 1px solid #dbdbdb;
          height: 490.5px;
      }


      .service li {
       float: none;
      }
      .service li {
          border-right: 1;
          height: 163px;
      }
	
</style>
</head>
<body>
<footer>
       <!-- footer-bottom -->
      <div class="footer">
          <div class="inner_footer">
              <div class="logo_container">
                  <img src="img/Lcb1.png">
              </div>
              <div class="footer_third">
	
                  <h1>LCB : CINEMA</h1>
                  
                  <p>서울특별시 강남구 (역삼동, 제이슨타워)</p>
                  <p>ARS 1234-5678  || 대표자명: 홍길동</p>
                  <p> 사업자등록번호 123-45-67890  ||  통신판매업신고번호 제 001호</p>
                  <p class="copy">COPYRIGHT © Mr.Hong , LCB_engineering</p>
              </div>


            
          </div>
      </div>

  </footer>
</body>
</html>