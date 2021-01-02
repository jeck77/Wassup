<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WASSUP - 트럭 상세페이지</title>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- 제이쿼리 -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- 다음 주소 -->
<script
   src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8cb57d60bbbe20bede9fed1ef145271&libraries=services,clusterer"></script>

<style>
@font-face {
   font-family: 'nanumacB';
   src: url("/fonts/NanumSquare_acB.ttf") format('truetype');
}

@font-face {
   font-family : 'scDreamL';
   src : url("/fonts/SCDream3.otf") format('truetype');
}

body {
   color: white;
   background: #333366;
    line-height:30px;

}
/* a 태그 주석 없애기 */
#div{
   width: 100%;
   height: 100%;
}

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
   /*        border:solid 1px;*/
}

#wapper {
   margin: auto;
   width: 1500px;
   height: 1500px;
}

#header {
   width: 100%;
   height: 15%;

}

#log {
   text-align: center;
   font-size: 100px;
   padding: 65px 100px 30px 500px;
   float: left;
   width: 75%;
   height: 100%;
   text-decoration: none;
}

#myinfo {
   float: left;
   width: 25%;
   height: 100%;
   text-align: left;
   line-height: 26;
}

#navi {
   width: 100%;
   height: 2.5%;
   /*background-color: gray;*/
}

#navi li {
   position: relative;
   z-index:100;
   background-color: white;
   float: left;
   list-style: none;
   width: 24%;
   height: 63px;
   line-height: 3.3;
   font-size: 19px;
   text-align: center;
   /*border: 1px solid gray;*/
}

#navi li a {
   display: block;
   color: black;
}

#navi li a:hover {
   background-color: azure;
   color: pink;
   position: relative;
}

.foodNav {
   display: none;
}

#navi li:hover ul {
   display: block;
}

#navi li:hover ul li {
   margin-left: 10px;
   width: 80%;
   position: relative;
}

#content {
   font-family:nanumacB;
   height: 73%;
   position: relative;
   z-index:1;
}

/*상점 상세 페이지*/
.store {
   /*        border: solid 1px white;*/
   position: relative;
   margin-top: 2.5%;
   margin-left: 3%;
   width: 65%;
   height: 90%;
   float: left;
   background-color: white;
   /*
                border: 4px solid white;
        box-shadow: 0 0 10px #ED85FF, 0 0 10px #ED85FF,
            inset 0 0 10px #ED85FF, inset 0 0 10px #ED85FF;
*/
}

.name {
   width: 92%;
   height: 20%;
   background: #333366;
   margin-top: 5%;
   margin-left: 4%;
   margin-right: 4%;
   border: none;
   box-shadow: none;
}

.left {
   width: 15%;
   height: 85%;
   background-color: #333366;
   font-size: 18px;
   text-align: center;
   /*        background-color: azure;*/
}

.logo {
   width: 95%;
   height: 70%;
   border-radius: 25%;
   margin-bottom: 8%;
   border: none;
   background:none;
}

.center {
   width: 45%;
   height: 80%;
   background-color: #333366;
   padding-top: 3px;
   font-size: 16px;
}

#heart {
   font-size: 25px;
   color: red;
}

#call {
   font-size: 29px;
   color: orange;
}

.right {
   width: 27%;
   height: 80%;
}

.menu {
   /*        border: solid 1px white;*/
   width: 92%;
   height: 68%;
   background: #333366;
   margin-top: 4%;
   margin-left: 4%;
   margin-right: 4%;
}

#mini_navi {
   border: solid 1px gray;
   width: 100%;
   height: 8%;
   font-family : scDreamL;
   font-size:15px;
}

#navi_left {
   border-bottom: solid 1px gray;
   border-right: solid 1px gray;
   float: left;
   width: 50%;
   height: 100%;
   text-align: center;
   padding-top: 11.5px;
   font-size: 23px;
}

#navi_right {
   border-bottom: solid 1px gray;
   border-left: solid 1px gray;
   float: left;
   width: 50%;
   height: 100%;
   text-align: center;
   padding-top: 11.5px;
   font-size: 23px;
}

#main_menu {
   border-bottom: solid 2px gray;
   width: 100%;
   height: 35%;
   font-size: 23px;
   padding-left: 3.1%;
   padding-top: 1%;
}

#menu_area {
   margin-top: 4px;
   width: 97%;
   height: 75%;
   /*        border: solid 1px red;*/
   background-color: white;
}

#identify {
   width: 23%;
   height: 100%;
   float: left;
   /*        border: solid 1px red;*/
   font-size: 18px;
   text-align: center;
   color: black;
   font-family :scDreamL;
}

.identify_img {
   width: 67%;
   height: 70%;
   margin-top : 7%;
   margin-left: 33px;
   border-radius: 25px;
   border: none;
   margin-bottom:3%;
}

#other_menu {
   /*        border: solid 1px red;*/
   width: 100%;
   height: 57%;
   padding-left: 3%;
   padding-top: 1%;
   font-size: 23px;
}

/* 스크롤 바 넓이 16px */
::-webkit-scrollbar {
   width: 16px;
}
/* 스크롤 바 기본 색상 */
::-webkit-scrollbar-track {
   background-color: thistle;
}
/* 스크롤 구간 배경 색상 */
::-webkit-scrollbar-thumb {
   background-color: slateblue;
}
/* 스크롤 바 위에 마우스 올렸을 때(hover) 색상 */
::-webkit-scrollbar-thumb:hover {
   background-color: blueviolet;
}
/* 스크롤 상하단 버튼 넓이와 색상 */
::-webkit-scrollbar-button:start:decrement, ::-webkit-scrollbar-button:end:increment
   {
   width: 16px;
   height: 16px;
   background-color: mediumpurple;
}

.submenu {
   /*        border: solid 1px white;*/
   list-style: none;
}

.list {
   /*        border: solid 1px white;*/
   height: 30%;
   font-size: 18px;
   list-style: none;
   font-family :scDreamL;
}

.top {
   height: 60px;
   background-color: #dedcee;
   padding-left: 0.5%;
   padding-top: 1%;
   margin-left: 1050px;
   margin-top: 70px;
   text-align: center;
   font-size: 28px;
   font-weight: bold;
   position: fixed;
   color: black;
   width: 360px;
   height: 60px;
   z-index: 60;
}

.bill {
   position: relative;
   position: fixed;
   width: 360px;
   height: 360px;
   margin-top: 70px;
   float: left;
   background-color: white;
   border-left: solid 20px white;
   color : #4C4C4C;
   text-align: left;
   font-size: 18px;
    padding-top: 60px;
   margin-left: 1050px;
}

.order {
   height: 60px;
   margin-top : 15px; 
   margin-bottom : 15px; 
   margin-right : 15px;
    /*  border : solid 1px black;  */
}

.updown{
   float: right;
   margin-top : 5px;
}

.amount{
float : right;
margin-top : 5px;
border:none;
text-align : center;
width : 30px;
}

#delete{
   float:left;
}

.sum {
   height: 60px;
   background-color: #fffcf0;
   padding-left: 10px;
   padding-top: 15px;
   margin-left: 1050px;
   margin-top: 430px;
   text-align: left;
   font-weight: bold;
   position: fixed;
   color : #4C4C4C;
   width: 360px;
   font-size: 20px;
}

#final{
   width: 360px;
   height: 60px; 
    margin-left: 1050px;
   position: fixed;
   margin-top: 505px;
    background-color: #fbd14b;
    border : none;
    outline: 0;

}

#bt1{
   width: 360px;
   height: 60px; 
   font-size:25px;
   font-weight:900;
    background-color: #fbd14b;
    outline: 0;
    border : none;
    color : white;
    
}

#footer {
   height: 9%;
}

   #star a{ text-decoration: none; color: gray; }
    
    #star a.on{ color: gold; }
    
   #star{
   float: inherit;
   }
      #map{
      width: 100%;
      height: 100%;
   }
</style>
<script type="text/javascript">
   var num = 0;
   var count = 1;

   $(function() {

      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
      mapOption = { 
          center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
          level: 3 // 지도의 확대 레벨
      };
      var map = new kakao.maps.Map(mapContainer, mapOption); 
      
   // 주소-좌표 변환 객체를 생성합니다
      var geocoder = new kakao.maps.services.Geocoder();

      // 주소로 좌표를 검색합니다
      geocoder.addressSearch("${sTruckName.truckAddr}", function(result, status) {

          // 정상적으로 검색이 완료됐으면 
           if (status === kakao.maps.services.Status.OK) {

              var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

              // 결과값으로 받은 위치를 마커로 표시합니다
              var marker = new kakao.maps.Marker({
                  map: map,
                  position: coords
              });

              // 인포윈도우로 장소에 대한 설명을 표시합니다
              var infowindow = new kakao.maps.InfoWindow({
                  content: '<div style="width:100px;text-align:center;color:black;">${sTruckName.sTruckName}</div>'
              });
              infowindow.open(map, marker);

              // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
              map.setCenter(coords);
          } 
      }); 
/*       var flag = 0;
   $("#map").click(function(){

      if(flag == 0){
      $("#map").css("width","300px");
      $("#map").css("height","300px");
      flag = 1;
      }else{
         $("#map").css("width","100%");
         $("#map").css("height","100%");
      flag = 0;
      }
   }) */
   $("#map").hover(function(){
      $("#map").css("width","300px");
      $("#map").css("height","300px");
   },function(){
      $("#map").css("width","100%");
      $("#map").css("height","100%");
   })
   
    var phone = $("#sphone").val();
     $("#call").click(function() {
        alert("이 트럭의 전화번호는 "+phone+" 입니다.");
     });
     
     /*    $(function(){
     $("#heart").click(function(e){
        
        e.preventDefault();
     });         
}); */

   <c:if test="${flag ne null}">
   $("#heart").html("♥");
   $("#heart").attr("onclick","delfav('${sTruckName.sTruckName}','ajax')")
   </c:if>
   
   
   var grade = Math.round(${grade});
   $("#"+grade).parent().children("a").removeClass("on");
   $("#"+grade).addClass("on").prevAll("a").addClass("on");
   
   console.log(grade);
      $(".list")
            .click(
                  function(event) {
                     var eventTarget = event.currentTarget;
                     var sCode = eventTarget.querySelector(".sCode").value;
                     var menuName = eventTarget
                           .querySelector(".menuName").value;
                     var menuCode = eventTarget
                           .querySelector(".menuCode").value;
                     var price = eventTarget.querySelector(".price").value;
                     
                     var ajaxcon = $.ajax({
                              url : "/shopping/cart",
                              type : "POST",
                              data : {
                                 "sCode" : sCode,
                                 "menuName" : menuName,
                                 "menuCode" : menuCode,
                                 "price" : price,
                              },
                              error : function(error, request, status) {
                                 alert("로그인을 해주세요");
                              },
                              success : function(data, request) {                                 
                                 ++num;
                                 let msg = '<div class="order">'

                                       + menuName + "<br>"
                                       + '<input type="button" class="updown" id="delete" value=" X " onclick="delFun('+menuCode+',this);">'+ '&nbsp;' + '&nbsp;'
                                       +  price + "원  "
                                       + '<input type="button" class="updown" id="plus'+ num +'" value=" + " onclick="plusFun('+menuCode+',this,'+price+');">'
                                       + '<input type="text" class="amount" name="amount" value="1" size="3">'
                                       + '<input type="button" class="updown" id="minus" value=" - " onclick="minusFun('+menuCode+',this);">'
                                       + '<input type="hidden" class="price2" id="price" value="'+price+'">'
                                       + '<input type="hidden" class="temp" id="temp" value="0"> </div>';
                                 $('.bill').append(msg);   
                                 var amount = document.getElementsByClassName("amount");
                                 var price2 = document.getElementsByClassName("price2");
                                  var temp = document.getElementsByClassName("temp"); 
                                 for(var i=0; i<amount.length; i++){
                                      var sum = parseInt(amount[i].value)*parseInt(price2[i].value);
                                     temp[i].value = sum;
                                 }
                                 var total = 0;
                                 for(var i =0; i<temp.length; i++){
                                    total += parseInt(temp[i].value);
                                 }
                                 var div = document.getElementById("total_div");
                                 div.innerHTML = "합계 : " + total + "원";
                                 
                              }
                           });

                  });
   });
   
   
   function plusFun(menuCode,e,price) {
      var value = $(e).next().val();
      $(e).next().val(++value);
      var updateMenu = menuCode;
      amount = parseInt(value);
      var price = parseInt(price);
      $.ajax({
         url : "/shopping/Update",
         type : "POST",
         data : {
            "amount" : amount,
            "updateMenu" : updateMenu,
         },
         error : function(error, request, status) {
            alert("수정 실패!");
            alert(error);
         },
         success : function(data, request) {

            var amount = document.getElementsByClassName("amount");
            var price = document.getElementsByClassName("price2");
             var temp = document.getElementsByClassName("temp"); 
            for(var i=0; i<amount.length; i++){
               var sum = parseInt(amount[i].value)*parseInt(price[i].value);
                temp[i].value = sum;
            }
            var total = 0;
            for(var i =0; i<temp.length; i++){
               total += parseInt(temp[i].value);
            }
            var div = document.getElementById("total_div");
            div.innerHTML = "합계 : " + total + "원";
         }
         
      });
   }

   
   function minusFun(menuCode,e,price) {
      var value = $(e).prev().val();
      $(e).prev().val(--value);
       var updateMenu = menuCode;
       amount = parseInt(value);
      var price = parseInt(price);

      $.ajax({
         url : "/shopping/Update",
         type : "POST",
         data : {
            "amount" : amount,
            "updateMenu" : updateMenu,
         },
         error : function(error, request, status) {
            alert("수정 실패!");
            alert(error);
         },
         success : function(data, request) {   
            var amount = document.getElementsByClassName("amount");
            var price = document.getElementsByClassName("price2");
             var temp = document.getElementsByClassName("temp"); 
            for(var i=0; i<amount.length; i++){
                /* console.log(i +" : " + amount[i].value + ", " + price[i].value); */
                 var sum = parseInt(amount[i].value)*parseInt(price[i].value);
                 /* console.log(sum) */ 
                temp[i].value = sum;
            }
            var total = 0;
            for(var i =0; i<temp.length; i++){
               total += parseInt(temp[i].value);
            }
            var div = document.getElementById("total_div");
            div.innerHTML = "합계 : " + total + "원";
         }   
      });
         
   }
   
   function delFun(menuCode,e) {
       var menuCode = menuCode;
       var $e = $(e);
       $(e).parents(".order").remove();
      $.ajax({
         url : "/shopping/delete",
         type : "POST",
         data : {
            "menuCode" : menuCode,
         },
         error : function(error, request, status) {
            alert("삭제 실패!");
            alert(error);
         },
         success : function(data, request) {
            var amount = document.getElementsByClassName("amount");
            var price2 = document.getElementsByClassName("price2");
             var temp = document.getElementsByClassName("temp"); 
            for(var i=0; i<amount.length; i++){
                 console.log(i +" : " + amount[i].value + ", " + price[i].value); 
                 var sum = parseInt(amount[i].value)*parseInt(price2[i].value);
                  console.log(sum) 
                temp[i].value = sum;
            }
            var total = 0;
            for(var i =0; i<temp.length; i++){
               total += parseInt(temp[i].value);
            }
            var div = document.getElementById("total_div");
            div.innerHTML = "합계 : " + total;
            
         }
         
      });
   }

   function delfav(sTruckName,ajax) {
       var truckName = sTruckName;
       var ajax = ajax;
      $.ajax({
         url : "/buyer/favorityDelete",
         type : "POST",
         data : {
            "truckName" : truckName,
            "ajax" : ajax,
         },
         error : function(error, request, status) {
            alert("추가 실패!");
            alert(error);
         },
         success : function(data, request) {
             alert("즐겨찾기 삭제 되었습니다.");
             $("#heart").html("♡");
             $("#heart").attr("onclick","fav('${sTruckName.sCode }','${sTruckName.sTruckName}','${sTruckName.truckAddr}')")
         }
         
      });
   }

   
   function fav(sCode,sTruckName,sTruckAddr) {
       var sCode = sCode;
       var sTruckName = sTruckName;
       var sTruckAddr = sTruckAddr;
      $.ajax({
         url : "/truck/fav",
         type : "POST",
         data : {
            "sCode" : sCode,
            "sTruckName" : sTruckName,
            "sTruckAddr" : sTruckAddr,
         },
         error : function(error, request, status) {
            alert("삭제 실패!");
            alert(error);
         },
         success : function(data, request) {
             alert("즐겨찾기 추가 되었습니다.");
             $("#heart").html("♥");
             $("#heart").attr("onclick","delfav('${sTruckName.sTruckName}','ajax')")

         }
         
      });
   }

   


</script>



</head>
<body>
   <!-- 2699c271a5fff1aec7524b070032df00 -->
   <div id="wapper">
      <%@ include file="/WEB-INF/views/include/header.jsp"%>
      <%@ include file="/WEB-INF/views/include/nav.jsp"%>
      <div id="content">
         <div class="store">
            <div class="store name">
               <div class="store left">
                  <div class="store logo"><img src="${sTruckName.logoPhotoPath}" style="width: 100%; height: 100%; border-radius: 20px; border:none;"></div>
                  <b>${sTruckName.sTruckName}
                  <input type = "hidden" name = "sTruckName" value="${sTruckName.sTruckName}">
                  <input type = "hidden" name = "sTruckAddr" value="${sTruckName.truckAddr}">
                  </b>
               </div>
               <div class="store center">
                  <input type="hidden" name="sPhone" id="sphone" value="${sTruckName.sPhone }">
                   <div id="star"> <!-- 부모 -->
                   <b>별점  </b>
                  <a id="1" value="1">★</a> <!-- 자식들-->
                  <a id="2" value="2">★</a> 
                  <a id="3" value="3">★</a>
                  <a id="4" value="4">★</a>
                  <a id="5" value="5">★</a> 
               </div>&nbsp;&nbsp;${grade } <br> <b>결제 방법</b> : 신용카드, 현장 결제<br> <b>전화하기</b>
                  <span id="call">☎</span> &nbsp;&nbsp; <b>찜하기</b><span id="heart"  onclick = "fav('${sTruckName.sCode }','${sTruckName.sTruckName}','${sTruckName.truckAddr}');">♡</span>
               </div>
               <div class="store right">
               
                     <div id="map"> </div>
      
      <script>

      
      </script>
               
                </div>
            </div>
            <div class="store menu">
               <div id="mini_navi">
                  <div id="navi_left">
                     <a href="/select/onetruck?sCode=${sTruckName.sCode }"><b>메뉴</b></a>
                  </div>
                  <div id="navi_right">
                     <a href="/select/truckreview?sCode=${sTruckName.sCode }"><b>리뷰</b></a>
                  </div>
               </div>
               
               <div id="main_menu">
                  <b>대표 메뉴</b>
                  <div id="menu_area">
                     <c:forEach items="${list }" var="mlist">
                        <c:if test="${mlist.subMenuCode eq 1}">
                           <div id="identify" class="submenu list" name="submenu">
                              <div class="identify_img"><img  src="${mlist.menuPhotoPath}" style="width: 100%; height: 100%; border-radius: 20px;"></div>
                              ${mlist.menuName} <input type="hidden" class="sCode"
                                 name="sCode" id="sCode" value="${mlist.sCode}"> <input
                                 type="hidden" class="menuCode" name="menuCode" id="menuCode"
                                 value="${mlist.menuCode}"> <input type="hidden"
                                 class="menuName" name="menuName" id="menuName"
                                 value="${mlist.menuName}"> <input type="hidden"
                                 class="price" name="price" id="price" value="${mlist.price}">
                           </div>
                        </c:if>
                     </c:forEach>
                  </div>
               </div>

               <div id="other_menu" style="overflow: auto;">
                  <%-- ${menuList[3].subMenuCode} --%>
                  <c:forEach items="${menuList }" var="mList">
                     <c:if test="${mList.subMenuCode eq 2 }">
                        <b>${mList.subMenuName}</b>
                        <ul class="submenu">
                           <c:forEach items="${list }" var="alist">
                              <c:if test="${alist.subMenuCode eq 2}">
                                 <li class="submenu list" name="submenu">
                                    ${alist.menuName } <input type="hidden" class="sCode"
                                    name="sCode" id="sCode" value="${alist.sCode}"> <input
                                    type="hidden" class="menuCode" name="menuCode" id="menuCode"
                                    value="${alist.menuCode}"> <input type="hidden"
                                    class="menuName" name="menuName" id="menuName"
                                    value="${alist.menuName}"> <input type="hidden"
                                    class="price" name="price" id="price" value="${alist.price}">

                                    <div style="float: right; padding-right: 10%">${alist.price }원</div>
                                 </li>
                              </c:if>
                           </c:forEach>
                        </ul>
                     </c:if>
                     <c:if test="${mList.subMenuCode eq 3 }">
                        <b>${mList.subMenuName}</b>
                        <ul class="submenu">
                           <c:forEach items="${list }" var="alist">
                              <c:if test="${alist.subMenuCode eq 3}">
                                 <li class="submenu list" name="submenu">
                                    ${alist.menuName } <input type="hidden" class="sCode"
                                    name="sCode" id="sCode" value="${alist.sCode}"> <input
                                    type="hidden" class="menuCode" name="menuCode" id="menuCode"
                                    value="${alist.menuCode}"> <input type="hidden"
                                    class="menuName" name="menuName" id="menuName"
                                    value="${alist.menuName}"> <input type="hidden"
                                    class="price" name="price" id="price" value="${alist.price}">

                                    <div style="float: right; padding-right: 10%">${alist.price }원</div>
                                 </li>
                              </c:if>
                           </c:forEach>
                        </ul>
                     </c:if>
                     <c:if test="${mList.subMenuCode eq 4 }">
                        <b>${mList.subMenuName}</b>
                        <ul class="submenu">
                           <c:forEach items="${list }" var="alist">
                              <c:if test="${alist.subMenuCode eq 4}">
                                 <li class="submenu list" name="submenu">
                                    ${alist.menuName } <input type="hidden" class="sCode"
                                    name="sCode" id="sCode" value="${alist.sCode}"> <input
                                    type="hidden" class="menuCode" name="menuCode" id="menuCode"
                                    value="${alist.menuCode}"> <input type="hidden"
                                    class="menuName" name="menuName" id="menuName"
                                    value="${alist.menuName}"> <input type="hidden"
                                    class="price" name="price" id="price" value="${alist.price}">

                                    <div style="float: right; padding-right: 10%">${alist.price }원</div>
                                 </li>
                              </c:if>
                           </c:forEach>
                        </ul>
                     </c:if>
                     <c:if test="${mList.subMenuCode eq 5 }">
                        <b>${mList.subMenuName}</b>
                        <ul class="submenu">
                           <c:forEach items="${list }" var="alist">
                              <c:if test="${alist.subMenuCode eq 5}">
                                 <li class="submenu list" name="submenu">
                                    ${alist.menuName } <input type="hidden" class="sCode"
                                    name="sCode" id="sCode" value="${alist.sCode}"> <input
                                    type="hidden" class="menuCode" name="menuCode" id="menuCode"
                                    value="${alist.menuCode}"> <input type="hidden"
                                    class="menuName" name="menuName" id="menuName"
                                    value="${alist.menuName}"> <input type="hidden"
                                    class="price" name="price" id="price" value="${alist.price}">

                                    <div style="float: right; padding-right: 10%">${alist.price }원</div>
                                 </li>
                              </c:if>
                           </c:forEach>
                        </ul>
                     </c:if>
                     <c:if test="${mList.subMenuCode eq 6 }">
                        <b>${mList.subMenuName}</b>
                        <ul class="submenu">
                           <c:forEach items="${list }" var="alist">
                              <c:if test="${alist.subMenuCode eq 6}">
                                 <li class="submenu list" name="submenu">
                                    ${alist.menuName } <input type="hidden" class="sCode"
                                    name="sCode" id="sCode" value="${alist.sCode}"> <input
                                    type="hidden" class="menuCode" name="menuCode" id="menuCode"
                                    value="${alist.menuCode}"> <input type="hidden"
                                    class="menuName" name="menuName" id="menuName"
                                    value="${alist.menuName}"> <input type="hidden"
                                    class="price" name="price" id="price" value="${alist.price}">

                                    <div style="float: right; padding-right: 10%">${alist.price }원</div>
                                 </li>
                              </c:if>
                           </c:forEach>
                        </ul>
                     </c:if>
                  </c:forEach>
               </div>
            </div>
         </div>
         
         
         <div class="top">
            <b>주 문 표</b>
         </div>
         <div class="bill" style="overflow: auto;"></div>
         <input type="hidden" id="temp" value="0">
         <div class="sum" id="total_div"></div>
         <div id ="final">
         <input type="button" id="bt1" value="주 문 하 기"  onclick="location.href='/buyer/orderForm?truckName=${sTruckName.sTruckName}'">
         </div>
         
      </div>
         <hr style="border:1px solid; background-color: white; width: 1500px;">
      <%@ include file="/WEB-INF/views/include/footer.html" %>
   </div>
</body>

</html>