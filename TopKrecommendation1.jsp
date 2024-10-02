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
.style7 {color: #00aeff}
.style8 {font-size: 12px}
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
	<div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="UserMain.jsp">User Main </a></li>
            <li><a href="User.html">Log Out<br />
            </a></li>
            <li></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
          <div class="clr"></div>
          <ul class="ex_menu"><li></li>
          </ul>
      </div>
      </div>
      <div class="mainbar">
        <div class="article">
          <h2>Top K Hit Rate Products </h2>
          <div class="clr"></div>
          <p>
		  <p>
		  
		  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%@ include file="connect.jsp" %>
		  
		    <%
	
      	
	

      	try 
	{
      		
		  int one=Integer.parseInt(request.getParameter("num"));	
		  
		  
		
		  String q2="select * from images order by count DESC LIMIT 0,"+one+""; 
                  Statement st8=connection.createStatement();
                  ResultSet rs8=st8.executeQuery(q2);
       	 while ( rs8.next() )
       	   {
       	
       		 int i=rs8.getInt(1);
       	String	name=rs8.getString(2);
       
    	
    	
               
       	%>
		    
          <table width="428" border="0" align="center">
  <tr>
    <td width="179"><div align="left" class="style5 style2 style3 style7"><strong>Product Name</strong></div></td>
    <td width="239"><%=name%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2 style4 style7"><strong>View Details </strong></div></td>
 
	<td><div align="left"><a href="TopKrecommendation11.jsp?one=<%=one%>&i=<%=i%>"><strong>View Details&nbsp;</strong></a></div></td>
  </tr>
</table>


       	<p>&nbsp;</p>
       	<div align="center">
       	  <p><strong>
       	    
       	    <%
		
    	out.println("------------------------------------------------------------------------------------------------------------");
             }
       	  
             
         
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
       	    
       	    </strong>
   	        </p>
   	      </p>
       	  <p align="right"><a href="TopKrecommendation.jsp">Back</a></p>
       	  <p>&nbsp;</p>
        </div>
        </div>
        <div class="clr"></div>
          
      
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
