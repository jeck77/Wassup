<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
@font-face {
	font-family : 'rKorea';
	src : url("/fonts/RecipekoreaFONT.ttf") format('truetype');
}
@font-face {
	font-family : 'nexonM';
	src : url("/fonts/NEXON Lv2 Gothic Medium.ttf") format('truetype');
}
@font-face {
	font-family : 'nexonL';
	src : url("/fonts/NEXON Lv2 Gothic Light.ttf") format('truetype');
}
@font-face {
	font-family : 'nexonB';
	src : url("/fonts/NEXON Lv2 Gothic Bold.ttf") format('truetype');
}
	#header{
        width: 100%;
        height: 230px;
    }
	#log a {
		font-family: Bangers;
	}
    #log{
        text-align: center;
        font-size: 100px;
        padding: 65px 100px 30px 500px;
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
        line-height: 26;
        font-family: nexonL;
    }
	
</style>

<div id="header">
	<div id="log">
		<a href="/">wassup!</a>
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