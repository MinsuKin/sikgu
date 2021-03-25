<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html >
<html>
<head>
<meta   charset="utf-8">
<TITLE>개인 정보 입력 화면</TITLE>
<link rel=stylesheet href="../css/user.css" type="text/css">
<script type="text/javascript">
function userCreate(){		
	f.action="./add.do";
	f.submit();	
}
function userList(){
	f.action="./list.do";
	f.submit();
}
</script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<br>
<table width=780 border=0 cellpadding=0 cellspacing=0>
	<tr>
	  <td width="20"></td>
	  <td>
	  
  <!--contents-->
  
  
  
  
  
  
  
	  <table width=590 border=0 cellpadding=0 cellspacing=0>
		  <tr>
			<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>회원가입</b></td>
		  </tr>
	  </table>  
	  <br>
	  
	  
 <form:error path"user"/>
 
	  <!-- write Form  -->
	  
	  <form name="f" method="post" action="">
	  
	  <table border="0" cellpadding="0" cellspacing="1" width="590" bgcolor="BBBBBB">
		  <tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">사용자 아이디</td>
			<td width=490 bgcolor="ffffff" style="padding-left:20">
				<input type="text" style="width:150" name="sikgu_id" value="">

			</td>
		  </tr>
		  <tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">비밀번호</td>
			<td width=490 bgcolor="ffffff" style="padding-left:20">
				<input type="password" style="width:150" name="sikgu_pwd" value="">

			</td>
		  </tr>
		   
		  <tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">가입유형</td>
			<td width=490 bgcolor="ffffff" style="padding-left:20">
				<input type="radio" name="sikgu_type" value="C">고객
				<input type="hidden" name="sikgu_type" value="C">상점

	
			</td>
		  </tr>
		  

	  </table>
	  
	  <br>
	  
	  <table width=590 border=0 cellpadding=0 cellspacing=0>
		  <tr>
			<td align=center>
			<input type="button" value="확인" onClick="userCreate()"> &nbsp;
<!-- 			<input type="button" value="목록" onClick="userList()"> -->
			
			</td>
		  </tr>
	  </table>

	  </td>
	</tr>
</table>  
 </form>
</body>
</html>