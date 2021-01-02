<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WASSUP - 트럭 목록 페이지</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 제이쿼리 -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
@font-face {
   font-family: 'nanumacB';
   src: url("/fonts/NanumSquare_acB.ttf") format('truetype');
}

body {
   color: white;
   background: #333366;
}
/* a 태그 주석 없애기 */
a:link {
   text-decoration: none;
   color: white;
}

a:visited {
   text-decoration: none;
   color: white;
}

a:active {
   text-decoration: none;
   color: white;
}

a:hover {
   text-decoration: none;
   color: white;
}

div {
   border-color: white;
   box-sizing: border-box;
}

#wapper {
   width: 1500px;
   height: 1500px;
   margin: auto;
}

 #contents {
   width: 100%;
   height: 82%;
   font-family: nanumacB;
   margin-top:3%;
}

.side {
   width: 14%;
   height: 95%;
   float: left;
}


   .contents_main{
        text-align: center;
        font-size: 40px;
        width: 72%;
        height: 95%;
        float: left;
    } 
    .contents_box{
       margin-left:10%;
        width: 80%;
        height: 80%;
        margin-top:5%;
        box-shadow: 0 0 10px #ED85FF, 0 0 10px #ED85FF,inset 0 0 10px #ED85FF, inset 0 0 10px #ED85FF;
        border: 2px solid white;
        background-color: #272753;
    }
    
    .contents_header{
        margin-top: 8%;
        margin-bottom:3%;
        width: 100%;
        height: 6%;
    }
    
    .truck{
        width: 100%;
        height: 20%;
        border-bottom: 1px solid white;
    }
    
    .page{
        width: 100%;
        height: 3%;
        padding-top: 10px;
        font-size: 20px;
    }
    
    .truck_img{
        width: 30%;
        height: 100%;
        float: left;
    }
    .truck_detail{
        padding: 20px;
        width: 70%;
        height: 100%;
        float: left;
        color: white;
        text-align: left;
        font-size: 30px;
    }
    
    #summay{
        padding-top: 10px;
        font-size: 18px;
    }
   
    .img_area{
        margin: 7%;
        width: 55%;
        height: 75%;
        margin-left:90px;
        margin-top:20px;
    }
    img {
    	width: 100%;
        height: 100%;
    }


      .top10{
       margin-top:10%;
       margin-left: 3%;
       width:200px;
       height:300px;
       position: fixed;
    border: 1px solid yellow;
       box-shadow: 0 0 3px #ED85FF, 0 0 3px #ED85FF,inset 0 0 3px #ED85FF, inset 0 0 3px #ED85FF;
    }
    .top{
       background-color : rgb(70, 70, 140);
       width:100%;
       height: 10%;
       text-align: center;
       line-height:35px;
       font-size: 17px;
       border: 1px solid yellow;
       box-shadow: 0 0 3px #ED85FF, 0 0 3px #ED85FF,inset 0 0 3px #ED85FF, inset 0 0 3px #ED85FF;
    }
    .top_content{
       margin-top:20px;
       margin-left:5%;
       width:90%;
       height: 30px;
       font-size: 16px;
    } 
    
    #footer {
      margin: auto;
      margin-top: 10px;
        width: 1500px;
        height: 150px;
   }
   #fotter_left{
      width: 60%;
      float: left;
      height:80%;
   }
   #footer_img {
      width: 80%;
      margin-bottom: 2%;
      float: left;
   }
   #social {
       margin-left : 25%;
      margin-top:100px;
      height:50px;
      width: 15%;
      float: left;
   }
   .social_img {
      width: 50px;
      height: 50px;
      float: left;
   }
    
</style>
<title>상점 검색 페이지</title>
</head>
<body>
   <div id="wapper">
      <%@ include file="/WEB-INF/views/include/header.jsp"%>
      <%@ include file="/WEB-INF/views/include/nav.jsp"%>
      <div id="contents">
         <div class="contents side">
             <div class="top10">
               <div class="top" style="height: 40px; line-height: 37px">
                  ${roadName } ${sList[1].categoryName} Top5</div>
               <c:forEach items="${rank}" varStatus="status" var="rank">
                  <c:if test="${ status.index == 0}">
                     <a href="/select/onetruck?sCode=${rank.sCode}"><div
                           class="top_content first">${status.count }등
                           ${rank.truckName }</div></a>
                  </c:if>
                  <c:if test="${ status.index > 0}">
                     <a href="/select/onetruck?sCode=${rank.sCode}"><div
                           class="top_content">${status.count }등${rank.truckName }</div></a>
                  </c:if>
               </c:forEach>
            </div> 
         </div>
         <div class="contents_main">
             <div class="contents_header">
               ${sList[0].categoryName }
               <hr style="width: 40%; margin-top:10px;">
            </div>
            <div class="contents_box">
               <c:forEach items="${sList}" var="seller">
                  <div class="truck">
                     <div class="truck_img">
                        <div class ="img_area"><img src="${seller.logoPhotoPath }"></div>                     
                     </div>
                     <div class="truck_detail">
                        <a href="/select/onetruck?sCode=${seller.sCode}"><span
                           id="sTruckName">${seller.sTruckName } </span></a> <br> <span
                           id="summay">${seller.truckAddr }<br>${seller.sPhone }<br></span>
                     </div>
                  </div>
               </c:forEach>
            </div>
            <div class="page">${pageNavi }</div> 
         </div>
          <div class="contents side"></div> 
      </div>

   </div>
   <hr   style="border: 1px solid; background-color: white; width: 1500px; margin-top: 100px;">
   <div id="footer">
      <div id="fotter_left">   <img id="footer_img" src="/img/category/footer_img.png"></div>

   <div id="social">
      <img class="social_img" src="/img/category/call.png">
      <img class="social_img" src="/img/category/twitter.png">
      <img class="social_img" src="/img/category/insta.png">
      <img class="social_img" src="/img/category/youtube.png">
   </div>
</div>
</body>
</html>