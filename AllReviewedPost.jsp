<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Reeviewed Posts</title>
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
        <h1><a href="index.html" class="style6">Collaborative Filtering-Based Recommendation of Online Social Voting</a></h1>
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
          <li class="active"><span><a href="Admin.jsp">Admin</a></span></li>
          <li><span><a href="User.html">User</a></span></li>
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
          <h2><span>All Reeviewed <span>Posts </span> Based on Service Usage History </span>             </h2>
          <div class="clr"></div>
          <p>
		  
		  
		   <%@ include file="connect.jsp" %>
			<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
		  <%

   	
	String from="",to="",s3="",details="",id="",dt="",id1="",pname="";
	int i=0,j=0;

      	try 
	{
      		String str="select * from images order by count DESC";
      		 Statement st1=connection.createStatement();
           ResultSet rs1=st1.executeQuery(str);
	while ( rs1.next() )
	   {
	      id1=rs1.getString(1);
		  pname=rs1.getString(2);
      		
        
           String query="select * from review where id='"+id1+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		
		details=rs.getString(4);
		id=rs.getString(1);

		}
		
	
		   %>

<table width="453" border="0" align="center">
  <tr>
    <td width="179"><div align="left" class="style5 style8">
      <div align="center"><strong>Product ID </strong></div>
    </div></td>
    <td width="264"><%=id%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style8">
      <div align="center"><strong>Product Name</strong></div>
    </div></td>
    <td><%=pname%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style8">
      <div align="center"><strong>View the topic</strong></div>
    </div></td>
    <td><div align="left"><a href="AllReviewedPost1.jsp?id=<%=id1%>"><strong>View&nbsp;</strong></a></div></td>
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
%>&nbsp;</p>
<p align="right"><a href="AdminMain.jsp">Back</a></p>
<p>
          
          </p>
<p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li></li>
            <li><a href="AdminMain.jsp"></a></li>
            <li><a href="AdminMain.jsp">Admin Main </a></li>
            <li><a href="Admin.jsp">Log Out<br />
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
