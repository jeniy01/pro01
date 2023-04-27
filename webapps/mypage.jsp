<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String path = request.getContextPath();
%>
<% 
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro1";
	String user = "postgres";
	String pass = "1234";

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String wid = (String)session.getAttribute("id");
	String wpw = "";
	String wname = "";
	String email = "";
	String tel = "";
	String addr = "";
	int point = 0;
	String regdate = "";
	try{
		Class.forName(driver);
		try{
			conn = DriverManager.getConnection(url,user,pass);
			sql = "select * from member where id=?";
			try{
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, wid);
				rs = pstmt.executeQuery();
				if(rs.next()){
					wpw = rs.getString("pw");
					wname = rs.getString("name");
					email = rs.getString("email");
					tel = rs.getString("tel");
					addr = rs.getString("addr");
					point = rs.getInt("point");
					regdate = rs.getString("regdate");
				}
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
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 페이지</title>
    
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
    <style>
    .vs { height:40vh; }
    .content { background-image: url("./images/img_company01.jpg"); }
    #page1 .page_tit { padding-top: 60px; }
    .table { width:900px; margin:4px auto; padding-top:20px; border-top:2px solid #333; }
    th {  text-align: justify;  line-height: 0; width:180px; padding-top:10px; padding-bottom: 10px;}
    td { padding-top:10px; padding-bottom: 10px; }
    th:after {  content: "";  display: inline-block;  width: 100%; }
    th:before {  content: "";  display: inline-block;  width: 100%; }
    .lb { display:block;  font-size:20px; }
    .indata { display:inline-block; width:300px; height:24px; line-height:24px; padding:10px; }
    .btn { display:inline-block; outline:none; border:none; border-radius:8px; margin:16px; text-align: center; padding:10px 20px;  cursor:pointer; }
    .btn-primary { background: -moz-linear-gradient(top, #ca4747 0%, #c73333 100%); background: -webkit-linear-gradient(top, #ca4747 0%,#c73333 100%); background: linear-gradient(to bottom, #ca4747 0%,#c73333 100%); color:#fff; }
    .btn-cancle { background: -moz-linear-gradient(top, #afafaf 0%, #797979 44%, #a7a7a7 100%); background: -webkit-linear-gradient(top, #afafaf 0%,#797979 44%,#a7a7a7 100%); background: linear-gradient(to bottom, #afafaf 0%,#797979 44%,#a7a7a7 100%); color:#fff; }
    .page_tit { text-align:center; font-size:32px; }
    </style>
</head>
<body>
    <div class="container">
    	<%@ include file="./header.jsp" %>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <h1 class="tit">My Page</h1>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_tit">My Page</h2>
                <div class="page_wrap">
                        <table class="table">
							<tbody>
								<tr>
									<th>아이디</th>
									<td><%=wid %></td>
								</tr>
								<tr>
									<th>비밀번호</th>
									<td><%=wpw %></td>
								</tr>
								<tr>
									<th>이름</th>
									<td><%=wname %></td>
								</tr>
								<tr>
									<th>이메일</th>
									<td><%=email %></std>
								</tr>
								<tr>
									<th>전화번호</th>
									<td><%=tel %></td>
								</tr>
								<tr>
									<th>주소</th>
									<td><%=addr %></td>
								</tr>
								<tr>
									<td colspan="2">
										<a href="member_mod.jsp?id=<%=wid %>" class="btn btn-primary">정보 수정</a> &nbsp; &nbsp; &nbsp; &nbsp;
										<a href="member_mod.jsp?id=<%=wid %>" class="btn btn-cancle">회원 탈퇴</a>
									</td>
								</tr>
							</tbody>
						</table>
 
                </div>
            </section>
    	</div>
    	<%@ include file="./footer.jsp" %>
    </div>
</body>
</html>