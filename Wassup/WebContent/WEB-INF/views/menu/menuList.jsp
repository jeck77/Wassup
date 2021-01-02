<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WASSUP - 메뉴 관리</title>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- 부트스트랩 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<!-- 제이쿼리 -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- 다음 주소 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8cb57d60bbbe20bede9fed1ef145271"></script>
    
<style>
 @font-face {
   font-family: 'nanumacB';
   src: url("/fonts/NanumSquare_acB.ttf") format('truetype');
}

@font-face {
   font-family : 'scDreamL';
   src : url("../fonts/SCDream3.otf") format('truetype');
}

@font-face {
   font-family : 'scDreamM';
   src : url("../fonts/SCDream6.otf") format('truetype');
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
        
    }
    #wapper{
        margin: auto;
        width: 1500px;
        height: 1300px;
    }
    #header{
        width: 100%;
        height: 17%;
    }
    #log{
        text-align: center;
        font-size: 100px;
        padding: 45px 100px 30px 500px;
        float: left;
        width: 75%;
        height: 100%;
        text-decoration: none;
    }

    #myinfo{
        float: left;
        width: 25%;
        height: 100%;
        text-align:left;
        line-height: 23;
    }

    #navi{
        width: 100%;
        height: 7%;
        /*background-color: gray;*/
    }
    #navi li {
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
    }
    .foodNav {
        display: none;
    }
    #navi li:hover ul {
        display: block;
    }
    #navi li:hover ul li {
       width:90%;
    }
    
    /* content 영역 */
    #content{
        height: 66%;
        font-family: nanumacB;
    }
    #head_content {
       margin-top:8%;
        height: 20%;
        text-align: center;
        padding: 40px;
        font-size: 40px;
    }
    #main_content {
        height: 60%;
    }
    #information {
        width: 60%;
        height: 100%;
        margin: auto;
    }
    #menu_list {
        text-align: center;
        width: 95%;
        height: 80%;
        margin-left: 22px;
        margin-bottom:4%;
        font-family : scDreamL;
    }
    #menu {
        width: 100%;
        border: 2px solid white;
        box-shadow: 0 0 10px #ED85FF, 0 0 10px #ED85FF,
            inset 0 0 10px #ED85FF, inset 0 0 10px #ED85FF;
    }
    #menu th {
        width: 27%;
        height: 50px;
        font-size: 20px;
        background-color: #E1E3E7;
        color: black;
        font-family : scDreamM;
    }
    #menu td {
        height: 20px;
        font-size: 15px;
        text-align: left;
        background-color: white;
        color: #272753;
        padding-left: 10px;
    }
    #menu td:last-child {
        height: 30px;
        font-size: 15px;
        text-align: center;
        background-color: white;
        color: #272753;
        padding-right: 10px;
    }
    #update_btn {
        float: left;
        margin-left: 20px;
    }
    #delete_btn {
        float: left;
        margin-left: 10px;
    }
    #add_btn {
        height: 100%;
        width: 20%;
        float: left;
        text-align: center;
        padding-bottom: 30px;
       
    }
    #add_menu {
        width: 100px;
        height: 60%;
        background-color: gold;
        border-radius: 7px;
        margin-left:23%;
    }
    #add {     
        width: 100px;
        height: 45px;
        background-color: gold;
        border: none;
        font-weight: 500;
        border-radius: 7px;
        line-height: 1.7;
        font-family : scDreamM;
    }
    #menu_footer {
        height: 15%;
    }
    #menu_page {
        height: 100%;
        width: 80%;
        margin-top:10px;
        padding-left: 430px;
        float: left;
    }
    #menu_page a {
       font-size: 20px;
    }
    
    .page_btn {
        width: 30px;
        height: 30px;
        font-size: 15px;
        background-color: white;
        border-radius: 5px;
    }
    .line {
        border: 1px solid;
        margin: 0px 70px 0px 70px;
    }
    #footer{
        height: 9%;
    }
   
</style> 
</head>
<body>
    <!-- 2699c271a5fff1aec7524b070032df00 -->
    <div id="wapper">
     <%@ include file="/WEB-INF/views/include/header.jsp"%>
      <%@ include file="/WEB-INF/views/include/nav.jsp"%>


        <div id="content">
            <div id="head_content">
                <b>메뉴관리</b>
                 <hr style="width:40%; margin-top:30px; border-color: white;">
            </div>
            <div id="main_content">
                <div id="information">
                    <div id="menu_list">
                        <table id="menu" border="1px" bordercolor="lightgray" class="table-Secondary">
                            <tr>
                                <th>메뉴명</th>
                                <th>메뉴 금액</th>
                                <th>소 카테고리</th>
                                <th>상태</th>
                            </tr>
                            <c:forEach items="${menuList}" var="selectList">
                               <tr>
                                  <td>${ selectList.menuName }</td>
                                  <td>${ selectList.price }원</td>
                                  <td>${ selectList.subMenuName }</td>
                                  <td>
                                     <form id="update_btn" action="/menu/updateform?menuCode=${selectList.menuCode}" method="post">
                                        <input type="submit" value="수정">
                                     </form>
                                     <form id="delete_btn" action="/menu/delete?menuCode=${selectList.menuCode }" method="post">
                                        <input type="submit" value="삭제">
                                     </form>
                                  </td>
                               </tr>
                            </c:forEach>
                        </table>
                    </div>
                    <div id="menu_footer">
                        <div id="menu_page">
                            ${pageNavi}
                        </div>
                        <div id="add_btn">
                           <form action="/menu/insertform">
                              <div id="add_menu">
                                 <input type="submit" id="add" value="메뉴 추가">
                              </div>
                           </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <hr style="border:1px solid; background-color: white; width: 1500px;">
      <%@ include file="/WEB-INF/views/include/footer.html" %>
    </div>
</body>
</html>