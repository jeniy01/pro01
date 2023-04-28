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
    <link rel="stylesheet" href="<%=path %>/sub_common.css">
    <link rel="stylesheet" href="<%=path %>/sublayout.css">
    <style>
    /* .vs { height:40vh; } */
    .content { background-image: url("../images/img_manage_visual05.jpg"); }
    #page1 .grid4 li { text-align: center; box-sizing:border-box; border:1px solid #eee; height: 300px; }
    #page1 .grid4 .grid_tit { font-size:28px; font-weight:200; color:rgb(187, 0, 0); padding-top:50px; }
    #page1 .grid4 .grid_tit:after { content:""; display:block; clear:both; width:80px; height:5px; background-color:rgb(187, 0, 0); margin:30px auto; }
    #page1 .grid4 .grid_com { padding-top:14px; }
    #page1 .grid_fr .grid_box li .item2 { width:1280px; float:left; height:150px; }
    #page1 .grid_fr .grid_box li .pic2 { display:block; width:1000px; height:300px; padding-left:136px; padding-top:40px; }

    #page2 { background-color:#f1f1f1; color:#222; }
    #page2 .page_wrap { padding-top:100px; }
    #page2 .page_comment { background-color: #fff; text-shadow:1px 1px 3px #fff; color:#222; text-align:left; }

    .grid_fr .grid_box li .pic { display:block; width: 218px; height: 47px; padding-left:525px; padding-top:100px; }

    #page3 .grid4 li { text-align:center; box-sizing:border-box; border:1px solid #999; height: 300px; }
    #page3 .grid4 .grid_tit { font-size:28px; font-weight:bold; color:rgb(187, 0, 0); padding-top:50px; }
    #page3 .grid4 .grid_tit:after { content:""; display:block; clear:both; width:80px; height:2px; background-color:rgb(187, 0, 0); margin:30px auto; }
    #page3 .grid4 .grid_com { padding-top: 15px; }
    
    #page4 .grid_fr .grid_box li .item1 .grid_tit { width:1100px; height:421px; background-image: url("../images/bg_ethics.jpg"); margin-left:90px; color:#fff; font-size:31px; font-weight:bold; text-align:center; position:relative; }
    .grid_fr .grid_box li .pic { display:block; width: 218px; height: 47px; padding-left:525px; padding-top:100px; }

    #page5 { background-color: #fff; color: #333; }
    #page5 .tit_box { clear:both; padding-top:80px; width:1280px; margin:0 auto; }
    #page5 .grid4 .grid_tit { font-size:28px; font-weight:200; color:rgb(187, 0, 0); padding-top:50px; }
    .more { display:block; position:absolute; top:60px; right:200px; font-size:68px; font-weight:bold; width:80px; height:80px; border:1px solid #ccc; text-align:center; color:#999; }
    .board_fr { clear:both; width:1280px; margin:0px auto; padding-top:40px; }
    .tb1 { clear:both; display:table; border-collapse:collapse; }
    .tb1 tr { display:table-row; width:1280px; }
    .tb1 td { display:table-cell; min-height:50px; padding-top:20px; padding-bottom:20px; border-top:1px solid #ccc; }
    .tb1 tr:last-child td { border-bottom:1px solid #ccc; }
    .tb1 td.td1 { vertical-align:top; width: 100px; text-align:left; font-size:32px; color: rgb(187, 0, 0); font-weight:bold; }
    .tb1 td a { display:block; color:#333; transition-duration:0.4s; }
    .tb1 td a .td_tit { width:1100px; font-size:21px; line-height:1.4; font-weight:200; padding-right:36px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis; }
    .tb1 td a:hover { color:rgb(189, 112, 112); }
    .tb1 td a:hover .td_com { color:rgb(189, 112, 112); }
    /* .page_tit { text-align:center; font-size:32px; padding-top:60px; } */
    </style>
</head>
<body>
	<div class="container">
		<%@ include file="../header.jsp" %>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <h1 class="tit">ESG 경영</h1>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_tit">ESG 경영 체계</h2>
                <div class="page_wrap">
                    <p class="page_comment">
                        회사는 체계적인 ESG 경영 전략과 목표를 바탕으로 환경적, 사회적, 경제적 책임을 다함으로써<br>
                        '글로벌 물류기업'의 비전 달성을 위해 노력하고 있습니다.</p>
                <article class="grid_fr">
                    <ul class="grid_box">
                        <li class="item1">
                            <img src="../images/esg2.png" alt="esg" class="pic2">
                        </li>
                    </ul>
                </article>
                </div>
            </section>
            <section class="page" id="page2">
                <h2 class="page_tit">인권경영</h2>
                <div class="page_wrap">
                    <p class="page_comment">
                        하나, 우리는 경영을 함에 있어 모든 인간의 존엄과 가치를 최우선으로 합니다.<br><br>
                        하나, 우리는 임직원의 안전 및 보건을 최우선으로 고려합니다.<br><br>
                        하나, 우리는 임직원의 인권보호 및 증진을 위하여 헌법에 명시되어 있는 국민의 기본권을 보장합니다.<br><br>
                        하나, 우리는 경영과 사업추진 과정에서 취득하는 개인정보를 보호합니다.
                    </p>
                <article class="grid_fr">
                    <ul class="grid_box">
                        <li class="item1">
                            <img src="../images/img_logo_r.png" alt="esg" class="pic">
                        </li>
                    </ul>
                </article>
                </div>
            </section>
            <section class="page" id="page3">
                <h2 class="page_tit">사회공헌</h2>
                <div class="page_wrap">
                    <p class="page_comment">
                        롯데글로벌로지스의 사회공헌에 대해 안내해 드립니다.
                    </p>
                    <article class="grid4">
                        <ul class="grid_box">
                            <li>
                                <div>
                                    <h3 class="grid_tit">임직원 봉사</h3>
                                    <p class="grid_com">개개인 동의를 얻어 매월 급여에서<br>
                                        일정 금액을 기부하는 우수리 제도를 통해<br>
                                        임직원의 기부 봉사를 실시하고 있습니다.
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">소외계층 후원</h3>
                                    <p class="grid_com">취약계층 아동에게 균등한 디지털<br>
                                        교육기회 제공 및 디지털 역량 제고를 위한<br>
                                        ICT교육을 지원하고 있습니다.
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">물류업 연계</h3>
                                    <p class="grid_com">특별재난지역 및 소외계층을 위해<br>
                                        당사의 택배 인프라를 활용하여 전국에서<br>
                                        무상으로 배송 서비스를 실시하고 있습니다.
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">기부활동</h3>
                                    <p class="grid_com">물류 터미널에서 일정 보관 기간이 경과한<br>
                                        무적 화물을 사회적 기업 ‘아름다운가게’에<br>
                                        기부하고 있습니다.
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </article>
                </div>
            </section>
            <section class="page" id="page4">
                <h2 class="page_tit">윤리경영</h2>
                <div class="page_wrap">
                    <p class="page_comment">
                        롯데글로벌로지스의 윤리경영에 대해 안내해 드립니다.
                    </p>
                <article class="grid_fr">
                    <ul class="grid_box">
                        <li>
                            <a href="" class="item1">
                                <h3 class="grid_tit"><br><br><br><br><br><br>
                                    윤리지향 생활화를 통한<br>
                                    투명하고 책임있는 경영을 실현하겠습니다.
                                </h3>
                                <p class="grid_com">
                                    
                                </p>
                            </a>
                        </li>
                    </ul>
                </article>
                </div>
            </section>
            <section class="page" id="page5">
                <h2 class="page_tit">ESG NEWS</h2>
                <div class="page_wrap">
                    <a href="" class="more">+</a>
                    <article class="board_fr">
                        <table class="tb1">
                            <tbody>
                                <tr>
                                    <td class="td1">5</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">롯데글로벌로지스, 온실가스 배출 실적 공시</h3>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">4</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">롯데글로벌로지스, 친환경 재생에너지 사용 본격화… “ESG경영 강화”</h3>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">3</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">롯데글로벌로지스, 친환경 캠페인으로 ESG경영 앞장</h3>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">2</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">롯데글로벌로지스, 친환경 유니폼 도입…“ESG경영 박차”</h3>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">1</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">롯데글로벌로지스, 업계최초 ‘친환경 물류 전환 솔루션 사업’ 업무협약</h3>
                                        </a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </article>
                </div>
            </section>
        </div>
	<%@ include file="../footer.jsp" %>
</div>
</body>
</html>