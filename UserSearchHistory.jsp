<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Search History</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style3 {font-size: 36}
.style4 {padding:0; margin:0; width:100%; line-height:0; clear: both;}
.style5 {font-size: 36px}
.style6 {font-size: 22px}
.style14 {color: #00aeff; font-size: 14px; }
.style15 {font-size: 14px}
.style8 {font-size: 12px}
-->
</style>
</head>
<body>
<div class="main style3">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 class="style5"><a href="index.html" class="style6">Collaborative Filtering-Based Recommendation of Online Social Voting
</a></h1>
      </div>
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
        </form>
      </div>
      <div class="style4"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="314" alt="" /></a> <a href="#"><img src="images/slide2.jpg"  width="960" height="314" alt="" /></a> <a href="#"><img src="images/slide3.jpg"  width="960" height="314" alt="" /></a> </div>
        <div class="style4"></div>
      </div>
      <div class="style4"></div>
      <div class="rss"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home</a></li>
          <li><a href="Admin.jsp">Admin</a></li>
          <li class="active"><a href="User.html">User</a></li>
          <li><a href="Register.html">Rgister</a></li>
          <li><a href="contact.html">About Project </a></li>
        </ul>
      </div>
      <div class="style4"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>User Search History </h2>
          <div class="style4"></div>
        </div>
        <table width="552" border="1" align="center"  cellpadding="0" cellspacing="0"  >
            <tr>
              <th width="51" scope="col"><span class="style14">SI NO </span></th>
              <th width="174" scope="col"><span class="style14">UserName</span></th>
              <th width="172" scope="col"><span class="style14">Keyword</span></th>
              <th width="145" scope="col"><span class="style14">Date &amp; Time </span></th>
            </tr>
			           <%@ include file="connect.jsp" %>
			<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%

    String uname=(String)application.getAttribute("uname"); 	
	String s1="",s2="",s3="",s4="",s5="";
    int i=0;

      	try 
	{
        
           String query="select * from search Where username='"+uname+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		
		
	
%>
            <tr>
              <td height="47"><div align="center"><span class="style15"><%=i%></span></div></td>
              <td><div align="center"><span class="style15"><%=s2%></span></div></td>
              <td><div align="center"><span class="style15"><%=s3%></span></div></td>
              <td><div align="center"><span class="style15"><%=s4%></span></div></td>
            </tr>
					 <%

		}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            <tr>
              <td height="20">&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
        </table>
        </p>
        <p align="right"><a href="UserMain.jsp"> Back</a></p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Sidebar Menu</h2>
          <div class="style4"></div>
          <ul class="sb_menu">
            <li></li>
            <li><a href="index.html">Home</a></li>
            <li><a href="UserMain.jsp">User Main</a></li>
            <li><a href="User.html">Log Out  </a></li>
            <li></li>
          </ul>
        </div>
      </div>
      <div class="style4"></div>
    </div>
  </div>
  <div class="fbg">
    
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
