<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WASSUP - 판매자 리뷰 답글</title>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- 제이쿼리 -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- 다음 주소 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8cb57d60bbbe20bede9fed1ef145271"></script>
    
<script>

$(document).ready(function(){
		var grade = $("#gradeValue").val();
		$("#"+grade).parent().children("a").removeClass("on");
		$("#"+grade).addClass("on").prevAll("a").addClass("on");
});


</script>

<style>
@font-face {
	font-family : 'Bangers';
	src : url("/fonts/Bangers-Regular.ttf") format('truetype');
}
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
@font-face {
	font-family : 'nanumacB';
	src : url("/fonts/NanumSquare_acB.ttf") format('truetype');
}
@font-face {
	font-family : 'nanumacEB';
	src : url("/fonts/NanumSquare_acEB.ttf") format('truetype');
}
@font-face {
	font-family : 'nanumEB';
	src : url("/fonts/NanumSquareEB.ttf") format('truetype');
}
@font-face {
	font-family : 'scDreamEB';
	src : url("/fonts/SCDream9.otf") format('truetype');
}
@font-face {
	font-family : 'scDreamM';
	src : url("/fonts/SCDream6.otf") format('truetype');
}
@font-face {
	font-family : 'scDreamL';
	src : url("/fonts/SCDream3.otf") format('truetype');
}     
    form {
		display: inline;
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
        height: 1500px;
    }

	#content{
		margin: auto;
		width:80%;
		margin-top: 10%;
		height: 60%;
		text-align: center;
		font-size: 40px;
        font-family : nanumacB;
		
	}
	#content_main{
		margin: auto;
		margin-top: 5%;
		width: 70%;
		height: 80%;
		background-color: white;
		border-radius: 20px;
	}

	#star{
	width:100%;
	height: 10%;
	}

	#star a{ text-decoration: none; color: gray; }
    
    #star a.on{ color: gold; }
    

	#btn_content{
        height: 10%;
        text-align: center;
    }
    #btn_div {
        margin-left: 300px;
        margin-top:40px;
    }
	.btn {
        margin: 0px 0px 50px 100px;
        height: 70px;
        width: 140px;
        background-color: #272753;
        color : white;
        border: 4.5px solid white;
        font-size: 22px;
        float: left;
        border-radius: 5px;
        font-family: scDreamL;
    }
	#buyer_review{
		width: 100%;
		height: 50%;
		color: black;
		padding-top: 2%;
		line-height: 50px;
		font-family : rKorea;
		font-size:30px;
	}
	div{
/*   	border: 1px solid black;   */
	}
	#buyer_content{
		width: 100%;
		height: 80%;
	}
	#buyer_img{
		margin-top:5%;
		margin-left:3.5%;
		width: 40%;
		height: 70%;
		float: left;
	}
	#buyer_cont{
		margin-top: 9%;
		margin-left: 3%;
		width: 52%;
		height: 55%;
		float: left;
	}
	#img{
		width: 100%;
		height: 100%;
	}
	textarea{
	 resize: none;
	 width: 85%;
	 height: 77%;
	 font-size: 20px;
	 background: #e9e9e9;
	 outline: none;
	 border: none;
		font-size: 20px;
		font-family : scDreamL;
	padding : 20px;
	}
	#reply_content{
		margin-top: 30px;
		width: 100%;
		height: 100%;
		color : black;
	}
	#reply_textarea{
		margin: auto;
		margin-top: 3%;
		width: 80%;
		height: 50%;
	}
</style> 
</head>
<body>

    <!-- 2699c271a5fff1aec7524b070032df00 -->
    <div id="wapper">
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/nav.jsp" %>
        
		<form action="/seller/replyInsert" method="post">
        <div id="content">
                        <b>리뷰 답글 작성</b>
                <hr style="width:40%; margin-top:30px;">
        	<div id="content_main">
				<div id="buyer_review">
					<b>${review.truckName }</b><br>
					 <div id="star"> <!-- 부모 -->
						<a id="1" value="1" class="on">★</a> <!-- 자식들-->
						<a id="2" value="2">★</a> 
						<a id="3" value="3">★</a>
						<a id="4" value="4">★</a>
						<a id="5" value="5">★</a> 
						<input type="hidden" name="grade" id="gradeValue" value ="${review.grade }">
					</div>
					<div id="buyer_content">
						<div id="buyer_img">
							<img src="${review.reviewPhotoPath }" id="img">
						</div>
						<div id="buyer_cont">
							<textarea readonly="readonly" >${review.reviewContent }</textarea>
						</div>
					</div>
					<hr style="width: 80%;">
					<div id="reply_content">
        				사장님 답글<br>
        				<div id="reply_textarea">
        					<input type="hidden" name="reviewCode" value="${review.reviewCode }">
        				<textarea name="replyContents"></textarea>
        				</div>
        			</div>
				</div>
        	</div>
	
        	<div id="btn_content">
                <div id="btn_div">
                        <input type="submit" value="작성" class="btn">
                        <input type="reset" value="취소" class="btn">
            	</div>
        	</div>
        	

        </div>
        </form>
        </div>
<hr style="border:1px solid; background-color: white; width: 1500px;">
<%@ include file="/WEB-INF/views/include/footer.html" %>
</body>
</html>