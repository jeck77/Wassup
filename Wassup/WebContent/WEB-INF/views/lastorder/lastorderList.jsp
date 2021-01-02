<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WASSUP - 라스트오더 관리</title>
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
        /*border:solid 1px;*/
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
       font-family:nanumacB;
        height: 66%;
    }
    #head_content {
        height: 13%;
        text-align: center;
        margin-top:8%;
        font-size: 40px;
    }
    #main_content {
      font-family : scDreamL;
        height: 60%;
    }
    #information {
        width: 60%;
        height: 100%;
        margin: auto;
        
    }
    #lastorder_list {
        text-align: center;
        width: 95%;
        height: 80%;
        margin: 22px;
    }
    #menu {
        width: 100%;
        border: 4px solid white;
        box-shadow: 0 0 10px #ED85FF, 0 0 10px #ED85FF,
            inset 0 0 10px #ED85FF, inset 0 0 10px #ED85FF;
    }
    #menu th {
        width: 21%;
        height: 50px;
        font-size: 20px;
        background-color: #E1E3E7;
        color: black;
        font-family : scDreamM;
    }
    #menu td {
        height: 30px;
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
    ===
    #update_btn {
        float: left;
        margin-left: 20px;
    }
    #delete_btn {
        float: left;
        margin-left: 10px;
    }
    ===
    #add_btn {
        height: 100%;
        width: 20%;
        float: left;
        text-align: center;
        padding-bottom: 30px;
    }

    #add {
        width: 120px;
        height: 45px;
        background-color: gold;
        border: none;
        font-weight: 500;
        border-radius: 7px;
        line-height: 1.7;
        font-family : scDreamM;
    }
    #lastorder_footer {
        height: 10%;
    }
    #lastorder_page {
        height: 100%;
        width: 80%;
        padding-left: 430px;
        float: left;
    }
    #lastorder_page a {
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
    form {
       display: inline;
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
                <b>라스트오더 관리</b>
                 <hr style="width:40%; margin-top:30px; border-color: white;">
            </div>
            <div id="main_content">
                <div id="information">
                    <div id="lastorder_list">
                        <table id="menu" border="1px" bordercolor="lightgray" class="table-Secondary">
                            <tr>
                                <th>메뉴명</th>
                                <th>원가</th>
                                <th>할인율</th>
                                <th>재고</th>
                                <th>상태</th>
                            </tr>   
                            <c:forEach items="${lastList}" var="selectList">
                               <tr>
                                  <td>${ selectList.lastMenuName }</td>
                                  <td>${ selectList.lastPrice }원</td>
                                  <td>${ selectList.discount }%</td>
                                  <td>${ selectList.stock }EA</td>
                                  <td>
                                     <form id="update_btn" action="/lastorder/updateform?lastorderCode=${selectList.lastorderCode }" method="post">
                                        <input type="submit" value="수정">
                                     </form>
                                     <form id="delete_btn" action="/lastorder/delete2?lastorderCode=${selectList.lastorderCode }" method="post">
                                        <input type="submit" value="삭제">
                                     </form>
                                  </td>
                               </tr>
                            </c:forEach>
                        </table>
                    </div>
                    
                    <div id="lastorder_footer">
                        <div id="lastorder_page">
                            ${pageNavi}
                        </div>
                        <div id="add_btn">
                           <form action="/lastorder/select">
                              <div id="add_lastorder">
                                  <input type="submit" id="add" value="라스트오더 추가요">
                              </div>
                           </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       <%@ include file="/WEB-INF/views/include/footer.html" %>
    </div>
</body>
</html>