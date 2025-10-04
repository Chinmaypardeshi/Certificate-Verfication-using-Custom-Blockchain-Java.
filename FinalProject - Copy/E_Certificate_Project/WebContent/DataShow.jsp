<%@ page import="java.sql.*" %>
         <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.user.*"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Block Chain</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="demo.css" />
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#examples').DataTable( {
        "pagingType": "full_numbers"
    } );
} );
</script>

</head>
<body>
	<!--  Free CSS Templates from www.templatemo.com -->
	<div id="templatemo_container">
		<div id="templatemo_menu">
			<ul>
				<li><a href="DataShow.jsp" class="current-demo">Data Show</a>
</li>
				<li><a href="AddLogin" class="current-demo">Logout</a></li>
			</ul>
		</div>
		<!-- end of menu -->

		<div id="templatemo_header">

			<div id="templatemo_special_offers">
				
			</div>


			<div id="templatemo_new_books">
				
			</div>
		</div>
		<!-- end of header -->

		<div id="templatemo_content1">

			<!-- end of content left -->

			<div id="templatemo_content_right1">
				
					<h1>View Information</h1>
					<table id="examples" class="displays" style="background-color: black;">
        <thead>
            <tr>
<td >EmailId: </td> 
<td >10 (%)</td> 
<td > Seat No(12th)</td> 
<td >12th (%)</td>
<td > SeatNo(BE)</td>
<td > BE (%)</td>
<td > Seat No(BE)</td>
<td > Accept</td>
<td > Reject</td>
<td > View</td>
</tr>
        </thead>
        <tbody>
        <%
					  try{
						  int i=1;
						  String query="select * from updateprofile where Status_Info='0'";
						  Connection conn=DBconn.conn();
						  Statement stmt=conn.createStatement();
						  ResultSet rs=stmt.executeQuery(query);
					    	while(rs.next()){
					    		{
					    		%>
					    	
					    	<tr>
					    	<td style="background-color: black;"><%=rs.getString(1) %></td>
   <td><%=rs.getString(10) %></td>
    <td><%=rs.getString(11) %></td>
   <td><%=rs.getString(14) %></td>
    <td><%=rs.getString(15) %></td>
   <td><%=rs.getString(18) %></td>
   <td><%=rs.getString(19) %></td>
   
   
          <td width="6%"> <a href="Accept?emailid=<%=rs.getString("emailid")%>">Accept</a></td>
               <td width="6%"> <a href="Reject?emailid=<%=rs.getString("emailid")%>" >Reject</a></td>
          <td width="6%"> <a href="profview?emailid=<%=rs.getString("emailid")%>">View</a></td>
           </tr>
					    	<%}
					    		i++;
					    		
					    		} %>
					    	<% 
					    	}
					    	catch (Exception e) {
					    		e.printStackTrace();
					    	}%>
            
           
        </tbody>
    </table>
					
					
					<div class="cleaner">&nbsp;</div>
				

				<div class="cleaner_with_width">&nbsp;</div>


				<div class="cleaner_with_height">&nbsp;</div>


				<div class="cleaner_with_width">&nbsp;</div>


				<div class="cleaner_with_height">&nbsp;</div>


			</div>
			<!-- end of content right -->

			<div class="cleaner_with_height">&nbsp;</div>
		</div>
		<!-- end of content -->

		<div id="templatemo_footer">

			<a href="subpage.html">Home</a> | <a href="subpage.html">Search</a> |
			<a href="subpage.html">Books</a> | <a href="#">New Releases</a> | <a
				href="#">FAQs</a> | <a href="#">Contact Us</a><br /> </a>
			<!-- Credit: www.templatemo.com -->
		</div>
		<!-- end of footer -->
		<!--  Free CSS Template www.templatemo.com -->
	</div>
	<!-- end of container -->
	<!-- templatemo 086 book store -->
	<!-- 
Book Store Template 
http://www.templatemo.com/preview/templatemo_086_book_store 
-->
</body>
</html>