<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
<title> User Information adding page</title>

<%
	try{
	    String id=request.getParameter("id");
		String pname=request.getParameter("pname");
		int vote=0;
		
		
		int id1=Integer.parseInt(id);
		
		String strQuery = "select * from images where id="+id1+" ";
		                         
								 Statement stmt=connection.createStatement();
								ResultSet rs = stmt.executeQuery(strQuery);
								
								if(rs.next()){
									
			    					 int c = rs.getInt(8);
									
									
										vote=c+1;
			    	 					Statement st3 = connection.createStatement();
					   					String query3 ="update images set count="+vote+" where id="+id1+" ";
					   					st3.executeUpdate (query3); %>
										
										<h2>YOU HAVE VOTED SUCCESSFULLY FOR=   <% out.print(pname);%> <br> <%
			out.println("TOTAL VOTE IS =="+vote); %> </h2>
										
               				<%	}		
								%>
								
			
			
			
			
<a href="usearchbcontent.jsp">Search More Items</a>
      	
		<%
		connection.close();
	}catch(Exception e)
	{
		out.print(e);
	}
%>


			
			
			
			
			
			
			
			
			
			
			
			
			
		