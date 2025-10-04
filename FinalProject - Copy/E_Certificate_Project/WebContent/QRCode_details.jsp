<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
</head>
<body>
	<!--  Free CSS Templates from www.templatemo.com -->
	<div id="templatemo_container">
		<div id="templatemo_menu">
			<ul>
				<li><a href="Home.jsp" >Home</a></li>
				<li><a href="ProfileUpdate.jsp" >Profile Update</a>
</li><li><a href="QRCode_details.jsp" class="current">QRCode Upload</a></li>
				
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

		<div id="templatemo_content">

						<!-- end of content left -->

			<div id="templatemo_content_right" style="width: 100%">
				<div class="templatemo_product_box" style="width: 92%;height: 100%">
					<h1>
						Educational Details<span>(by Best Student)</span>
					</h1>

					<div class="product_info" style="width: 100%;height: 100%">
			
                        <%
            String emailid=(String)session.getAttribute("userid");
            %>
                           <form class="post_section" enctype="multipart/form-data" action="QRCodeupload" method="post">
                           
     
                             <table border="1" width="100%">
                             <tr>
									<td colspan="2"><div class="cleaner" style="height: 20%">&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
								</tr>
								<tr>
								<td><b>Company Name </b></br>
            <select id='testSelect1' name="company_name"  required>
          <option>Select Company Name</option>
          <%
          Connection con =DBconn.conn();
          Statement st=con.createStatement();
          ResultSet rs=st.executeQuery("select * from companyregistertbl");
          while(rs.next())
          {
          
          %>
          
		  <option value="<%=rs.getString("Cemail")%>"><%=rs.getString("Cemail")%></option>
		  
		  <%} %>
		  </select></td>
								
								</tr>
                             
                             <tr>
                             <td>
                           <label data-icon="u">Email ID: </label><br/>
                            <input id="Name" name="Marksheet_No" required="required" type="text" style="width: 90%" placeholder="Enter Name " value="<%=emailid%>"/></td>
                             </tr>
         <tr>
         <td>
    <label data-icon="u" >Upload QR Code: </label>
    <input id="file" name="qrcodefile" style="width: 90%" required="required" type="file" placeholder="Select Document " /> 
  </td>
        </tr>
        
         </table>    
                        
                       
              <p class="login button"> 
                                    <input type="submit" value="Update" /> 
								</p>
   </form>
  </div>
					<div class="cleaner">&nbsp;</div>
				</div>

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