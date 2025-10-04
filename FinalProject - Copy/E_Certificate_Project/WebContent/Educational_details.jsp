<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
				<li><a href="ProfileUpdate.jsp" class="current">Profile Update</a>
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
                           <form class="post_section" enctype="multipart/form-data" action="updateprofile" method="post">
                           <label data-icon="u"  style="font-family: Times New Roman; font-size: 18px; font-weight: bold"  data-icon="">Name: </label>
    <input id="Name" name="Marksheet_No" required="required" type="text" placeholder="Enter Name " value="<%=emailid%>"/> 
                     <table width="100%" border="1">
                     <h2 style="font-family: Times New Roman; font-size: 22px; font-weight: bold">10</h2>
              <tr>
        <td width="10%">
  
    <label for="username" class="youmail" data-icon="u" >Percentage(%): </label><br>
    <input id="username" name="tenpercentage" style="width: 90px" required="required" pattern="^\d+(?:\.\d{1,2})?$" type="text" placeholder="%" /> 
 
                        </td>
                       
                        <td width="30%">&nbsp;
    <label data-icon="u"  >Seat_No: </label></br>&nbsp;
    <input id="Marksheet_No" name="tenMarksheet_No" style="width: 220px" required="required" pattern="[A-Z].{0,}[0-9].{5,}" type="text" placeholder="Enter No For Ex.G123456" /> 
 
                        </td>
        
       
        <td width="40%">
  
    <label data-icon="u" >Passing Year:</label><br>
    <input id="PassingYear" name="tenPassingYear" style="width: 90px" required="required" pattern="[0-9].{3,}" maxlength="4" type="text" placeholder="eg.2018-2019" /> 
 
                        </td></tr>
        </table>
        
     <h2 style="font-family: Times New Roman; font-size: 22px; font-weight: bold">12th</h2>   
                 <table border="1" width="100%">
                <tr>
        <td width="10%">
  
    <label data-icon="u">Percentage(%): </label><br>
    <input id="percentage" name="twelpercentage" style="width: 90px" required="required" pattern="^\d+(?:\.\d{1,2})?$" type="text" placeholder="%" /> 
 
                        </td>
                       
                        <td width="30%">&nbsp;
    <label data-icon="u" >Seat_No: </label></br>&nbsp;
    <input id="Marksheet_No" name="twelMarksheet_No" style="width: 220px" required="required" pattern="[A-Z].{0,}[0-9].{5,}" type="text" placeholder="Enter No " /> 
 
                        </td>
        
       
        <td width="40%">
  
    <label data-icon="u">Passing Year:</label><br>
    <input id="PassingYear" name="twelPassingYear" style="width: 90px" required="required" pattern="[0-9].{3,}" type="text" placeholder="eg.2018-2019" /> 
 
                        </td></tr>
        </table>        
                        
                        <h2 style="font-family: Times New Roman; font-size: 22px; font-weight: bold">BE</h2>   
                 <table border="1" width="100%">
                <tr>
        <td width="10%">
  
    <label data-icon="u" >Percentage(%): </label><br>
    <input id="percentage" name="bepercentage" style="width: 90px" required="required" pattern="^\d+(?:\.\d{1,2})?$" type="text"  placeholder="%" /> 
 
                        </td>
                       
                        <td width="30%">&nbsp;
    <label data-icon="u"  >Seat_No: </label></br>&nbsp;
    <input id="Marksheet_No" name="beMarksheet_No" style="width: 220px" required="required" type="text" pattern="[A-Z].{0,}[0-9].{5,}" placeholder="Enter No " /> 
 
                        </td>
        
       
        <td width="40%">
  
    <label data-icon="u">Passing Year:</label><br>
    <input id="PassingYear" name="bePassingYear" style="width: 90px" required="required" type="text" pattern="[0-9].{3,}" placeholder="eg.2018-2019" /> 
 
                        </td></tr>
                   
                        
        </table>  
        <br>
         <table border="1" width="100%">
         <tr>
         <td>
    <label data-icon="u" >Upload Marksheet 10: </label>
    <input id="file" name="tenfile" style="width: 90%" required="required" type="file" placeholder="Select Document " /> 
  </td>
        </tr>
        <tr>
         <td>
    <label data-icon="u" >Upload Marksheet 12: </label>
    <input id="file" name="twelfile" style="width: 90%" required="required" type="file" placeholder="Select Document " /> 
  </td>
        </tr>
         <tr>
         <td>
    <label data-icon="u" >Upload Marksheet BE: </label>
    <input id="file" name="befile" style="width: 90%" required="required" type="file" placeholder="Select Document " /> 
  </td>
        </tr>
        <tr>
         <td>
    <label data-icon="u" >Select Smart Contract Minutes </label>
   <select id="gender" name="minutes" required="required" >
   											<option selected="selected">Select Minutes</option>
   											
   											<%
   											try{
   				       						  int i=1;
   				       						  int flag=0;
   				       						  String query="select * from tblsmart_contracts";
   				       						  Connection conn=DBconn.conn();
   				       						  Statement stmt=conn.createStatement();
   				       						  ResultSet rs=stmt.executeQuery(query);
   				       						  while(rs.next())
   				       						  {
   											%>
											<option value="<%=rs.getString("Duration_Data")%>"><%=rs.getString("MsgData")%></option>
											
											<%}
   				       						  }
   											catch(Exception e)
   											{}
   											%>
									</select>
  </td>
        </tr>
         <tr>
         <td>
    <label data-icon="u" >Student ID Proof: </label>
    <input id="file" name="qrcodefile" style="width: 90%" required="required" type="file" placeholder="Select Document " /> 
  </td>
        </tr>
        <tr>
									<td colspan="2" align="center"><input type="submit" value="Update"  style="background-image: url(images/templatemo_h1_bg.jpg);width: 50%;height: 60%;font-size: 25px;color: white" /><br /></td>
								</tr>
         </table>    
                        
                       
              
                                    					
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