
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.*"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Recommended to User </title>
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
.style8 {color: #0099FF; font-size: 14px; }
.style12 {font-size: 12px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style6">Collaborative Filtering-Based Recommendation of Online Social Voting
</a><a href="index.html"></a></h1>
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
          <h2><span>Recommended to User </span></h2>
          <div class="clr"></div>
          <p>
		  <%
String uname=(String )application.getAttribute("uname");
     int one= Integer.parseInt(request.getParameter("i"));	  	
	String s1="",s2="",s3="",s4="",s5="",s6="";
	int i=0,j=0;

      	try 
	{
      		ArrayList a1=new ArrayList();
      		
     		 
			 
				
			 
            
            String query1="select username FROM user order by username asc"; 
            Statement st1=connection.createStatement();
            ResultSet rs1=st1.executeQuery(query1);
           
 	   while ( rs1.next() )
 	   {
	   
String fname=rs1.getString("username");
	   String sql1="select * from req_res where ((requestfrom='"+uname+"'&&requestto='"+fname+"') || (requestfrom='"+fname+"'&&requestto='"+uname+"')) && status='Accepted'";
								Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(sql1);
									
									if(rs2.next()==true)
									{
	  
 			a1.add(fname);
			}
 		
 	   }
      		
        
           String query="select * from images where id ="+one+" "; 
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
		
	
		   %> </p>
          <p><form action="UserRecommend1.jsp" method="post" name="form1">
  <div align="center" class="style1">  
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <table width="465" border="0">
      <tr>
        <td width="245"><div align="center" class="style8">Topic ID </div></td>
        <td width="210"><label>
          <input type="text" name="t1" value="<%=i%>" readonly>
        </label></td>
      </tr>
      <tr>
        <td><div align="center" class="style8">Topic Name </div></td>
        <td><label>
          <input type="text" name="t2" value="<%=s3%>" readonly>
        </label></td>
      </tr>
      <tr>
        <td><div align="center" class="style8">Select the User to Recommend </div></td>
        <td><label>
          <select name="t3">
          <option>--Select--</option>
        <% for(int l=0;l<a1.size();l++)
        	  {
        	  %>
           <option><%= a1.get(l)%></option>
           
           <%}%>
          </select>
        </label></td>
      </tr>
      <tr>
        <td><div align="center" class="style8">Details</div></td>
        <td><textarea name="t4"></textarea></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><label>
          <input type="submit" name="Submit" value="Recommend">
        </label></td>
      </tr>
    </table>
    <p>&nbsp;    </p>
  </div>
</form> 



</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>
		  
		  
		   <%

	 
	  
	   
	   }
	   
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="UserProfile.jsp"><br />
            View Your Profile </a></li>
            <li><a href="usearchbcontent.jsp">Search For Post </a></li>
            <li><a href="UserSearchHistory.jsp">my search History </a></li>
            <li>View recommends</li>
            <li>View user interests on the post</li>
            <li>Top K Recommendation</li>
            <li><a href="index.html">Log Out</a><br />
            </li>
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
