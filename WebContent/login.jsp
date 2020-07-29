<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap');
        
 
        *{margin: 0; padding: 0; box-sizing: border-box;}
        body{            
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: url() no-repeat center;
            background-color: rgba(0, 0,0,1.7);
            background-size: cover;
        }
        body::before{
            content: "";            
            top: 0; right: 0; bottom: 0; left: 0;
            background-color: rgba(0,0,0,.7);
        }
        .login-form{position: relative; z-index: 2;}
        .login-form h1{
            font-size: 32px; color: #fff;
            text-align: center;
            margin-bottom: 60px;
        
        }
        .int-area{width: 400px;
            position: relative;
            margin:0 auto;
        }

        .int-area:first-child{margin-top: 0;}
        
        .int-area input{
            width: 100%;
            padding: 20px 10px 10px;
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #999;
            font-size: 18px; color: #fff;
            outline: none;

        }
        .int-area label{
            position: absolute; left: 10px; top: 15px;
            font-size: 18px; color: #999;
            transition: all .5s ease;
        }
        .int-area label.warning{
            color: red !important;
            animation: warning .3s ease;
            animation-iteration-count: 3;
        }
        @keyframes warning{
            0% {transform: translateX(-8px);}
            25% {transform: translateX(8px);}
            50% {transform: translateX(-8px);}
            70% {transform: translateX(8px);}
        }
        .int-area input:focus + label,
        .int-area input:valid + label{
            top:-2px;
            font-size: 13px; color: #166cea;
        }
        .btn-area{
        	margin-top: 30px;
        	text-align:center;
        	
        }
        .btn-area button{
            width: 25%; height: 50px;
            background:rgba(40,0,78);
            color: #fff;
            font-size: 20px;
            border: none;
            border-radius: 25px;
            cursor: pointer;            
        }
        .caption{
            margin-top: 20px;
            text-align: center;
        }
        .caption a{
            font-size: 15px; color: #999;
            text-decoration: none;
        }        
        .menu-a ul,.menu-a ul li{
        	list-style: none;
        }
    </style>
</head>

<body>
	<%@ include file = "include/header.jsp" %>
	<br><br><br>
    <section class="login-form"> 
        <h1>LOGO DESIGN</h1>
        <form action="">
            <div class="int-area">
                <input type="text" name="id" id="id"
                
                autocomplete="off" required>
                <label for="id">USER NAME</label>
            </div>
            <div class="int-area">
                <input type="password" name="pw" id="pw"
                
                autocomplete="off" required>
                <label for="pw">PASSWORD</label>
            </div>
            <div class="btn-area">
                <button type="submit">LOGIN</button>
            </div> 
             
           
        </form>
    </section>
	<br><br><br>
	<br><br><br>
	<br><br><br>
	<br><br><br>
	<br><br><br>
	<br><br><br>
	<%@ include file = "include/footer.jsp" %>
    <script>
        let id = $('#id');
        let pw = $('#pw');
        let btn = $('#btn');

        $(btn).on('click', function(){
            if($(id).val() == ""){
                $(id).next('label').addClass('warning');
                setTimeout(function(){
                    $('label').removeClass('warning');
                },1500);
            }
            else if($(pw).val()== ""){
                $(id).next('label').addClass('warning');
                setTimeout(function(){
                    $('label').removeClass('warning');
                },1500);
            }
        });
    </script>
</body>
</html>
