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
          
          <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr bgcolor="#993366">
					  <td  width="120" height="31" align="center" valign="baseline" style="color: #2c83b0;"><div align="center"><b>Username</b></div></td>
  						
					  <td  width="100" height="31" align="center" valign="baseline" style="color: #2c83b0;"><div align="center"><b>View</b></div></td>
					</tr>
								
<%@ include file="connect.jsp" %>
					<%String user=(String )application.getAttribute("uname");
						
						int i=0,count=0;
						try 
						{
						   	String sql1="select * from req_res where (requestfrom='"+user+"'||requestto='"+user+"')&& status='Accepted'";
								Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(sql1);
					   			while( rs2.next() )
								{
								i=rs2.getInt(1);
								String rf=rs2.getString(2);
								String rt=rs2.getString(3);
								
								count++;
								
								if(rf.equalsIgnoreCase(user))
								{
					%>
					<tr bgcolor="#FFFFFF">
						<td  width="120" height="40" align="center" valign="middle" style="color:#000000;"><span class="style7">&nbsp;&nbsp;
				        <%out.println(rt);%>
					  </span></td>
						<td  width="100" height="40"align="center" valign="middle" style="color:#000000;">
							<a href="U_FriendProfile.jsp?type1=<%=rt%>" class="style9">more info..&nbsp;</a></td>
						<%
						//application.setAttribute("name",rt);
						}
						else 
						{%>	
						<td  width="100" height="40" align="center" valign="middle"><span class="style7">&nbsp;&nbsp;
				        <%out.println(rf);%>
					  </span></td>
						<td  width="100" height="40"align="center" valign="middle" style="color:#000000;">
							<a href="U_FriendProfile.jsp?type1=<%=rf%>" class="style9">more info..&nbsp;</a></td>
						<%//application.setAttribute("name",rf);
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
					
					if(count==0){out.print("You Have No Friends");}
					
					%>
		</table>
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
