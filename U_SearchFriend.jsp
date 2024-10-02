<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Search History</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style3 {font-size: 36}
.style4 {padding:0; margin:0; width:100%; line-height:0; clear: both;}
.style5 {font-size: 36px}
.style6 {font-size: 22px}
.style14 {color: #00aeff; font-size: 14px; }
.style15 {font-size: 14px}
.style8 {font-size: 12px}
-->
</style>
</head>
<body>
<div class="main style3">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 class="style5"><a href="index.html" class="style6">Collaborative Filtering-Based Recommendation of Online Social Voting
</a></h1>
      </div>
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
        </form>
      </div>
      <div class="style4"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="314" alt="" /></a> <a href="#"><img src="images/slide2.jpg"  width="960" height="314" alt="" /></a> <a href="#"><img src="images/slide3.jpg"  width="960" height="314" alt="" /></a> </div>
        <div class="style4"></div>
      </div>
      <div class="style4"></div>
      <div class="rss"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home</a></li>
          <li><a href="Admin.jsp">Admin</a></li>
          <li class="active"><a href="User.html">User</a></li>
          <li><a href="Register.html">Rgister</a></li>
          <li><a href="contact.html">About Project </a></li>
        </ul>
      </div>
      <div class="style4"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>Friend Search </h2>
          <div class="style4"></div>
        </div>
         <table width="500" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
        <%@ include file="connect.jsp" %>
	<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
		<%
    
						String s1,s2,s3,s4;
						int i=0,count=0;
						String keyword=request.getParameter("keyword");
						String user=(String)application.getAttribute("uname");
       
						try 
						{
							String status1=null;
						   	String status=null;
						   	String query="select * from user where username LIKE '%"+keyword+"%'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while(rs.next()==true)
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								
								status ="request";
								if(s1.equalsIgnoreCase(user)){}
								else
								{
								     count++;
									String query7="select * from req_res where (requestfrom='"+user+"'||requestto='"+user+"')" ; 
									Statement st7=connection.createStatement();
									ResultSet rs7=st7.executeQuery(query7);
									while(rs7.next())
									{
										String rfrom =rs7.getString(2);
										String rto =rs7.getString(3);
										status1 = rs7.getString(4);
										
										if((!status1.equalsIgnoreCase("Accepted"))&&(rfrom.equalsIgnoreCase(s1)||(rto.equalsIgnoreCase(s1))))
										{
											status="sent";
										}
										else if((status1.equalsIgnoreCase("Accepted"))&&(rfrom.equalsIgnoreCase(s1)||(rto.equalsIgnoreCase(s1))))
										{
											status="Already Friend";
										}
										
									}	
								
					%>
          
			<tr>
					<td width="129" rowspan="3" valign="middle" >
						<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						 <input  name="image" type="image" src="images1.jsp?id=<%=i%>" style="width:100px; height:100px;"  />
			  </a></div>					</td>
		  </tr>
             
             <tr> <td width="105" valign="middle" height="80" style="color:#000000;"><div align="center" class="style7">Name</div></td>
			 <td width="90" valign="middle" height="80" style="color:#000000;">&nbsp;&nbsp;
               <%out.println(s1);%></td></tr>
				   <tr>
				    <td width="105" valign="middle" height="26" style="color:#000000;"><div align="center" class="style7 style7">Status</div></td>
              <%
						if(status.equals("Already Friend")){
						%>
              <td  width="90" valign="middle" height="26" style="color:#000000;"align="center"><%=status %>&nbsp;</td>
              <%
						}else if(status.equals("sent")){
						%>
              <td  width="57" valign="middle" height="26" style="color:#000000;"align="center"><%=status %>&nbsp;</td>
              <%
						}else{
						
						%>
              <td  width="107" valign="middle" height="26" style="color:#000000;"align="center"><a href="U_UpdateStatus.jsp?username=<%=s1%>&id=<%=i%>"><%=status %>&nbsp;</a></td>
              <%}
						%>
            </tr>
            <%
					
						}
 	    					
						
				
					}
					
					connection.close();
					//out.print("There is no Friends with " +keyword);
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
            <%
				if(count==0)
						{
						out.print("No Result Found");
						   }
			%>
        </p>
        <p align="right"><a href="UserMain.jsp"> Back</a></p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Sidebar Menu</h2>
          <div class="style4"></div>
          <ul class="sb_menu">
            <li></li>
            <li><a href="index.html">Home</a></li>
            <li><a href="UserMain.jsp">User Main</a></li>
            <li><a href="User.html">Log Out  </a></li>
            <li></li>
          </ul>
        </div>
      </div>
      <div class="style4"></div>
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
