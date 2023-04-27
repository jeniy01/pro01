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
			//sql = "update member set pw=?, name=?, email=?, tel=?, addr=? where id=?";
			try{
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, wid);
				//pstmt.setString(1, pw);
				//pstmt.setString(2, name);
				//pstmt.setString(3, email);
				//pstmt.setString(4, tel);
				//pstmt.setString(5, addr);
				//pstmt.setString(6, id);
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
                <h2 class="page_tit">회 원 가 입</h2>
                <div class="page_wrap">
					<form name="modify_form" id="modify_form" action="member_modify_pro.jsp" method="post" onsubmit="return form_check(this)">
                        <table class="table">
							<tbody>
								<tr>
									<th><label for="id" class="lb">아이디</label></th>
									<td>
										<input type="text" name="id" id="id" class="indata"  required autofocus>
									</td>
								</tr>
								<tr>
									<th><label for="pw" class="lb">비밀번호</label></th>
									<td><input type="password" name="pw" id="pw" class="indata" pattern="^[A-Za-z\d$!%*#?&]{4,8}$" required></td>
								</tr>
								<tr>
									<th><label for="pw2" class="lb">비밀번호 확인</label></th>
									<td><input type="password" name="pw2" id="pw2" class="indata" pattern="^[A-Za-z\d$!%*#?&]{4,8}$" required></td>
								</tr>
								<tr>
									<th><label for="name" class="lb">이름</label></th>
									<td><input type="text" name="name" id="name" pattern="^[가-힣A-Za-z]{2,12}$" class="indata" required></td>
								</tr>
								<tr>
									<th><label for="email" class="lb">이메일</label></th>
									<td><input type="email" name="email" id="email" class="indata"></td>
								</tr>
								<tr>
									<th><label for="tel" class="lb">전화번호</label></th>
									<td><input type="tel" name="tel" id="tel" maxlength="13" value="<%=tel %>" class="indata"></td>
								</tr>
								<tr>
									<th><label for="email" class="lb">주소</label></th>
									<td><input type="text" name="addr" id="addr" class="indata"></td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="submit" value="회원정보수정" class="btn btn-primary"> &nbsp; &nbsp; &nbsp; &nbsp;
										<a href="mypage.jsp?"></a>
										<input type="reset" value="취소" class="btn btn-cancle">
									</td>
								</tr>
							</tbody>
						</table>
                    </form>
                    <script>
                    function form_check(f){
                    	if(f.pw.value!=f.pw2.value){
                    		alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
                    		return false;
                    	}
                    }
                    </script>
                </div>
            </section>
    	</div>
    	<%@ include file="./footer.jsp" %>
    </div>
</body>
</html>