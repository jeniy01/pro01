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
    .content { background-image: url("../images/img_company_visual01.jpg"); }
    #page1 .grid4 li { text-align: center; box-sizing:border-box; border:1px solid #999; height: 300px; }
    #page1 .grid4 .grid_tit { font-size:28px; font-weight:bold; color:rgb(187, 0, 0); padding-top:50px; }
    #page1 .grid4 .grid_tit:after { content:""; display:block; clear:both; width:80px; height:2px; background-color:rgb(187, 0, 0); margin:30px auto; }
    #page1 .grid4 .grid_com { padding-top: 15px; }

    #page2 { background-image: url("../images/img_innovation02_01.jpg"); background-position:center center; background-size:100% auto; background-attachment: fixed; }
    #page2 .page_comment { text-shadow:1px 1px 3px #333; color:#fff; }
	
    #page3 { background-color:#e0e0e0; background-position:center center; background-size:100% auto; background-attachment: fixed; }
    #page3 .page_wrap { padding-top:50px; }
    #page3 .page_comment { background-color:#fff; text-shadow:1px 1px 3px #fff; color:#222; }
    /* .grid_fr .grid_box li .pic { display:block; width: 218px; height: 47px; padding-left:525px; } */

    #page4 { background-color: #fff; color: #333; }
    #page4 .tit_box { clear:both; padding-top:80px; width:1280px; margin:0 auto; }
    #page4 .grid4 .grid_tit { font-size:28px; font-weight:200; color:rgb(187, 0, 0); padding-top:50px; }
    .more { display:block; position:absolute; top:60px; right:200px; font-size:68px; font-weight:bold; width:80px; height:80px; border:1px solid #ccc; text-align:center; color:#999; }
    .board_fr { clear:both; width:1280px; margin:0px auto; padding-top:40px; }
    .tb1 { clear:both; display:table; border-collapse:collapse; }
    .tb1 tr { display:table-row; width:1280px; }
    .tb1 td { display:table-cell; min-height:50px; padding-top:20px; padding-bottom:20px; border-top:1px solid #ccc; }
    .tb1 tr:last-child td { border-bottom:1px solid #ccc; }
    .tb1 td.td1 { vertical-align:top; width: 100px; text-align:left; font-size:32px; color: rgb(187, 0, 0); font-weight:100; }
    .tb1 td a { display:block; color:#333; transition-duration:0.4s; }
    .tb1 td a .td_tit { width:1100px; font-size:28px; line-height:1.4; font-weight:200; padding-right:36px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis; }
    .tb1 td a .td_com { width:1100px; font-size:18px; line-height:2.2; font-weight:100; color:#999; padding-right:36px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis; }
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
                    <h1 class="tit">회사소개</h1>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_tit">회사소개</h2>
                <div class="page_wrap">
                    <p class="page_comment">지구가 작아지는 물류 혁신, 롯데글로벌로지스가 추구하는 고객 가치입니다.</p>
                    <article class="grid4">
                        <ul class="grid_box">
                            <li>
                                <div>
                                    <h3 class="grid_tit">최초</h3>
                                    <p class="grid_com">최초의 트렌드를<br>선도하는 창조성</p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">최고</h3>
                                    <p class="grid_com">최고 수준의 배송,<br>물류, 유통환경 인프라</p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">차별화</h3>
                                    <p class="grid_com">차별화된 사업분야별<br>고객 맞춤 컨설팅</p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">상생</h3>
                                    <p class="grid_com">고객 & 협력사와<br>동반성장하는 기업</p>
                                </div>
                            </li>
                        </ul>
                    </article>
                </div>
            </section>
            <section class="page" id="page2">
                <h2 class="page_tit">투자정보</h2>
                <div class="page_wrap">
                    <p class="page_comment">롯데 기업집단 현황 공시의 대표회사는 롯데지주㈜이며<br>롯데 기업집단의 전체 현황 공시는 대표회사 롯데지주㈜가 제출한 롯데 기업집단 현황 공시와 동일하므로<br>롯데지주㈜가 제출한 롯데 기업집단 현황 공시를 참조하시기 바랍니다.</p>
                </div>
            </section>
            <section class="page" id="page3">
                <h2 class="page_tit">인재채용</h2>
                <div class="page_wrap">
                    <p class="page_comment">롯데글로벌로지스는 여러분들의 무한한 가능성에 관심이 있습니다.<br>그 열정을 최대한 발휘할 수 있는 공간을 만들어 드리겠습니다. 도전하세요!</p>
                    <p class="page_comment">1. 실패를 두려워 하지 않는 젊은이<br>실패에 두려워하지 않고, 성공을 위해 도전하는 패기와 투지를 가진 인재</p>
                    <p class="page_comment">2. 실력을 키우기 위해 끊임없이 노력하는 젊은이<br>젊음의 무모함이 아닌 진정한 실력으로 성공을 쟁취하기 위해 지식과 능력을 단련시키는 인재</p>
                    <p class="page_comment">3. 협력과 상생을 아는 젊은이<br> 협력과 양보를 기본으로 사회를 따뜻하게 만들 수 있는 인재</p>
                <article class="grid_fr">
                    <ul class="grid_box">
                        <li class="item1">
                            <!-- <img src="../images/img_logo_r.png" alt="esg" class="pic"> -->
                        </li>
                    </ul>
                </article>
                </div>
            </section>
            <section class="page" id="page4">
                <h2 class="page_tit">보도자료</h2>
                <div class="page_wrap">
                    <a href="" class="more">+</a>
                    <article class="board_fr">
                        <table class="tb1">
                            <tbody>
                                <tr>
                                    <td class="td1">4</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">롯데글로벌로지스, 중고 장난감 나눔 행사</h3>
                                            <p class="td_com">이번 봉사활동은 지난달 29일부터 이달 14일까지 롯데글로벌로지스 공식 SNS를 통해 장난감 기부를 접수 받아, 롯데택배가 무상수거한 중고 장난감 5백여 점에 대해, 롯데글로벌로지스 임직원들이 수리 및 소독 과정을 거쳐 취약계층 아동에 전달하는 사회공헌활동이다.</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">3</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">롯데글로벌로지스, 취약계층 아동에 ICT 체험교육 지원</h3>
                                            <p class="td_com">봉사활동에 참여한 롯데글로벌로지스 관계자는 “눈을 반짝이며 진지하게 교육에 참여하는 아이들의 모습에 한층 더 책임감을 느꼈다”며 “양질의 교육을 제공하기 위해 열정을 가지고 최선을 다하겠다”고 말했다.</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">2</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">롯데글로벌로지스, 소비자중심경영 위원회 출범식… “고객 최우선주의 실천”</h3>
                                            <p class="td_com">롯데글로벌로지스는 지난 11일 서울 중구 본사에서 고객 중심 경영을 강화하기 위해 ‘소비자중심경영(CCM, Consumer Centered Management) 위원회 출범식’을 개최했다고 12일 밝혔다.</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">1</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">롯데글로벌로지스, 독거 어르신에 맞춤형 ‘보청기’ 지원 및 ‘초인등’ 설치</h3>
                                            <p class="td_com">난청 독거 어르신 초인등을 직접 설치한 오재승 직원은 “난청으로 어려움을 겪으시는 어르신들이 보청기와 초인등으로 일상에서 소통하시는 데 도움이 되셨으면 좋겠다”며 “앞으로 어르신들 방문 때마다 더 많은 대화를 나눌 것”이라고 말했다.</p>
                                        </a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </article>
            </section>
        </div>
	<%@ include file="../footer.jsp" %>
</div>
</body>
</html>