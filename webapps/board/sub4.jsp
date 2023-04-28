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
    /* .vs { height:40vh; } */
    .content { background-image: url("../images/img_customer_visual.jpg"); }
    #page1 .grid3 li { text-align: center; box-sizing:border-box; border:1px solid #eee; height: 300px; }
    #page1 .grid3 .grid_tit { font-size:28px; font-weight:200; color:#222; padding-top:50px; }
    #page1 .grid3 .grid_tit:after { content:""; display:block; clear:both; width:80px; height:5px; background-color:rgb(187, 0, 0); margin:30px auto; }

    #page2 { background-color: #fff; color: #333; }
    #page2 { background-color:#e0e0e0; background-position:center center; background-size:100% auto; background-attachment: fixed; }
    #page2 .tit_box { clear:both; padding-top:80px; width:1280px; margin:0 auto; }
    #page2 .grid4 .grid_tit { font-size:28px; font-weight:200; color:rgb(187, 0, 0); padding-top:50px; }
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

    #page3 { background-image: url("../images/img_field9_1.jpg"); background-position:center center; background-size:100% auto; background-attachment: fixed; }
    #page3 .page_comment { text-shadow:1px 1px 3px #333; color:#fff; }

    #page3 .page_wrap { width: 1280px; }
    #page3 .tit_box { float:left; }
    .col_fr { clear:both; width: 1280px; padding-top: 40px; }
    .col_fr .col_box { clear:both; padding-left:135px; width: 1280px; }
    .col_fr .col_box li.left { float:left; width: 1000px; height: 415px; background-color:#fff; color:rgb(187, 0, 0); border-radius:25px; box-sizing:border-box; padding:38px; }
    .one_line { font-size:30px; line-height: 2; padding-bottom:18px; }
    .gtxt { color:#222; font-size:22px; padding-left:28px; }

    /* #page4 .grid3 li { text-align: center; box-sizing:border-box; border:1px solid #999; height: 300px; }
    #page4 .grid3 .grid_tit { font-size:28px; font-weight:200; color:#222; padding-top:50px; }
    #page4 .grid3 .grid_tit:after { content:""; display:block; clear:both; width:80px; height:5px; background-color:rgb(187, 0, 0); margin:30px auto; }
    #page4 .grid3 .grid_com { padding-top:15px; font-size:20px; } */

    #page5 { background-color:#e0e0e0; background-position:center center; background-size:100% auto; background-attachment: fixed; }
    #page5 .page_comment { text-shadow:1px 1px 3px #333; color:#fff; }
    
    
    
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
    /* .page_tit { text-align:center; font-size:32px; padding-top:60px; } */
    </style>
</head>
<body>
    <div class="container">
    	<%@ include file="../header.jsp" %>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <h1 class="tit">고객지원</h1>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_tit">고객의소리</h2>
                <div class="page_wrap">
                    <p class="page_comment">
                        저희 서비스를 이용하시면서 느끼신 불편한 사항이나 칭찬할 만한 내용에 대하여<br>
                        의견을 남기실 수 있습니다.
                    </p>
                </div>
            </section>
            <section class="page" id="page2">
                <h2 class="page_tit">FAQ</h2>
                <div class="page_wrap">
                    <a href="" class="more">+</a>
                    <article class="board_fr">
                        <table class="tb1">
                            <tbody>
                                <tr>
                                    <td class="td1">Q.</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">택배서비스</h3>
                                            <p class="td_com">택배표준약관에 대해서 알고 싶습니다.</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">Q.</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">온라인택배서비스</h3>
                                            <p class="td_com">온라인 택배예약 의뢰는 어떻게 합니까?</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">Q.</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">취급불가품목</h3>
                                            <p class="td_com">택배로 보낼 수 없는 취급불가품목은 어떤것입니까?</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">Q.</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">파손위험</h3>
                                            <p class="td_com">파손위험물, 산간오지 지역일 경우 기본운임보다 택배운임이 왜 비쌉니까?</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">Q.</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">반품서비스</h3>
                                            <p class="td_com">배송된 물품의 반품은 어떻게 해야 하나요?</p>
                                        </a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </article>
            </section>
            <section class="page" id="page3">
                <h2 class="page_tit">납품대금지급조회</h2>
                <div class="page_wrap">
                    <p class="page_comment">
                        납품대금 지급방식에 대한 안내입니다.
                    </p>
                <article class="col_fr">
                    <ul class="col_box">
                        <li class="left">
                            <p class="one_line">
                                <span class="dot">1. 기업전자결제 서비스 → </span>
                                <span class="gtxt">협력업체 및 대리점 필요에 따라 할인 내지 만기수령하는 제도</span>
                            </p>
                            <p class="one_line">
                                <span class="dot">2. 문의처<br></span>
                                <span class="gtxt">
                                    - 우리은행 : 역전금융센터 (02-2259-0351)<br>
                                    &nbsp; &nbsp; &nbsp; - 신한은행 : 광교대기업금융센터 (02-2010-2218)
                                </span>
                            </p>
                            <p class="one_line">
                                <span class="dot">3. 기타 문의사항 → </span>
                                <span class="gtxt">
                                    지급관련 및 비밀번호 초기화 문의는 각 지점 담당자에게 문의바랍니다.
                                </span>
                            </p>
                        </li>
                    </ul>
                </article>
                </div>
            </section>
            <section class="page" id="page4">
                <h2 class="page_tit">공지사항</h2>
                <div class="tb_wrap">
                <table class="table" id="tb1">
					<thead>
						<tr><th>글번호</th><th>제목</th><th>작성자</th><th>작성일</th></tr>
					</thead>
					<tbody>
<%

		String driver = "org.postgresql.Driver";
		String url = "jdbc:postgresql://localhost/pro1";
		String user = "postgres";
		String pass = "1234";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		try {
			Class.forName(driver);
			try {
				conn = DriverManager.getConnection(url, user, pass);
				sql = "select board.bid as bid, board.title as title, board.content as content, member.name as name, board.resdate as resdate, board.author as author from board, member where board.author=member.id order by board.bid desc";
				try {
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
						if(rs==null){
%>
							<tr><td colspan="4">게시글이 존재하지 않습니다.</td></tr>
<%							
						}
						while(rs.next()){
%>
						<tr>
							<td><%=rs.getString("bid") %></td>
							<td>
<%
							if(pid!=""){
%>							
								<a href="<%=path %>/board/boardDetail.jsp?bid=<%=rs.getString("bid") %>"><%=rs.getString("title") %></a>
<%
							} else {
%>
								<span><%=rs.getString("title") %></span>
<%
							}
%>
							</td>
							<td><%=rs.getString("name") %></td>
							<td><%=rs.getString("resdate") %></td>
						</tr>
<%							
							}
%>	
					</tbody>
				</table>
				<div class="grp_btn" style="width:1280px; margin:20px auto;">
<%
							if(pid!=""){
%>
					<a href="<%=path %>/board/boardInsert.jsp" class="btn btn-primary">글쓰기</a>
<%
							} else {
%>
						<h3 class="data">로그인 후에 글쓰기가 가능합니다.</h3>
<%
							}
%>
				</div>
			</div>
			<script>
				$(document).ready(function(){
				    $('#tb1').DataTable({'order': [[0, 'desc']]});
				});
			</script>
            </section>
            <section class="page" id="page5">
                <h2 class="page_tit">사업문의</h2>
                <div class="page_wrap">
                    <p class="page_comment">
                        저희 서비스에 대한 사업 제휴 및 문의사항을 남기실 수 있습니다.
                    </p>
                </div>
            </section>
    	</div>
    	<%@ include file="../footer.jsp" %>
    </div>
</body>
</html>
<% 
				rs.close();
				pstmt.close();
				conn.close();
			} catch(SQLException e){
				System.out.println("SQL 전송 실패");
			}
		} catch(SQLException e){
			System.out.println("데이터베이스 연결 실패");
		}
	} catch(ClassNotFoundException e){
		System.out.println("드라이버 로딩 실패");
	}
%>