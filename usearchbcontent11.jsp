
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Search Based On Content </title>
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
.style12 {font-size: 12px; font-weight: bold; }
.style14 {color: #6d6d6d; font-weight: bold; font-size: 12px; }
.style15 {color: #6699FF}
.style8 {font-size: 12px}
.style16 {
	color: #6699FF;
	font-size: 16px;
}
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
          <h2><span>User Search Based On Content </span></h2>
          <div class="clr"></div>
                          
           	  		<p><%@ page import="java.sql.*"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
              
						<%
							try{
							    int one= Integer.parseInt(request.getParameter("i"));	  
								String input= request.getParameter("input").toLowerCase();	
								String uname=(String)application.getAttribute("uname"); 
								
					   			String s1=null,s2=null,s3=null,s4=null,s5=null,s6=null;
								double count=0,count1=0,ratio=0;
							
								Statement stmt5=connection.createStatement();
								String strQuery5 = "select * from images";
								ResultSet rs5 = stmt5.executeQuery(strQuery5);
							
								while(rs5.next()){
									count++;
								}
								String status=null;
								
								Statement st4 = connection.createStatement();
					   			String query4 ="select * from user where username='"+uname+"' ";
					   			ResultSet rs4 = st4.executeQuery(query4);
								if(rs4.next())
								{
									status=rs4.getString("status");
											//out.println("inside user block");
								}
								  
								Statement stmt=connection.createStatement();
								String strQuery = "select * from images where id="+one+"";
								ResultSet rs = stmt.executeQuery(strQuery);
								String title=null;
								while(rs.next()){
									
									int i=rs.getInt(1);
									title = rs.getString(2);
									String keyword = rs.getString(3);
									String desc = rs.getString(4).toLowerCase();
									String per = rs.getString(5);
									String uses = rs.getString(6);
			    					int c = rs.getInt(8);
					
									if ( desc.indexOf(input)>=0){
										
										count1++;
										
										if(status.equals("waiting")){
											//out.println("inside un authorize block");
											String keyWord = "5765586965748666502846";

											keyWord = keyWord.substring(0, 16);
											byte[] keyValue = keyWord.getBytes();
											Key key = new SecretKeySpec(keyValue, "AES");
											Cipher c2 = Cipher.getInstance("AES");
											c2.init(Cipher.ENCRYPT_MODE, key);
											String ec = new String(Base64.encode(keyWord.getBytes()));
											
											s1=new String(Base64.encode(title.getBytes()));
											s2=new String(Base64.encode(keyword.getBytes()));
											s3=new String(Base64.encode(desc.getBytes()));
											s4=new String(Base64.encode(per.getBytes()));
											s5=new String(Base64.encode(uses.getBytes()));
										
									%>                    
           	  		<p>
                    <div align="center" style="margin:0 0 10px 50px; width:600px;">
				  			<table border="1" >
				 				<tr >
									<td rowspan="8"width="140" height="49" align="right" style="color: #2c83b0; " >
   							  			<input  name="image" type="image" src="images.jsp?imgid=<%=i%>"  style="width:180px; height:180px; margin:10px 10px 10px 10px;">
				  				  </td>
								  	<td width="380" height="27" >
											  <span style="color:#6699FF">&nbsp;TITLE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</span> 
											  <span style="color:#000000;"><%= s1%></span>
							  	  </td>
		  						<tr/>
				    
				    
				    			<tr>
									<td width="380" height="27">
								  		<span style="color:#6699FF">&nbsp;USES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</span>	
		        						<span style="color:#000000;"><%= s5%></span>
				  				  </td>
								</tr>
								<tr>
									<td width="380" height="27">
										<span style="color:#6699FF">&nbsp;RANK &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</span><span style="color:#000000;"> <%= c%></span>
								  </td>
				    			</tr>
								<tr>
										<td width="380" height="27">
											  <span style="color:#6699FF">COLOUR </span>	: 
											  <span style="color:#000000;"><%= s2%></span>
								  </td>
								</tr>
								<tr>
									 <td><span class="style8"><span class="style16">Rank</span>  
								     <% 
    if(c>0 && c<=3)
    {
    	%>
      <input  name="image" type="image" src="Gallery/1.png" width="140" height="30" >
      <%
    }
    if(c>3 && c<=6)
    {
    	%>
      <input  name="image" type="image" src="Gallery/2.png" width="80" height="30" >
      <%
    }
    if(c>6 && c<=9)
    {
    	%>
      <input  name="image" type="image" src="Gallery/3.png" width="100" height="30" >
      <%
    }
    if(c>9 && c<=12)
    {
    	%>
      <input  name="image" type="image" src="Gallery/4.png" width="120" height="30" >
      <%
    }
    if(c>12 && c<=15)
    {
    	%>
      <input  name="image" type="image" src="Gallery/5.png" width="140" height="30" >
      <%
    }
    if(c>15 && c<=300)
    {
    	%>
      <input  name="image" type="image" src="Gallery/6.png" width="180" height="30" >
      <%
    }
    %>
    
     </span></td>
											  
								</tr>
								<tr>
										<td width="380" height="27">
											  <span style="color:#6699FF">&nbsp;RECOMMEND TO FRIEND</span>	: <span class="style12"><a href="userRecommend.jsp?i=<%=one%>&uname=<%=uname%>">Recommend </a></span></td>
								</tr><tr>
										<td width="380" height="27">
											  <span style="color:#6699FF">&nbsp;REVIEW &nbsp;&nbsp;&nbsp; : <span class="style14"><a href="UserReview.jsp?i=<%=one%>&uname=<%=uname%>">Review</a></span> </span></td>
								</tr>
								<tr>
										<td height="80" valign="top" colspan="2" style="background-color:#FFCA88;">
											  <span style="color:#6699FF; margin-top:2px;">&nbsp;DESCRIPTION : </span> 	:
											  <span style="color:#000000;"><%= s3%></span>
						  		  </td>
								</tr>
						  </table>
  			  		</div>
					  <%
					  }else{
					  %>
  		  <div align="center" style="margin:0 0 10px 50px; width:600px;">
				  			<table border="1" >
				 				<tr >
									<td rowspan="9"width="200" height="49" align="right" style="color: #2c83b0; " >
   							  			<input  name="image" type="image" src="images.jsp?imgid=<%=i%>"  style="width:180px; height:180px; margin:10px 10px 10px 10px;">				  				  </td>
								  	<td width="399" height="27" >
											  <span style="color:#6699FF">&nbsp;TITLE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</span> 
								  <span style="color:#000000;"><%= title%></span>							  	  </td>
								<tr/>
				    			<tr>
									<td width="399" height="27">
								  		<span style="color:#6699FF">&nbsp;<strong>USES</strong>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;:</span>	
		        						<span style="color:#000000;"><%= uses%></span>				  				  </td>
				    			</tr>
				    			<tr>
	  						  		<td width="399" height="27">
										<span style="color:#6699FF"><strong>TOTAL VOTING </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>:
						  		  <span style="color:#000000;"><%= c%></span>								  </td>
				    			</tr>
								<tr>
									<td width="399" height="27">
										<span style="color:#6699FF">COLOUR :</span><span style="color:#000000;"><%= keyword%></span></td>
								</tr>
									<tr>
										<td width="399" height="27">
											  <span style="color:#6699FF"><strong>&nbsp;RATING </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <% 
    if(c==3)
    {
    	%>
      <input  name="image" type="image" src="Gallery/1.png" width="30" height="30" >
      <%
    }
    if(c>3 && c<=6)
    {
    	%>
      <input  name="image" type="image" src="Gallery/2.png" width="80" height="30" >
      <%
    }
    if(c>6 && c<=9)
    {
    	%>
      <input  name="image" type="image" src="Gallery/3.png" width="100" height="30" >
      <%
    }
    if(c>9 && c<=12)
    {
    	%>
      <input  name="image" type="image" src="Gallery/4.png" width="120" height="30" >
      <%
    }
    if(c>12 && c<=15)
    {
    	%>
      <input  name="image" type="image" src="Gallery/5.png" width="160" height="30" >
      <%
    }
    if(c>15 && c<=300 )
    {
    	%>
      <input  name="image" type="image" src="Gallery/6.png" width="170" height="30" >
      <%
    }
    %>
     </span></td>
		</tr>
								
								<tr>
										<td width="399" height="27">
											  <span style="color:#6699FF"><strong>&nbsp;RECOMMEND TO FRIEN</strong>D </span>	:								  <span class="style12"><a href="userRecommend.jsp?i=<%=one%>&uname=<%=uname%>">Recommend</a> </span></td>
								</tr>
								<tr>
								  <td height="27"><strong> <a href="U_VoteDetails.jsp?id=<%=i%>&pname==<%=title%>"> <img src="images/Vote.jpg" width="37" height="31" />Click Here to VOTE</a></strong></td>
							  </tr>
								<tr>
										<td width="399" height="27">
											  <span style="color:#6699FF"><strong>&nbsp;REVIEW</strong>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<span class="style14"> <a href="UserReview.jsp?i=<%=one%>&uname=<%=uname%>">Review</a></span> </span></td>
								</tr>
								<tr>
									<td height="80" valign="top" colspan="2" style="background-color:#FFCA88;">
										<span style="color:#6699FF; margin-top:2px;">&nbsp;DESCRIPTION : </span> 	:
										<span style="color:#000000;"><%= desc%></span>								  </td>
								</tr>
						  </table>
		  </div>
	 
	 	<%
				
					ratio = ((count1/count)*100);
					Statement stmt6=connection.createStatement();
					String strQuery6 = "insert into nearoptimalsolution(username,content, total, retrieved, ratio) values('"+application.getAttribute("uname")+"','"+input+"','"+count+"','"+count1+"','"+ratio+"')";
					stmt6.executeUpdate(strQuery6);
					%>
				
		  <h1 style="color:#000000; font-size:18px;">Nearest-Neighbor (NN) Search for<span class="style15"> <%=input %></span> is <span class="style15"><%= ratio %> %</span></h1>
		
					<%
						
					}}}}catch(Exception e){						  
						e.printStackTrace();
					}
						  
				%>
			  </p>
			  <p>
          
       
          <p>&nbsp;</p>
          <p>&nbsp;</p>
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
            <li><a href="UserProfile.jsp"><br /></a></li>
            <li><a href="usearchbcontent.jsp">Back</a></li>
            <li><a href="UserMain.jsp">User Main </a></li>
            <li><a href="User.html">Log Out</a></li>
            <li><br />
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
