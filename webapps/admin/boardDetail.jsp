<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%
	String pid = "";
	if(session.getAttribute("id")!=null){
		pid = (String) session.getAttribute("id");
	}
	String path = request.getContextPath();

	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro1";
	String user = "postgres";
	String pass = "1234";
	int bid = Integer.parseInt(request.getParameter("bid"));
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sub4Id = "";
	String sql = "";
	
	try{
		Class.forName(driver);
		try{
			conn = DriverManager.getConnection(url,user,pass);;
			sql = "select board.bid as bid, board.title as title, board.content as content, member.name as name, board.resdate as resdate, board.author as author from board, member where board.author=member.id and board.bid=?";
			try{
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, bid);
				rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<title>데이터베이스 게시판 목록 테스트</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 상세보기</title>
    
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
    .vs { height:40vh; }
    .content { background-image: url("../images/img_customer_visual.jpg"); }
    table { display:table; width:900px; margin:10px auto; border-bottom:1px solid #333; border-collapse:collapse; }
	tr { display:table-row; }
	th, td { display:table-cell; border-top:1px solid #333; text-align:center; line-height:36px; padding-top:16px; padding-bottom:16px; }
	th { background-color:#333; color:#fff; }
    #page1 .page_tit { padding-top: 60px; }
    .table { width:900px; margin:4px auto; padding-top:20px; border-top:2px solid #333; }
    .lb { display:block;  font-size:20px; }
    .indata { display:inline-block; width:300px; height:24px; line-height:24px; padding:10px; }
    .btn { display:inline-block; outline:none; border:none; border-radius:8px; margin:16px; text-align: center; padding:10px 20px;  cursor:pointer; }
    .btn-primary { background: -moz-linear-gradient(top, #ca4747 0%, #c73333 100%); background: -webkit-linear-gradient(top, #ca4747 0%,#c73333 100%); background: linear-gradient(to bottom, #ca4747 0%,#c73333 100%); color:#fff; }
    .btn-cancle { background: -moz-linear-gradient(top, #afafaf 0%, #797979 44%, #a7a7a7 100%); background: -webkit-linear-gradient(top, #afafaf 0%,#797979 44%,#a7a7a7 100%); background: linear-gradient(to bottom, #afafaf 0%,#797979 44%,#a7a7a7 100%); color:#fff; }
    .page_tit { text-align:center; font-size:32px; padding-top:60px; padding-bottom:16px; }
    </style>
</head>
<body>
	<div class="container">
		<%@ include file="./admin_header.jsp" %>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <h1 class="tit">고객지원</h1>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_tit">공지사항 상세보기</h2>
				<table>
					<tbody>
<%
						if(rs.next()){
							sub4Id = rs.getString("author");
%>					
						<tr>
							<th>글 번호</th>
							<td><%=rs.getInt("bid") %></td>
						</tr>
						<tr>
							<th>제목</th>
							<td><%=rs.getString("title") %></td>
						</tr>
						<tr>
							<th>내용</th>
							<td>
								<p><%=rs.getString("content") %></p>
							</td>
						</tr>
						<tr>
							<th>작성자</th>
							<td>
								<p><%=rs.getString("name") %></p>
							</td>
						</tr>
						<tr>
							<th>작성일</th>
							<td>
								<p><%=rs.getString("resdate") %></p>
							</td>
						</tr>
<%
						}
%>
						<tr>
							<td colspan="2">
								<a href="board_manage.jsp" class="btn btn-primary">글 목록</a> &nbsp; &nbsp; &nbsp;
<%
							if(pid.equals(sub4Id) || pid.equals("admin")){
%>
								<a href="boardUpdate.jsp?bid=<%=bid %>" class="btn btn-cancle">글 수정</a>								
								<a href="board_del.jsp?bid=<%=bid %>" class="btn btn-primary">삭제</a>
<%
							}
%>							
							</td>
						</tr>
					</tbody>
						
				</table>
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