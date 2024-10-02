
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Top 'K' Recommendation </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium600w.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style6 {font-size: 22px}
.style7 {font-size: 14px}
.style8 {color: #00aeff}
.style9 {font-size: 12px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style6">Collaborative Filtering-Based Recommendation of Online Social Voting</a><a href="index.html"></a></h1>
      </div>
      <div class="searchform"></div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="314" alt="" /></a> <a href="#"><img src="images/slide2.jpg"  width="960" height="314" alt="" /></a> <a href="#"><img src="images/slide3.jpg"  width="960" height="314" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="rss">
        <p>&nbsp;</p>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home</span></a></li>
          <li><span><a href="Admin.jsp">Admin</a></span></li>
          <li class="active"><span><a href="User.html">User</a></span></li>
          <li><span><a href="Register.html">Register</a></span></li>
          <li><a href="contact.html"><span>About Project </span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Top 'K'</span> Hit Rate </h2>
          <div class="clr"></div>
          <p>
		  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%@ include file="connect.jsp" %>
		 
		    <%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7;
	int i=0,j=0;

      	try 
		
	{  String name=request.getParameter("one");
            int t3=Integer.parseInt(request.getParameter("i"));
	
            String query="select * from images where id = "+t3+" "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		
		j=rs.getInt(8);
	  
	
%>

        
          <table width="431" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
  <tr>
    <td width="203" height="30"><div align="left" class="style10 style11 style7 style8">Product Name</div></td>
    <td width="222"><span class="style15"><%=s2%></span></td>
  </tr>
  <tr>
    <td height="30"><div align="left" class="style14 style7 style8">Product Color </div></td>
    <td><span class="style15"><%=s3%></span></td>
  </tr>
  <tr>
    <td height="30"><div align="left" class="style14 style7 style8">Product Description </div></td>
    <td><span class="style15"><%=s4%></span></td>
  </tr>
  <tr>
    <td height="30"><div align="left" class="style14 style7 style8">uses</div></td>
    <td><span class="style15"><%=s5%></span></td>
  </tr>
  <tr>
    <td height="30"><div align="left" class="style14 style7 style8">Location</div></td>
    <td><span class="style15"><%=s6%></span></td>
  </tr>

  <tr>
    <td height="141"><div align="left" class="style14 style7 style8">Product Images </div></td>
    <td><div align="center" class="style8">
      
        <div align="center">
          <input  name="image" type="image" src="images.jsp?imgid=<%=i%>" width="140" height="130" alt="Submit">
        </div>
    </div></td>
  </tr>
   <tr>
    <td height="30"><div align="left" class="style14 style7 style8">Rank</div></td>
    <td><span class="style15"><%=j%></span></td>
  </tr>
  <tr>
    <td height="40"><div align="left" class="style14 style7 style8">Ratings of Prouct </div></td>
    <td><span class="style8">
      <% 
    if(j==3)
    {
    	%>
      <input  name="image" type="image" src="Gallery/1.png" width="30" height="30" >
      <%
    }
    if(j>3 && j<=6)
    {
    	%>
      <input  name="image" type="image" src="Gallery/2.png" width="80" height="30" >
      <%
    }
    if(j>6 && j<=9)
    {
    	%>
      <input  name="image" type="image" src="Gallery/3.png" width="100" height="30" >
      <%
    }
    if(j>9 && j<=12)
    {
    	%>
      <input  name="image" type="image" src="Gallery/4.png" width="120" height="30" >
      <%
    }
    if(j>12 && j<=15)
    {
    	%>
      <input  name="image" type="image" src="Gallery/5.png" width="140" height="30" >
      <%
    }
    if(j>15 && j<=300)
    {
    	%>
      <input  name="image" type="image" src="Gallery/6.png" width="170" height="30" >
      <%
    }
    %>
    </span></td>
  </tr>
</table>
	 <p align="center">
	  
	   <%
	   }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</p>
	 <p align="right"><a href="TopKrecommendation.jsp">Back</a></p>
	 </p>
        
          <p>&nbsp;</p>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li></li>
            <li><a href="UserMain.jsp">User main </a></li>
            <li><a href="User.html">Log Out<br />
            </a></li>
            <li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
   
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&nbsp;</p>
      <p class="rf">&nbsp;</p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
