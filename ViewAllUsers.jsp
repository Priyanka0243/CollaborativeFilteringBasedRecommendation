

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All User Details</title>
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
.style7 {
	color: #00aeff;
	font-weight: bold;
}
.style8 {font-size: 12px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style6">Collaborative Filtering-Based Recommendation of Online Social Voting
<strong></strong></a><a href="index.html"></a></h1>
      </div>
      <div class="searchform">
      </div>
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
          <li ><span><a href="User.html">User</a></span></li>
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
          <h2><span>All Users Details </span></h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p> <table width="650" border="3"  cellpadding="0" cellspacing="0"  font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
                      <tr>
					   <td  width="150" valign="baseline" height="0" style="color: #2c83b0;"><div align="center" class="style7">SINO</div></td>
                        <td  width="150" valign="baseline" height="0" style="color: #2c83b0;"><div align="center" class="style7">Username</div></td>
                        
                        <td  width="120" valign="baseline" height="0" style="color: #2c83b0;"><div align="center" class="style7">Mobile</div></td>
                        <td  width="150" valign="baseline" height="0" style="color: #2c83b0;"><div align="center" class="style7">Address</div></td>
                        <td  width="100" valign="baseline" height="0" style="color: #2c83b0;"><div align="center" class="style7">Gender</div></td>
                        <td  width="100" valign="baseline" height="0" style="color: #2c83b0;"><div align="center" class="style7">Status</div></td>
                      </tr>
                     <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
 <%
					  
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								//s7=rs.getString(9);
								s8=rs.getString(10);
								
								String status="";
								
						
					%>
                      <tr>
					    <td  width="72" valign="baseline" height="0" style="color:#000000;">&nbsp;&nbsp;
                            <%out.println(i);%></td>
                        <td  width="72" valign="baseline" height="0" style="color:#000000;">&nbsp;&nbsp;
                            <%out.println(s1);%></td>
                        
                        <td  width="82" valign="baseline" height="0">&nbsp;&nbsp;
                            <%out.println(s3);%></td>
                        <td  valign="baseline" height="0">&nbsp;&nbsp;
                            <%out.println(s4);%></td>
                       
                        <td  valign="baseline" height="0">&nbsp;&nbsp;
                            <%out.println(s6);%></td>
                        <%
						if(s8.equalsIgnoreCase("waiting"))
						{
						
						%>
                        <td  width="100" valign="baseline" height="0" style="color:#000000;"align="center"><a href="generatekeyconfirm.jsp?uid=<%=i%>">waiting&nbsp;</a></td>
                        <%
						}
						else
						{
						%>
                        <td  width="10" valign="baseline" height="0" style="color:#000000;"align="center"><%out.println(s8);%>
                          &nbsp;</td>
                        <%
						}
						%>
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
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
						  <td  valign="baseline" height="0">&nbsp;</td>
                      </tr>
                    </table>
          </p>
          <div align="right"><a href="AdminMain.jsp">Back</a></div>
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
            <li><a href="#"></a></li>
            <li><a href="AdminMain.jsp"></a></li>
            <li><a href="index.html">Logout</a><br />
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
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
