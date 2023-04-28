<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회사소개</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회사소개</title>
    
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
    <link rel="stylesheet" href="<%=path %>/main.css">
    <link rel="stylesheet" href="<%=path %>/sub_common.css">
    <link rel="stylesheet" href="<%=path %>/sublayout.css">
    <style>
    /* .vs { height:40vh; } */
    .content { background-image: url("../images/img_business_visual01.jpg"); }
    #page1 .grid3 li { text-align: center; box-sizing:border-box; border:1px solid #999; height: 300px; }
    #page1 .grid3 .grid_tit { font-size:28px; font-weight:200; color:#222; padding-top:50px; }
    #page1 .grid3 .grid_tit:after { content:""; display:block; clear:both; width:80px; height:5px; background-color:rgb(187, 0, 0); margin:30px auto; }
    #page1 .grid3 .grid_com { padding-top: 15px; }

    #page2 { background-image: url("../images/img_field2_1.jpg"); background-position:center center; background-size:100% auto; background-attachment: fixed; }
    #page2 .page_comment { text-shadow:1px 1px 3px #333; color:#fff; }

    #page3 { background-color:#f1f1f1; color:#222; }
    #page3 .page_wrap { width: 1280px; padding-top:10px; }
    #page3 .tit_box { float:left; }
    #page3 .sub_title { font-size:50px; color: #222; font-weight: 100; }
    #page3 .main_title { font-size:55px; color: #000; font-weight:700; float:left; }
    .grid_fr { clear:both; width: 1280px; }
    .grid_fr .grid_box { clear:both; width: 1280px; padding-top: 40px; }
    .grid_box li { width: 410px; margin-right: 25px; float:left; height: 624px; }
    .grid_box li:last-child { margin-right: 0; }
    .grid_box li a { display:block; color:#999; background-position:center center; background-repeat: no-repeat; border-radius:40px; margin-top:25px; height:280px; padding-top:6em;  padding-left:2em; font-size:30px; box-sizing:border-box; }
    .grid_box li a.item1 { background-image: url("../images/img_innovation05_01.jpg"); }
    .grid_box li a.item2 { background-image: url("../images/img_innovation06_01.jpg"); }
    .grid_box li a .grid_tit { line-height: 1.8; font-size:28px; font-weight:bold; padding-left:300px; text-shadow:1px 1px 3px #222; color:#fff; }
    .grid_box li a.item3 .grid_tit { padding-top:9.2em; line-height: 1.8; }
    .grid_box li a .grid_com { font-size:21px; padding-left:300px; text-shadow:1px 1px 3px #333; color:#fff; }

    #page4 .grid4 li { text-align: center; box-sizing:border-box; border:1px solid #eee; height: 300px; }
    #page4 .grid4 .grid_tit { font-size:28px; font-weight:200; color:rgb(187, 0, 0); padding-top:50px; }
    #page4 .grid4 .grid_tit:after { content:""; display:block; clear:both; width:80px; height:5px; background-color:rgb(187, 0, 0); margin:30px auto; }
    #page4 .grid4 .grid_com { padding-top: 14px; }
    #page4 .page_comment { padding-left:120px; }
    .grid_fr .grid_box li { width: 1280px; float:left; height: 550px; }
    #page4 .grid_fr .grid_box li .pic { display:block; width: 800px; height: 500px; padding-left:240px; }

    #page5 .grid4 li { text-align: center; box-sizing:border-box; border:1px solid #eee; height: 300px; }
    #page5 .grid4 .grid_tit { font-size:28px; font-weight:200; color:rgb(187, 0, 0); padding-top:50px; }
    #page5 .grid4 .grid_tit:after { content:""; display:block; clear:both; width:80px; height:5px; background-color:rgb(187, 0, 0); margin:30px auto; }
    #page5 .grid4 .grid_com { padding-top: 14px; }
    #page5 .page_comment { padding-right:245px; }
    .grid_fr .grid_box li { width: 1280px; float:left; height: 550px; }
    .grid_fr .grid_box li .pic { display:block; width: 900px; height: 500px; padding-left:130px; }
    /* .page_tit { text-align:center; font-size:32px; padding-top:60px; } */
    </style>
</head>
<body>
	<div class="container">
		<%@ include file="../header.jsp" %>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <h1 class="tit">사업영역</h1>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_tit">택배</h2>
                <div class="page_wrap">
                    <article class="grid3">
                        <ul class="grid_box">
                            <li>
                                <div>
                                    <h3 class="grid_tit">개인택배서비스</h3>
                                    <p class="grid_com">전국 1만여 취급점택배를 통해<br>
                                        개인고객에게 편리한 택배 서비스를<br>
                                        제공하고 있습니다.
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">B2C택배</h3>
                                    <p class="grid_com">첨단 화물 추적 시스템을 통해<br>
                                        화물 이동현황을 웹상에서 24시간 실시간으로<br>
                                        모니터링이 가능합니다.
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">B2B(의류)택배</h3>
                                    <p class="grid_com">물류센터, 매장, 고객을 연결하는 특화 서비스로<br>
                                        전국 최고 서비스를 제공합니다.
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </article>
                </div>
            </section>
            <section class="page" id="page2">
                <h2 class="page_tit">SCM</h2>
                <div class="page_wrap">
                    <p class="page_comment">
                        고객이 안심하고 상품을 보관할 수 있는 상온, 저온, 냉동 창고를 제공하며,<br>
                        전문화된 인력이 고객의 업무역량을 극대화 하는 창고운영 서비스를 제공합니다.<br>
                        물류전문가 그룹의 컨설팅을 통해 화주사의 현행 물류 프로세스를<br>
                        획기적으로 개선하고 이를 통해 물류 운영 효율화와<br>
                        비용 절감을 고객사에 실현시켜 드리고 있습니다.
                    </p>
                </div>
            </section>
            <section class="page" id="page3">
                <h2 class="page_tit">글로벌</h2>
                <div class="page_wrap">
                    <article class="grid_fr">
                        <ul class="grid_box">
                            <li>
                                <a href="" class="item1">
                                    <h3 class="grid_tit">해운포워딩</h3>
                                    <p class="grid_com">다양한 해상 운송 수단과 물류 기술을 결합한 One-Stop Service로<br>
                                        고객 여러분께 최상의 해상운송 서비스를 제공합니다.
                                    </p>
                                </a>
                                <a href="" class="item2">
                                    <h3 class="grid_tit">항공포워딩</h3>
                                    <p class="grid_com">항공운송에 특화된 하이테크 제품부터 프로젝트성 설비운송까지 전문<br>
                                        Know-How를 보유하고 있습니다.
                                    </p>
                                </a>
                            </li>
                        </ul>
                    </article>
                </div>
            </section>
            <section class="page" id="page4">
                <h2 class="page_tit">컨설팅</h2>
                <div class="page_wrap">
                    <p class="page_comment">
                        물류 진단 및 프로세스 개선을 통한 운영 효율화, 최적화, 비용 절감 등<br>
                        최적의 컨설팅 서비스를 제공합니다.
                    </p>
                <article class="grid_fr">
                    <ul class="grid_box">
                        <li class="item1">
                            <img src="../images/img_flow_diagram08_03.jpg" alt="esg" class="pic">
                        </li>
                    </ul>
                </article>
                </div>
            </section>
            <section class="page" id="page5">
                <h2 class="page_tit">네트워크</h2>
                <div class="page_wrap">
                    <p class="page_comment">
                        롯데글로벌로지스만의 차별화된 국내 물류네트워크는<br>
                        고객에게 최상의 물류서비스와 가치를 제공합니다.
                    </p>
                <article class="grid_fr">
                    <ul class="grid_box">
                        <li class="item1">
                            <img src="../images/network.png" alt="esg" class="pic">
                        </li>
                    </ul>
                </article>
                </div>
            </section>
        </div>
	<%@ include file="../footer.jsp" %>
</div>
</body>
</html>