# 프로젝트
https://jeniy01.github.io/web1

## 프로젝트 개요
통합개발환경 : eclipse luna
개발 언어 : java1.8 jsp3.1
dbms : postgresql

## 프로젝트 설계 - 물리적 설계
![물리적 설계](./ms.png "물리적 설계")

## 프로젝트 설계 - 회원(member)테이블 구현
![회원테이블 구현](./membertable.png "회원테이블 구현") 

## 프로젝트 설계 - 게시판(board)테이블 구현
![게시판테이블 구현](./boardtable.png "게시판테이블 구현") 

## 프로젝트 설계 - 테이블ERD
![DB ERD](./erd.png "DB ERD") 

## 프로젝트 설계 - 기능구현 설명
-회원 기능
1. 회원가입
약관페이지(agreement.jsp) -> 회원가입폼(join.jsp) -> 아이디 중복확인(idCheck.jsp) -> 회원가입 처리(joinpro.jsp) -> 메인페이지(index.jsp)
2. 로그인
로그인폼(login.jsp) -> 로그인 처리(loginpro.jsp) -> 메인페이지(index.jsp)
3. 로그아웃
메인페이지(index.jsp) -> 로그아웃 처리(logout.jsp) -> 메인페이지(index.jsp)
4. 회원 정보 수정
로그인 후 마이페이지(mypage.jsp) -> 정보수정페이지(member_mod.jsp) -> 회원정보 수정처리(member_modify_pro.jsp) -> 마이페이지(mypage.jsp)
5. 회원 탈퇴
로그인 후 마이페이지(mypage.jsp) -> 회원 탈퇴 처리(member_del.jsp) -> 메인화면(index.jsp)

-게시판 기능
1. 게시글 등록
로그인 후 공지사항 페이지(sub4.jsp#page4) -> 글쓰기 페이지(boardInsert.jsp) -> 글 등록 처리(boardInsertPro.jsp) -> 공지사항 페이지(sub4.jsp#page4)
2. 게시글 수정
관리자로 로그인 후 공지사항 페이지(sub4.jsp#page4) -> 게시글 상세 보기 페이지(boardDetail.jsp) -> 글 수정 페이지(boardUpdate.jsp) -> 글 수정 처리(boardUpdatePro.jsp) -> 공지사항 페이지(sub4.jsp#page4) -> 게시글 상세 보기(boardDetail.jsp)
3. 게시글 삭제
관리자로 로그인 후 공지사항 페이지(sub4.jsp#page4) -> 게시글 상세 보기 페이지(boardDetail.jsp) -> 삭제 처리(boardDel.jsp) -> 공지사항 페이지(sub4.jsp#page4)

-관리자 기능
1. 관리자의 회원 목록 및 회원 정보 상세 페이지 생성과 테스트
관리자로 로그인 후 관리자 클릭하여 관리자 페이지(index.jsp) -> 회원관리 누르거나 회원등록현황에서 더보기 눌러서 회원 관리 페이지(member_manage.jsp)
2. 직권 등록
관리자로 로그인 후 관리자 클릭하여 관리자 페이지(index.jsp) -> 회원관리 누르거나 회원등록현황에서 더보기 눌러서 회원 관리 페이지(member_manage.jsp) -> 회원 직권 등록 눌러서 회원 등록 페이지(memberInsert.jsp) -> 아이디 중복확인(idCheck.jsp) -> 회원가입 처리(joinpro.jsp) -> 회원 관리 페이지(member_manage.jsp) -> 회원 정보 상세보기 페이지(memberDetail.jsp)
3. 직권 탈퇴
관리자로 로그인 후 관리자 클릭하여 관리자 페이지(index.jsp) -> 회원관리 누르거나 회원등록현황에서 더보기 눌러서 회원 관리 페이지(member_manage.jsp) -> 직권탈퇴 처리(member_del.jsp) -> 회원 관리 페이지(member_manage.jsp)
4. 관리자의 게시판 관리 페이지 생성과 테스트
관리자로 로그인 후 관리자 클릭하여 관리자 페이지(index.jsp) -> 게시판 관리 누르거나 게시판 현황에서 더보기 눌러서 게시판 관리 페이지(board_manage.jsp)
5. 게시글 작성
관리자로 로그인 후 관리자 클릭하여 관리자 페이지(index.jsp) -> 게시판 관리 누르거나 게시판 현황에서 더보기 눌러서 게시판 관리 페이지(board_manage.jsp) -> 글 등록 눌러서 글 등록 페이지(boardInsert.jsp) -> 글 등록 처리(boardInsertPro.jsp) -> 게시판 관리 페이지(board_manage.jsp)
6. 게시글 수정
관리자로 로그인 후 관리자 클릭하여 관리자 페이지(index.jsp) -> 게시판 관리 누르거나 게시판 현황에서 더보기 눌러서 게시판 관리 페이지(board_manage.jsp) -> 글 눌러서 글 상세 보기 페이지(boardDetail.jsp) -> 글 수정 페이지(boardUpdate.jsp) -> 글 수정 처리(boardUpdatePro.jsp) -> 게시판 관리 페이지(board_manage.jsp)
7. 게시글 삭제
관리자로 로그인 후 관리자 클릭하여 관리자 페이지(index.jsp) -> 게시판 관리 누르거나 게시판 현황에서 더보기 눌러서 게시판 관리 페이지(board_manage.jsp) -> 글 삭제 처리(board_del.jsp) -> 게시판 관리 페이지(board_manage.jsp)

## 프로젝트 설계 - 기능구현
![메인페이지](./movie.png "메인페이지 영상")
![메인페이지](./main1.png "메인페이지 첫 번째")
![메인페이지](./main2.png "메인페이지 두 번째")
![메인페이지](./main3.png "메인페이지 세 번째")
![메인페이지](./main4.png "메인페이지 네 번째")
![메인페이지](./main5.png "메인페이지 다섯 번째")
![메인페이지](./footer.png "메인페이지 푸터")
![로그인페이지](./login.png "로그인 페이지")
![회원약관 페이지](./agreement.png "회원약관 페이지")
![회원가입 페이지](./join.png "회원가입 페이지")
![공지사항 페이지](./notice.png "공지사항 페이지")
![공지사항 상세페이지](./noticeplus.png "공지사항 상세 페이지")

<!--
![개념적 설계](./img/database/pro01_01.png "개념적 설계")
![논리적 설계](./img/database/pro01_02.png "논리적 설계")
![물리적 설계1](./img/database/pro01_03.png "물리적 설계1")  
![물리적 설계2](./img/database/pro01_04.png "물리적 설계2")
![클래스 설계](./img/database/pro01_05.png "클래스 설계")
![기능 설계](./img/database/pro01_06.png "기능 설계")
![DB ERD](./img/database/pro01_07.png "DB ERD")
![회원가입 시퀀스](./img/database/pro01_08.png "회원가입 시퀀스")
![로그인 시퀀스](./img/database/pro01_09.png "로그인 시퀀스")

## 기능 구현
![메인페이지](./img/pro01_1.png "메인페이지 첫 번째")
![메인페이지](./img/pro01_2.png "메인페이지 두 번째")
![메인페이지](./img/pro01_3.png "메인페이지 세 번째")
![메인페이지](./img/pro01_4.png "메인페이지 네 번째")
![메인페이지](./img/pro01_5.png "메인페이지 다섯 번째")
![로그인페이지](./img/pro01_6.png "로그인 페이지")
![회원약관 페이지](./img/pro01_7.png "회원약관 페이지")
![회원가입 페이지](./img/pro01_8.png "회원가입 페이지")
![자주하는 질문 및 답변 페이지](./img/pro01_9.png "자주하는 질문 및 답변 페이지")
![자주하는 질문 및 답변 상세페이지](./img/pro01_10.png "자주하는 질문 및 답변 상세 페이지")
>



