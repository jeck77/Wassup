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
    #wapper{
        margin: auto;
        width: 1500px;
        height: 1300px;
    }
    
    /* content 영역 */
    #content{
        height: 66%;
        font-family : scDreamL;
    }
    #head_content {
        height: 20%;
        text-align: center;
        padding: 40px;
        font-size: 40px;
        margin-top: 8%;
        font-family : nanumacB;
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
        margin: 22px;
    }
    #menu {
        width: 100%;
        border: 4px solid white;
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
        height: 45px;
        background-color: gold;
        border-radius: 7px;
    }
    #menu_footer {
        height: 10%;
    }
    #menu_page {
        height: 100%;
        width: 80%;
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
    #insert_btn {
    	text-align : center;
    }
    #insert {
    	font-family : scDreamM;
    	background : #333366;
    	color : white;
    	border: none;
    	border-radius :4px;
    }
</style> 
</head>
<body>
    <!-- 2699c271a5fff1aec7524b070032df00 -->
    <div id="wapper">
        <%@ include file="/WEB-INF/views/include/header.jsp" %>
		<%@ include file="/WEB-INF/views/include/nav.jsp" %>
        <div id="content">
            <div id="head_content">
                <b>라스트오더 관리</b>
                 <hr style="width:40%; margin-top:30px; border-color: white;">
            </div>
            <div id="main_content">
                <div id="information">
                    <div id="menu_list">
                        <table id="menu" border="1px" bordercolor="lightgray" class="table-Secondary">
                            <tr>
                                <th>메뉴명</th>
                                <th>가격</th>
                                <th>소 카테고리</th>
                                <th>상태</th>
                            </tr>
                            <c:forEach items="${menuList}" var="selectMenuList">
	                            <tr>
	                            	<td>${ selectMenuList.menuName }</td>
                            		<td>${ selectMenuList.price }원</td>
                            		<td>${ selectMenuList.subMenuName }</td>
                            		<td id="insert_btn">
                            			<form id="insert_btn" action="/lastorder/insertform?menuCode=${selectMenuList.menuCode }" method="post">
                            				<input type="submit" id="insert" value="라스트오더 등록">
                            			</form>
                            		</td>
	                            </tr>
                            </c:forEach>
                        </table>
                    </div>
                    
                    <div id="menu_footer">
                        <div id="menu_page">
                            ${pageNavi2 }
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
