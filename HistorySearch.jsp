<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %> 
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> ��ʷ��ѯ </title>
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">  
   <script src="bootstrap/js/jquery.min.js"></script>
   <script src="bootstrap/js/bootstrap.min.js"></script>
  <script>
  function display(){
		var date=document.getElementById("date").value;
		alert(date);
}
  </script>
 </head>
<%
String bz= (String)session.getAttribute("bz");
String zh= (String)session.getAttribute("zh");
String f1=(String)session.getAttribute("bm");
String bm=f1.substring(0,f1.length()-1);
int i=0;
%>
 <body>
	<h1>
		<p align="center">
			��ҳ�����ڲ�ѯ��֮ǰ����д�ı��۵�
		</p>
	</h1>
	<div>
	<form action="LiShi" method="POST" id="form1">
		<p>ע:�����������Ҫ���ҵĶ�������,Ȼ������ť����</p>
		<p  align="center">ѡ������:<input type="date" id="date" name="sj"/></p>
		<input type="hidden" id="zh" name="zh"  class="form-control" style="width:10%" value="<%=zh%>">
		<input type="hidden" id="bm" name="bm"  class="form-control" style="width:10%" value="<%=f1%>">
		<input type="hidden" id="jl" name="jl"  class="form-control" style="width:10%" value="day">
		</br></br>
		<input type="hidden" name="bz" value="<%=bz%>"/></input>
		<div align="center">
		<input type="submit"  id="date" class="btn btn-info btn-lg btn-block"  style="width:50%" value="ȷ��"></button>
	</div>
	</div>
	</form>
</br></br>

 </body>
</html>