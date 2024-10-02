<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Interest on The Product </title>
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
          <li><a href="support.html"><span>Admin</span></a></li>
          <li class="active"><a href="about.html"><span>User</span></a></li>
          <li><a href="blog.html"><span>Register</span></a></li>
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
          <h2><span>User Interest on The Product </span></h2>
          <div class="clr"></div>
          <p>  
		  
		  <%@ include file="connect.jsp" %>
			<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
		  <%

    	
	

      	try 
	{
      		
      		
        
           String query="select * from images"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		
		String id=rs.getString(1);
		String name=rs.getString(2);

		
		
	
		   %>

<table width="453" border="0" align="center">
  <tr>
    <td width="179"><div align="left" class="style5 style7">
      <div align="center">Product ID</div>
    </div></td>
    <td width="264"><%=id%></td>
  </tr>
  
  <tr>
    <td><div align="left" class="style5 style7">
      <div align="center">Product Name </div>
    </div></td>
    <td><%=name%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style7">
      <div align="center">View the Topic</div>
    </div></td>
    <td><div align="left"><a href="AllReviewedPost1.jsp?id=<%=id%>"><strong>View&nbsp;</strong></a></div></td>
  </tr>
</table>

<p>&nbsp;</p>
<p align="center"><strong>

  <%
out.println("------------------------------------------------------------------------------------------------------------");
	 
	   }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%></p>
<p align="right"><a href="UserMain.jsp">Back</a></p>
<p>&nbsp;</p>
          <p>
          
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
            <li><a href="UserMain.jsp">User Main <br />
            </a></li>
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
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
