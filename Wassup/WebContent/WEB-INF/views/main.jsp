<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wassup</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 제이쿼리 -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- 다음 주소 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8cb57d60bbbe20bede9fed1ef145271&libraries=services,clusterer"></script>
<!-- 폼 넣어서 깨지는거 방지 -->
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
	src : url("../fonts/SCDream4.otf") format('truetype');
}
   input{
    color : black;
   }
    form {
    display:inline;
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
/*        border:solid 1px;*/
    }
    #wapper{
        margin: auto;
        width: 1500px;
        height: 1500px;
    }
    #header{
        width: 100%;
        height: 8%;
    }
    #log{
        text-align: center;
        font-size: 60px;
        padding: 25px 0px;
        float: left;
        width: 20%;
        height: 100%;
        text-decoration: none;
        font-family : Bangers;
    }
   #address{
        float: left;
        width: 60%;
        height: 100%;
        padding-top: 40px;
        padding-left:60px;
    }
    #search{
        background: lightgray;
        height: 90%;
        width: 90%;
        color : #000033;
        text-align : center;
        margin-top : -10px;
        padding-top : 5px;
        font-size : 12px;
    }
    #search span {
    	margin-right : 10%;
    	font-weight : bold;
    }
    #search_content1{
        width: 77%;
        height: 50%;
        float: left;
        margin-top : 5px;
        margin-left: 2%;
    }
    #search_content2{
  		margin-top : 5px;
        margin-left: 2%;
        width: 17%;
        height: 50%;
        float: left;
        color: black; 
        font-size: 17px;
    }
    #addr_input{
        width: 100%;
        height: 100%;
        border-radius: 5px;
        color: black;
        padding: 10px;
        padding-top:2%;
        font-size: 17px;
        border: none;
        font-family : nanumacEB;
    }
    #addr_btn{
        width: 100%;
        height: 100%;
        border-radius: 5px;
        background-color: gold;
        border: none;
        font-size: 13px;
        font-family : scDreamM;
        padding-top: 7%;
    }
    #myinfo{
        float: left;
        width: 20%;
        height: 100%;
        text-align: center;
        line-height: 15;
        font-family : nexonL;
    }
    
    #m_content{
        width: 100%;
        height: 30%;
        background: #dee5f1;
    }
    .aside{
        width: 15%;
        height: 100%;
        float: left;
    }
    #map{
        width: 70%;
        height: 100%;
        float: left;
    }
    
/*
    #menu_header{
        width: 100%;
        height: 5
        padding: 20px;
    }
*/
    #menu_side {
        width: 15%;
        height: 100%;
        float: left;

    }
      #menu_main{
        width: 75%;
        height: 100%;
        float: left;
        background: #E4E4E4;
        color: #000033;
        text-align: center;
        font-size: 35px;
        line-height: 50px;
        margin-top: 3%;
        margin-left: 13%;
        margin-right:13%;
        font-family : nexonM;
    }
    
    #event{
        background: gray;
        width: 60%;
        height: 80%;
        margin-top: 20%;
        margin-left: 15%;
        margin-right: 17%;
    }
    
  
    #menu_content{
        margin-top: 7.5%;
        width: 100%;
        height: 48%;
        font-family : scDreamL;
    }
    
    #menu_content_side{
        width: 20%;
        height: 100%;
        float: left;
    }
    #menu_content_side2{
        width: 20%;
        height: 100%;
        float: left;
    }
    #menu_content_main{
        width: 60%;
        height: 100%;
        float: left;
    }
    
    .cate{
        height: 33%;
/*        border: 1px solid white;*/
    }
    
    .list{
/*        border: 1px solid white;*/
      margin: 0px auto;
        width: 23%;
        height: 85%;
        display: block;
        float: left;
        background-color: rgb(70, 70, 140);
        border-radius: 20px;
        border: 1px solid white;
        box-shadow: 0 0 10px #ED85FF, 0 0 10px #ED85FF,
            inset 0 0 10px #ED85FF, inset 0 0 10px #ED85FF;
    }
    
    .list_div{
       text-align: center;
       font-size: 18px;
       line-height: 40px;
      margin-top : 5%;
    } 
    .center{
   margin-left : 10%;
   margin-right : 10%;
    }
    .left{
      margin-left : 8%;
    }
    #footer{
        height: 9%;
    }
   .img{
	display: block;
  	margin: 0px auto;
      width:70%;
      height:70%;
   }
   .img_modify{
      margin-top:10%;
      margin-bottom:5%;
      width:60%;
      height: 60%;
   }
   
</style>

<script>
<!-- 지도  생성 -->
$(document).ready(function(){
   
   <c:if test="${sessionScope.seller ne null && sessionScope.flag ne true}">
      var con_addr = confirm("트럭의 주소지가 ${sessionScope.seller.truckAddr}이 맞습니까?");
      if(con_addr==false){
         location.href="/seller/info";
      }else{
         location.href="/flag?flag=true"
      }
      </c:if>
   <c:if test="${sessionScope.buyer eq null }">
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.675819, 126.773377), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };
      // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
   var map = new kakao.maps.Map(mapContainer, mapOption); 

   </c:if>   
   
   <c:if test="${sessionScope.buyer ne null }">
   <c:if test="${roadName eq null}">
     var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
      mapOption = { 
          center: new kakao.maps.LatLng(37.675819, 126.773377), // 지도의 중심좌표
          level: 3 // 지도의 확대 레벨
      };
     var map = new kakao.maps.Map(mapContainer, mapOption); 
     
    var geocoder = new kakao.maps.services.Geocoder();
    var roadname = "${sessionScope.buyer.bRoadName}"
    console.log(roadname);
    $("#addr_btn").val(roadname+' 왔어?');
   geocoder.addressSearch(roadname, function(result, status) {

       // 정상적으로 검색이 완료됐으면 
        if (status === kakao.maps.services.Status.OK) {

           var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
           // 지도의 중심을 결과값으로 받은 위치로 

           map.setCenter(coords);
       }
        $("#addr_input").val(roadname);
         $("#korea").attr("href", "/search/truck?categoryCode=1&roadname="+roadname);
         $("#chinese").attr("href", "/search/truck?categoryCode=2&roadname="+roadname);
         $("#japan").attr("href", "/search/truck?categoryCode=3&roadname="+roadname);
         $("#pasta").attr("href", "/search/truck?categoryCode=4&roadname="+roadname);
         $("#chicken").attr("href", "/search/truck?categoryCode=5&roadname="+roadname);
         $("#dessert").attr("href", "/search/truck?categoryCode=6&roadname="+roadname);
         $("#alcohol").attr("href", "/search/truck?categoryCode=7&roadname="+roadname);
         $("#fastfood").attr("href", "/search/truck?categoryCode=8&roadname="+roadname);
   });
   </c:if>
   <c:if test="${roadName ne null}">
   var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
   mapOption = { 
       center: new kakao.maps.LatLng(37.675819, 126.773377), // 지도의 중심좌표
       level: 3 // 지도의 확대 레벨
   };
  var map = new kakao.maps.Map(mapContainer, mapOption); 
  
 var geocoder = new kakao.maps.services.Geocoder();
 var roadname = "${roadName}"
 console.log(roadname);
 $("#addr_btn").val(roadname+' 왔어?');
geocoder.addressSearch(roadname, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
        // 지도의 중심을 결과값으로 받은 위치로 

        map.setCenter(coords);
    }
     $("#addr_input").val(roadname);
      $("#korea").attr("href", "/search/truck?categoryCode=1&roadname="+roadname);
      $("#chinese").attr("href", "/search/truck?categoryCode=2&roadname="+roadname);
      $("#japan").attr("href", "/search/truck?categoryCode=3&roadname="+roadname);
      $("#pasta").attr("href", "/search/truck?categoryCode=4&roadname="+roadname);
      $("#chicken").attr("href", "/search/truck?categoryCode=5&roadname="+roadname);
      $("#dessert").attr("href", "/search/truck?categoryCode=6&roadname="+roadname);
      $("#alcohol").attr("href", "/search/truck?categoryCode=7&roadname="+roadname);
      $("#fastfood").attr("href", "/search/truck?categoryCode=8&roadname="+roadname);
});
   </c:if>
</c:if>
   
   var listData = [];
   var name = [];
   
    <c:forEach items="${sList }" var="seller">
    listData.push("${seller.truckAddr}");
    </c:forEach>
    
    
   // 주소 -> 좌표 전환
   var geocoder = new kakao.maps.services.Geocoder();
   
   listData.forEach(function(addr, index) {
      var name = $("#name"+index).val();
      var sCode = $("#sCode"+index).val();
      geocoder.addressSearch(addr, function(result, status) {
          if (status === daum.maps.services.Status.OK) {
              var coords = new daum.maps.LatLng(result[0].y, result[0].x);
           
           
              var marker = new daum.maps.Marker({
                  map: map,
                  position: coords
              });
              
              marker.setMap(map);
              
              var iwContent = '<div style="width:150px;text-align:center;padding:6px 0;color:black;"><a href="/select/onetruck?sCode='+sCode+'" style="color:black;">' + name + '</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
              iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다               
               var infowindow = new daum.maps.InfoWindow({
                   content: iwContent,
                   disableAutoPan: true,
                   removable : iwRemoveable
               });
               
               kakao.maps.event.addListener(marker, 'click', function() {
                   // 마커 위에 인포윈도우를 표시합니다
                   infowindow.open(map, marker);  
             });
               
           } 
       });
   });
   
   
   $("#addr_btn").click(function(){
        var geocoder = new kakao.maps.services.Geocoder();
        var roadname = $("#roadname").val();
        console.log(roadname);
        $("#addr_btn").val(roadname+' 왔어?');
       geocoder.addressSearch($("#addr_input").val(), function(result, status) {

           // 정상적으로 검색이 완료됐으면 
            if (status === kakao.maps.services.Status.OK) {

               var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
               // 지도의 중심을 결과값으로 받은 위치로 

               map.setCenter(coords);
           } 
       });
        $("#korea").attr("href", "/search/truck?categoryCode=1&roadname="+roadname);
        $("#chinese").attr("href", "/search/truck?categoryCode=2&roadname="+roadname);
        $("#japan").attr("href", "/search/truck?categoryCode=3&roadname="+roadname);
        $("#pasta").attr("href", "/search/truck?categoryCode=4&roadname="+roadname);
        $("#chicken").attr("href", "/search/truck?categoryCode=5&roadname="+roadname);
        $("#dessert").attr("href", "/search/truck?categoryCode=6&roadname="+roadname);
        $("#alcohol").attr("href", "/search/truck?categoryCode=7&roadname="+roadname);
        $("#fastfood").attr("href", "/search/truck?categoryCode=8&roadname="+roadname);
   });
   
   
});

function inputaddr(){
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
            console.log(data);
            $("#addr_input").val(data.address);
            $("#roadname").val(data.roadname);
            $("#addr_input").blur();
            $("#korea").attr("href", "/search/truck?categoryCode=1&roadname="+$("#roadname").val());
            $("#chinese").attr("href", "/search/truck?categoryCode=2&roadname="+$("#roadname").val());
            $("#japan").attr("href", "/search/truck?categoryCode=3&roadname="+$("#roadname").val());
            $("#pasta").attr("href", "/search/truck?categoryCode=4&roadname="+$("#roadname").val());
            $("#chicken").attr("href", "/search/truck?categoryCode=5&roadname="+$("#roadname").val());
            $("#dessert").attr("href", "/search/truck?categoryCode=6&roadname="+$("#roadname").val());
            $("#alcohol").attr("href", "/search/truck?categoryCode=7&roadname="+$("#roadname").val());
            $("#fastfood").attr("href", "/search/truck?categoryCode=8&roadname="+$("#roadname").val());
        }
    }).open();
}

</script>   
  
</head>
<body>
    <!-- 2699c271a5fff1aec7524b070032df00 -->
    
    <!-- 트럭 정보 저장 input -->
    <!-- 트럭 정보 저장 input -->
    <c:forEach items="${sList }" var="seller" varStatus="status">
    <input type="hidden" id='name${status.index }' value="${seller.sTruckName }">
    <input type="hidden" id='sCode${status.index }' value="${seller.sCode }">
    </c:forEach>
    
    
    <div id="wapper">
        <div id="header">
            <div id="log">
                <a href="/">wassup!</a>
            </div>
            <div id="address">
                <div id="search"> <span>현재 계신 주소를 입력해 주세요.</span>
                   
            <div id="search_content1">
            <input type="text" id="addr_input" onclick="inputaddr()" value="${roadName }">
            </div>
             <div id="search_content2">
                       <input type="hidden" id="roadname" value="${roadName }">
                       <input type="button" id="addr_btn" value="${roadName }왔어?" class="btn">
               </div>
                   </div>
            </div>
            <c:if test="${sessionScope.seller eq null &&  sessionScope.buyer eq null }">
            <div id="myinfo">
                <a href="/login.jsp">로그인·회원가입</a> / 
                <a href="/login.jsp">마이페이지</a> /
                <a href="/login.jsp">주문표</a>
            </div>
            </c:if>
            <c:if test="${sessionScope.seller ne null ||  sessionScope.buyer ne null }">
            <div id="myinfo">
               <c:if test="${sessionScope.seller ne null }">
               ${sessionScope.seller.sNick }님 /
               <a href="/logout">로그아웃</a> /
            <a href="/myInfo">마이페이지</a> /
                <a href="/seller/list/order">주문표</a>
               </c:if>
               <c:if test="${sessionScope.buyer ne null }">
                  ${sessionScope.buyer.bNick }님 /
               <a href="/logout">로그아웃</a> /
            <a href="/myInfo">마이페이지</a> /
                <a href="/buyer/list/order">주문 확인</a>
               </c:if>
            </div>
            </c:if>
        </div>
        <div id="m_content">
            <div class="aside"></div>
            <div id="map"></div>

            <div class="aside"></div>
        </div>
        <div id="menu_header">
            <div id="menu_side"></div>
            <div id="menu_main"><strong>menu</strong></div>
            <div id="menu_side"></div>
        </div>
        <div id="menu_content">
            <div id="menu_content_side">
                <div id="event"><img src="/img/category/event.jpg" style="width: 100%; height: 100%;"></div>
            </div>
            <div id="menu_content_main">
                <div class=cate id=category1>
                    <div class="list list_div left first"><a id="lastOrder" href="/lastorder/buyerview2"><img class="img" alt="실패" src="/img/category/세일.png">라스트 오더</a></div>
                    <div class="list list_div center first"><a id="korea" href="/search/truck?categoryCode=1&roadname=${roadName }"><img class="img" alt="실패" src="/img/category/korea.png">한식</a></div>
                    <div class="list list_div first"><a id="chinese" href="/search/truck?categoryCode=2&roadname=${roadName }"><img class="img" alt="실패" src="/img/category/Chinese.png">중식</a></div>
                </div>
                <div class=cate id=category2>
                    <div class="list list_div left"><a id="japan"href="/search/truck?categoryCode=3&roadname=${roadName }"><img class="img" alt="실패" src="/img/category/japan.png">일식</a></div>
                    <div class="list list_div center"><a id="pasta" href="/search/truck?categoryCode=4&roadname=${roadName }"><img class="img" alt="실패" src="/img/category/pasta.png">양식</a></div>
                    <div class="list list_div"><a id="chicken" href="/search/truck?categoryCode=5&roadname=${roadName }"><img class ="img img_modify" alt="실패" src="/img/category/Chicken.png">치킨</a></div>
                </div>
                <div class = cate id=category3>
                    <div class="list list_div left"><a id="dessert" href="/search/truck?categoryCode=6&roadname=${roadName }"><img class ="img img_modify" alt="실패" src="/img/category/dessert.png">디저트</a></div>
                    <div class="list list_div center"><a id="alcohol" href="/search/truck?categoryCode=7&roadname=${roadName }"><img class="img" alt="실패" src="/img/category/alcohol.png">주류</a></div>
                    <div class="list list_div"><a id="fastfood" href="/search/truck?categoryCode=8&roadname=${roadName }"><img class="img" alt="실패" src="/img/category/fastfood.png">패스트 푸드</a></div>
                </div>
            </div>
            <div id="menu_content_side2"></div>
        </div>

    </div>
<hr style="border:1px solid; background-color: white; width: 1500px;">
<%@ include file="/WEB-INF/views/include/footer.html" %>
</body>
</html>