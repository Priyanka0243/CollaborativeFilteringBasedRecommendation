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
          
          <form action="authentication.jsp" method="post" id="leavereply">
            <ol>
              <li>
                <div class="clr"></div>
              </li>
            </ol>
            <p><img src="images/User.png" width="589" height="286" /></p>
            <p>&nbsp;</p>
          </form>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="UserProfile.jsp"><br />
                <strong>View Your Profile </strong></a></li>
			  <li><strong><a href="SearchFrd.jsp">Search Friend & Find Friend Request </a></strong></li>
			  <li><strong><a href="U_AllFriends.jsp">View All My Friends </a></strong></li>
            <li><strong><a href="usearchbcontent.jsp">Search For Post </a></strong></li>
            <li><strong><a href="UserSearchHistory.jsp">my search History </a></strong></li>
            <li><strong><a href="UserRecommended.jsp">View recommends</a></strong></li>
            <li><strong><a href="UserInterestOnPost.jsp">View user interests on the post</a></strong></li>
            <li><strong><a href="TopKrecommendation.jsp">View Top K Hit Rate</a></strong></li>
            <li><strong><a href="index.html">Log Out</a></strong><br />
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
