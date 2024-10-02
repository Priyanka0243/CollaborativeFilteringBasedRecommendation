<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main</title>
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
      <div class="rss">
        <p>&nbsp;</p>
      </div>
      <div class="menu_nav">
        <ul>
          <li><span><a href="index.html">Home</a></span></li>
          <li><span><a href="Admin.jsp">Admin</a></span></li>
          <li class="active"><a href="User.html">User</a></li>
          <li><a href="Register.html"><span>Register</span></a></li>
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
          <h2><span>Welcome To User Main </span><%=(String)application.getAttribute("uname")%></h2>
          <div class="clr"></div>
         
          <p>
          
          <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<%@ include file="connect.jsp" %>
					<%String user=(String )application.getAttribute("uname");
						//int id = Integer.parseInt(request.getParameter("id"));
						
						String user1=request.getParameter("type1");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user1+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								s7=rs.getString(10);
								
					%>
					<tr><td rowspan="9" bgcolor="#FFFFFF" >
						<div style="margin:10px 13px 10px 13px;" >
                		<a class="#" id="img1" href="#" >
							<input  name="image" type="image" src="images1.jsp?id=<%=i%>" style="width:200px; height:230px;"  />
				   		</a>                	</div>
					</td>
					<tr/>
					<tr>
					  <td  width="150" height="40" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style9" style="margin-left:20px;">Username</div></td>
						<td  width="300" height="40" valign="middle" bgcolor="#FFFFFF" style="color:#000000;"><div align="left" class="style7" style="margin-left:20px;">
					  <%out.println(s1);%></div></td>
					</tr>
					<tr>
					  <td  width="120" height="40" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style9" style="margin-left:20px;">E-Mail</div></td>
					  <td  width="72" height="40" valign="middle" bgcolor="#FFFFFF" style="color:#000000;"><div align="left" class="style10" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					<tr>
					  <td  width="100" height="40" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style9" style="margin-left:20px;">Mobile</div></td>
					  <td  width="82" height="40" valign="middle" bgcolor="#FFFFFF"><div align="left" class="style10" style="margin-left:20px;"><%out.println(s3);%></div></td>
					</tr>
					<tr>
					  <td  width="100" height="40" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style9" style="margin-left:20px;">Date Of Birth</div></td>
					  <td  width="82" height="40" align="left" valign="middle" bgcolor="#FFFFFF"><div align="left" class="style10" style="margin-left:20px;"><%out.println(s5);%></div></td>
					</tr>
					<tr>
					  <td  width="100" height="40" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left " class="style9" style="margin-left:20px;">Gender</div></td>
					  <td  width="82" height="40" align="left" valign="middle" bgcolor="#FFFFFF"><div align="left" class="style10" style="margin-left:20px;"><%out.println(s6);%></div></td>
					</tr>
					<tr>
					  <td   width="100" height="40" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style9" style="margin-left:20px;">Address</div></td>
						<td  width="100" height="40" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left">
						  <div align="left" class="style10" style="margin-left:20px;">
					  <%out.println(s4);%></div></td>
					</tr>
					<tr>
					  <td   width="100" height="40" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style9" style="margin-left:20px;">Profession</div></td>
						<td  width="100" height="40" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left">
						  <div align="left" class="style10" style="margin-left:20px;">
					  <%out.println(s7);%></div></td>
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
	    </table>
          <p>&nbsp;</p>
          <p><a href="UserMain.jsp">Back</a></p>
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
            <li><a href="UserProfile.jsp"><br />
            View Your Profile </a></li>
			  <li><a href="SearchFrd.jsp">Search Friend & Find Friend Request </a></li>
            <li><a href="usearchbcontent.jsp">Search For Post </a></li>
            <li><a href="UserSearchHistory.jsp">my search History </a></li>
            <li><a href="UserRecommended.jsp">View recommends</a></li>
            <li><a href="UserInterestOnPost.jsp">View user interests on the post</a></li>
            <li><a href="TopKrecommendation.jsp">View Top K Hit Rate</a></li>
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
