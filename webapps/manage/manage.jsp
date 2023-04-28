<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%
	String pid = "";
	if(session.getAttribute("id")!=null){
		pid = (String) session.getAttribute("id");
	}
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>고객지원</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>고객지원</title>
    
    <meta name="subject" content="롯데글로벌로지스 벤치마킹 사이트">
    <meta name="keywords" content="롯데글로벌로지스, 택배, 운송, 서비스">
    <meta name="description" content="롯데글로벌로지스 홈페이지에 방문하신 것을 환영합니다.">
    <meta name="author" content="by. jeniy01">
    
    <link rel="shortcut icon" href="<%=path %>/images/favicon.ico">
    <!-- https://jeniy01.github.io/web1 -->
    <!-- 오픈그래프 설정 -->
    <meta name="og:site_name" content="롯데글로벌로지스">
    <meta name="og:title" content="포트폴리오 - 롯데글로벌로지스">
    <meta name="og:description" content="롯데글로벌로지스 홈페이지에 방문하신 것을 환영합니다.">
    <meta name="og:url" content="https://jeniy01.github.io/web1">
    <meta name="og:image" content="<%=path %>/images/thumbnail.jpg">
   
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=path %>/common.css">
    <link rel="stylesheet" href="<%=path %>/sub_common.css">
    <link rel="stylesheet" href="<%=path %>/sublayout.css">
    <style>
    .vs { height:40vh; }
    .content { background-image: url("../images/top_career.jpg"); }
    table { display:table; width:900px; margin:10px auto; border-bottom:1px solid #333; border-collapse:collapse; }
	tr { display:table-row; }
	th, td { display:table-cell; border-top:1px solid #333; text-align:center; line-height:36px; }
	th { background-color:#333; color:#fff; }
    .table { width:900px; margin:4px auto; padding-top:20px; border-top:2px solid #333; }
    .lb { display:block;  font-size:20px; }
    .indata { display:inline-block; width:300px; height:24px; line-height:24px; padding:10px; }
    .btn { display:inline-block; outline:none; border:none; border-radius:8px; margin:16px; text-align: center; padding:10px 20px;  cursor:pointer; }
    .btn-primary { background: -moz-linear-gradient(top, #ca4747 0%, #c73333 100%); background: -webkit-linear-gradient(top, #ca4747 0%,#c73333 100%); background: linear-gradient(to bottom, #ca4747 0%,#c73333 100%); color:#fff; }
    .btn-cancle { background: -moz-linear-gradient(top, #afafaf 0%, #797979 44%, #a7a7a7 100%); background: -webkit-linear-gradient(top, #afafaf 0%,#797979 44%,#a7a7a7 100%); background: linear-gradient(to bottom, #afafaf 0%,#797979 44%,#a7a7a7 100%); color:#fff; }
    .page_tit { text-align:center; font-size:32px; padding-top:80px; padding-bottom:30px; }
    .tb_wrap { clear:both; width:900px; margin:10px auto; border-top:2px solid #333; padding-top:15px; }
   	.detail { display:block; text-align:center; max-width:120px; min-width:90px; padding:12px; font-size:24px; background-color: rgba(7, 93, 70, 0.9); color:#fff; border-radius:30px; margin:42px auto; }
   	#page2, #page4 { background-color:rgba(240,240,240,0.8); }
   	.table.dataTable thead>tr>th { text-align:center; }
   	</style>
</head>
<body>
    <div class="container">
		<%@ include file="../header.jsp" %>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <h1 class="tit">MANAGEMENT</h1>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_tit">전략</h2>
                <article class="grid3" style="margin:10px auto;">

	                <a href="" class="detail">더 보기</a>
	            </article>
			</section>
            <section class="page" id="page2">
                <h2 class="page_tit">주요활동 및 성과</h2>
                <article class="grid3" style="margin:10px auto;">
	                	
	                <a href="" class="detail">더 보기</a>
	            </article>
			</section>
            <section class="page" id="page3">
                <h2 class="page_tit">윤리경영</h2>
				<article class="grid3" style="width:1280px; margin:10px auto;">

					<a href="" class="detail">더 보기</a>
				</article>
			</section>
            <section class="page" id="page4">
                <h2 class="page_tit">사회공헌</h2>
				<article class="grid3" style="width:1280px; margin:10px auto;">

					<a href="" class="detail">더 보기</a>
				</article>
			</section>
            <section class="page" id="page5">
                <h2 class="page_tit">보고서 및 정책</h2>
				<article class="grid3" style="width:1280px; margin:10px auto;">

					<a href="" class="detail">더 보기</a>
				</article>
			</section>
		</div>
        <%@ include file="../footer.jsp" %>
	</div>
</body>
</html>