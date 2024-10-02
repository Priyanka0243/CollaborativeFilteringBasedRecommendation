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
<title>User Login</title>
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
      <div class="rss"></div>
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
          <h2>Search Content Based on Keyword</h2>
          <p>
		  <DIV CLASS="article">
         
              <H2>&nbsp;</H2>
            <FORM ACTION="usearchbcontent.jsp" METHOD="post">
                
                <DIV STYLE="width:600px;">
                  <TABLE ALIGN="center" STYLE="margin:0 0 0 30px;">
                    <TR>
                      <TD><P>USER  KEYWORD&nbsp;&nbsp;</P></TD>
                      <TD><INPUT TYPE="text" name="keyword" /></TD>
                      <TD><INPUT name="submit" TYPE="submit" STYLE="width:50px; height:25px;" VALUE="GO"/></TD>
                    </TR>
                    <TR>
                      <TD COLSPAN="3"><P>[ searching content Based on Image Description ] </P></TD>
                    </TR>
                  </TABLE>
                </DIV>
              
                <P>&nbsp; </P>
				
            </FORM>
          </DIV>
                <%
							try{
								String s1=null,s2=null,s3=null,s4=null,s5=null,s6=null;
								double count=0,count1=0,ratio=0;
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

								Date now = new Date();
						
								String strDate = sdfDate.format(now);
								String strTime = sdfTime.format(now);
								String dt = strDate + "   " + strTime;
								
								String uname=(String)application.getAttribute("uname");
								String input= request.getParameter("keyword").toLowerCase();	
								
								if(!input.equalsIgnoreCase(""))
								{
									Statement st3 = connection.createStatement();
									   String query3 ="insert into search(username,keyword,dt) values('"+uname+"','"+input+"','"+dt+"')";
									   st3.executeUpdate (query3); 	   
								}
							
								
							
								
								String status=null;
								Statement st4 = connection.createStatement();
					   			String query4 ="select * from user where username='"+uname+"'";
					   			ResultSet rs4 = st4.executeQuery(query4);
								if(rs4.next())
								{
									status=rs4.getString("status");
											//out.println("inside user block");
								}
								  
								Statement stmt=connection.createStatement();
								String strQuery = "select * from images  order by count DESC";
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
								
										
			    	 					
										
										if(status.equals("waiting")){
											//out.println("inside un authorize block");
											String keyWord = "5765586965748666502846";

											keyWord = keyWord.substring(0, 16);
											byte[] keyValue = keyWord.getBytes();
											Key key = new SecretKeySpec(keyValue, "AES");
											Cipher c2 = Cipher.getInstance("AES");
											c2.init(Cipher.ENCRYPT_MODE, key);
											String ec = new String(Base64.encode(keyWord.getBytes()));
											
											String s11=new String(Base64.encode(title.getBytes()));
											String s22=new String(Base64.encode(keyword.getBytes()));
											String s33=new String(Base64.encode(desc.getBytes()));
											String s44=new String(Base64.encode(per.getBytes()));
											String s55=new String(Base64.encode(uses.getBytes()));
										}
									%>
              </P>
              <P ALIGN="center" CLASS="style9"><SPAN STYLE="color:#00aeff">&nbsp;Product Name :</SPAN> <SPAN STYLE="color:#000000;"><%= title%></SPAN></P>
              <P ALIGN="center" CLASS="style10"><A HREF="usearchbcontent11.jsp?i=<%=i%>&amp;input=<%=input%>">View Details</A></P>
              <P ALIGN="left" CLASS="style10">
                <%
						  	}
						 }
				
	
				
						
					}catch(Exception e){						  
						e.printStackTrace();
					}
						  
				%>
</P>
              <P ALIGN="right" CLASS="style10"><a href="UserMain.jsp">Back</a></P>
              <P ALIGN="right" CLASS="style10">&nbsp;</P>
              <P ALIGN="right" CLASS="style10">&nbsp;</P>
              <P ALIGN="right" CLASS="style10">&nbsp;</P>
              <P ALIGN="right" CLASS="style10">&nbsp;</P>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="#">Home</a></li>
            <li><a href="#">Admin</a></li>
            <li><a href="#">User</a></li>
            <li>Register</li>
            <li></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
	</div>
  </div>
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
