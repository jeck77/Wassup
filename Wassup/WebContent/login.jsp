<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- 제이쿼리 -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- 다음 주소 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8cb57d60bbbe20bede9fed1ef145271"></script>
    <script>
    $(document).ready(function() {
        $('#login_form').submit(function() {
            if ($('#Pwd').val() == '') {
                alert('비밀번호를 입력해주세요.');
                return false;
            }
        });
/*         <input type="radio" name="check_log" id="seller" value="seller">판매자 회원 */
        $("#link").attr("href","/" + $('input[name="check_log"]:checked').val() + "/enrollform");
        
      $('input[name="check_log"]').change(function(){
         $("#link").attr("href","/" + $('input[name="check_log"]:checked').val() + "/enrollform");

      });
    }); // end ready()
    
    
    </script>
<style>
@font-face {
   font-family : 'Bangers';
   src : url("../fonts/Bangers-Regular.ttf") format('truetype');
}
@font-face {
   font-family : 'rKorea';
   src : url("../fonts/RecipekoreaFONT.ttf") format('truetype');
}
@font-face {
   font-family : 'nexonM';
   src : url("../fonts/NEXON Lv2 Gothic Medium.ttf") format('truetype');
}
@font-face {
   font-family : 'nexonL';
   src : url("../fonts/NEXON Lv2 Gothic Light.ttf") format('truetype');
}
@font-face {
   font-family : 'nexonB';
   src : url("../fonts/NEXON Lv2 Gothic Bold.ttf") format('truetype');
}
@font-face {
   font-family : 'nanumacB';
   src : url("../fonts/NanumSquare_acB.ttf") format('truetype');
}
@font-face {
   font-family : 'nanumacEB';
   src : url("../fonts/NanumSquare_acEB.ttf") format('truetype');
}
@font-face {
   font-family : 'nanumEB';
   src : url("../fonts/NanumSquareEB.ttf") format('truetype');
}
@font-face {
   font-family : 'scDreamEB';
   src : url("../fonts/SCDream9.otf") format('truetype');
}
@font-face {
   font-family : 'scDreamM';
   src : url("../fonts/SCDream6.otf") format('truetype');
}
@font-face {
   font-family : 'scDreamL';
   src : url("../fonts/SCDream3.otf") format('truetype');
}

    
      body{
        color: white;
        background: #333366;
    }
    /* a 태그 주석 없애기 */
    
    a:link {text-decoration: none; color: white;}
    a:visited {text-decoration: none; color: white;}
    a:active {text-decoration: none; color: white;}
    a:hover {text-decoration:  none; color: white;}
    
    div{
        border-color: white;
        box-sizing: border-box;
        /*border:solid 1px;*/
    }
    
    
    form{
         display:inline;
    }
    
    #wapper{
        margin: auto;
        width: 1500px;
        height: 1400px;
    }
    
    /*로그인 스타일*/
    #content{
        height: 78%;
        margin-top: 10%;
    }
    .login_logo {
       font-weight : 3000;
       font-family : scDreamM;
    }
     .loginS{
        font-size: 15px;
        font-family : scDreamL;
    }

    #login_content {
        height: 20%;
        text-align: left;
        margin-left: 20%;
        padding: 50px;
        font-size: 60px;
    }
    
    .loginborder {
        width: 55%;
        height: 39%;
/*        margin-top: %;*/
        margin-left: 23%;
        margin-top : 3%;
        padding-top: 3.5%;
        padding-left: 10%;
        background-color: #272753;
        border: 4px solid white;
        box-shadow: 0 0 10px #ED85FF, 0 0 10px #ED85FF,
            inset 0 0 10px #ED85FF, inset 0 0 10px #ED85FF;
        font-family : scDreamL;
    }
    
       .radio_btn{
        margin-top: 4%;
        margin-left: 11%;
        width: 80%;
        height: 13%;
        font-size: 17px;
    }
    
      #login_input{
          padding-right: 10px;
/*          padding-top: %;*/
          margin-left: 12%;
          
        }
    #login_input{
          width:40%;
          height:45%;
          float: left;
        }
   #login_input input {
         font-family : scDreamL;
   }
    .input_btn{
        width: 100%;
        height: 23%;
        margin-top: 4.5%;
        border-radius: 5px;
        border:0;
        outline: 0;
    }
    
    #login_btn{
        width:40%;
        height:30%;
        float: left;
        }  
    
     #B{
        width: 40%;
        height:60%;
        font-size: 1px;
        margin-top: 10%;
        margin-left: 20%;
        background-color: white;
        border:0;
        outline: 0;
        border-radius: 5px;
        font-size: 16.5px;
        font-weight: bolder;
        font-family : scDreamM;
        }
    
        #login_info{
/*        height: px;*/
        margin-left: 13%;
        padding-top: 25%;
        margin-top: 1%;
        font-fmaily : scDreamM;
    }
/*
          #ID{
            width:50%;
            height:20%;
            float: left;
            
        }
          #PW{
            width:50%;
            height:20%;
            float: left;
              margin-top: 4%;
        }
*/
    
</style> 
</head>
<body>
    <!-- 2699c271a5fff1aec7524b070032df00 -->
    <div id="wapper">
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/nav.jsp" %>
    
        

        <div id="content">
            <div id="login_content">
                <Strong class="login_logo">LOGIN</Strong><br>
                <p class="loginS">가입하신 아이디와 비밀번호를 입력해주세요.<br>
                비밀번호는 대소문자를 구분합니다.</p>
            </div>
            <form action="/Login" method="post" id="login_form">
               <div class="loginborder">
                   <div class=radio_btn>
                       <input type="radio" name="check_log" id="buyer" value="buyer" checked><label for="buyer">일반회원</label>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="check_log" id="seller" value="seller"><label for="seller">판매자 회원</label>
                   </div>
        <div id=login_input>
            <input type = "text" name ="Id" id="Id" class="input_btn" placeholder="  아이디를 입력하세요.">
             <input type = "password" name ="Pwd" id="Pwd" class="input_btn" placeholder="  비밀번호를 입력하세요.">
        </div>
        <div id=login_btn>
        <input type ="submit"  value="로그인" id=B><br>
        </div>
          <div id=login_info>
        <a href="#ID" id="link" >회원가입</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <a href="#PW">아이디/비밀번호 찾기</a>
    </div>
    </div>
      </form>
       </div>
    </div>
    <hr style="border:1px solid; background-color: white; width: 1500px;">
<%@ include file="/WEB-INF/views/include/footer.html" %>
  
</body>
</html>