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
<li><a href="QRCode_details.jsp" >QRCode Upload</a></li>
				
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
						Profile Update <span>(by Best Student)</span>
					</h1>

					<div class="product_info" style="width: 100%;height: 100%">
                           <form class="post_section" action="AddProUpdate" method="post">
                             <%
                             String emailid=(String)session.getAttribute("userid");
                             String mobileno=(String)session.getAttribute("mobile"); 
                             String  First_Name="";
                             String Middle_Name="";
                             String Last_Name="";
                             String Address="";
                             String Gender="";
                             String DOB="";
                             try{
       						  int i=1;
       						  int flag=0;
       						  String query="select * from updateprofile where emailid='"+emailid+"'";
       						  Connection conn=DBconn.conn();
       						  Statement stmt=conn.createStatement();
       						  ResultSet rs=stmt.executeQuery(query);
       					    	if(rs.next())
       					    	{
       					    		flag=1;
       					    	First_Name=rs.getString(2);
                                    Middle_Name=rs.getString(3);
                                 Last_Name=rs.getString(3);
                                 Gender=rs.getString(6);
                                    DOB=rs.getString(8);
       					    	}
       					    	else
       					    	{
       					    		flag=0;
       					    		
       					    	}
                             if(flag==1)
                             {%>
                            	 
                  <table  width="100%">
								<tr>
									<td width="20%"><label style="font-size: 15px; color: #cbc750;" > Email</label></td>
									<td> <input id="username" name="emailid"  style="width: 98%; height: 26px" value=<%=emailid %> required="required" readonly="readonly" type="text" placeholder="myusername or mymail@mail.com"/></td>
								</tr>
								<tr>
								<td colspan="2"><div class="cleaner" style="height: 20%"></div></td>
								</tr>
								<tr>
								<td> 
                                    <label style="font-size: 15px; color: #cbc750;">First Name </label></td>
                                    <td>
                                    <input id="firstname" name="firstname" style="width: 98%; height: 26px" required="required" type="text" value="<%=First_Name %>" readonly="readonly" /> 
                                </td>
                                </tr>
                                <tr>
								<td colspan="2"><div class="cleaner" style="height: 10%"></div></td>
								</tr>
                                <tr>
                                 <td> 
                                    <label style="font-size: 15px; color: #cbc750;">Middle Name </label>
                                    </td>
                                    <td>
                                    <input id="middlename" name="middlename"  style="width: 98%; height: 26px" required="required" value="<%=Middle_Name %>" readonly="readonly" /> 
                                </td>
                                 </tr>
                                 <tr>
								<td colspan="2"><div class="cleaner" style="height: 10%"></div></td>
								</tr>
                                <tr>
                                <td> 
                                    <label style="font-size: 15px; color: #cbc750;">Last Name </label>
                                    </td>
                                    <td>
                                    <input id="lastname" name="lastname" style="width: 98%; height: 26px" required="required" type="text" value="<%=Last_Name %>" readonly="readonly" /> 
                                </td>
                                 </tr>
                                 <tr>
								<td colspan="2"><div class="cleaner" style="height: 10%"></div></td>
								</tr>
                                <tr>
                                <td> 
                                    <label style="font-size: 15px; color: #cbc750;">Address</label>
                                    </td>
                                    <td>
                                    <input id="address" name="address" style="width: 98%; height: 26px" required="required" type="text" placeholder="Enter Address " /> 
                                </td>
                                 </tr>
                                 <tr>
								<td colspan="2"><div class="cleaner" style="height: 10%"></div></td>
								</tr>
                                <tr>
                               
                                 <td> 
                                    <label style="font-size: 15px; color: #cbc750;">Gender</label>
                                    </td>
                                    <td>
                                    <input id="gender" name="gender" style="width: 98%; height: 26px" required="required" type="text" value="<%=Gender %>" readonly="readonly" /> 
                              
                                   
                                     
                                </td>
                                
                                 </tr>
                                 <tr>
								<td colspan="2"><div class="cleaner" style="height: 10%"></div></td>
								</tr>
                                <tr>
                                <td> 
                                    <label style="font-size: 15px; color: #cbc750;">Mobile Number </label>
                                    </td>
                                    <td>
                                    <input id="mobileno" name="mobileno" maxlength="10" readonly="readonly" style="width: 98%; height: 26px"  value=<%=mobileno %> required="required" type="text" placeholder="eg."/>
                                </td>
                                 </tr>
                                 <tr>
								<td colspan="2"><div class="cleaner" style="height: 10%"></div></td>
								</tr>
                                <tr>
                                 <td> 
                                    <label style="font-size: 15px; color: #cbc750;">DOB </label>
                                    </td>
                                    <td>
                                    <input type="text" style="width: 98%; height: 26px"
												name="DOB" required="required"
												value="<%=DOB %>" readonly="readonly" />
                                     </td>
                                      </tr>
                                      <tr>
								<td colspan="2"><div class="cleaner" style="height: 10%"></div></td>
								</tr>
                                
								<tr>
									<td colspan="2" align="center"><input type="submit" value="Next"  style="background-image: url(images/templatemo_h1_bg.jpg);width: 50%;height: 60%;font-size: 25px;color: white" /><br /></td>
								</tr>
							</table>          	 
                            	 
                            
                            	 
                           <% }
                             else{
 %>
 <table  width="100%">
								<tr>
									<td width="20%"><label style="font-size: 15px; color: #cbc750;" > Email</label></td>
									<td> <input id="username" name="emailid"  style="width: 98%; height: 26px" value=<%=emailid %> required="required" readonly="readonly" type="text" placeholder="myusername or mymail@mail.com"/></td>
								</tr>
								<tr>
								<td colspan="2"><div class="cleaner" style="height: 20%"></div></td>
								</tr>
								<tr>
								<td> 
                                    <label style="font-size: 15px; color: #cbc750;">First Name </label></td>
                                    <td>
                                    <input id="firstname" name="firstname" style="width: 98%; height: 26px" required="required" type="text" pattern="[A-Za-z].{1,}" title="Minimum Two  Characters  are Required For First Name" placeholder="Enter Name" /> 
                                </td>
                                </tr>
                                <tr>
								<td colspan="2"><div class="cleaner" style="height: 10%"></div></td>
								</tr>
                                <tr>
                                 <td> 
                                    <label style="font-size: 15px; color: #cbc750;">Middle Name </label>
                                    </td>
                                    <td>
                                    <input id="middlename" name="middlename"  style="width: 98%; height: 26px" required="required" pattern="[A-Za-z].{1,}" title="Minimum Two  Characters  are Required For Middle Name" type="text" placeholder="Enter Name " /> 
                                </td>
                                 </tr>
                                 <tr>
								<td colspan="2"><div class="cleaner" style="height: 10%"></div></td>
								</tr>
                                <tr>
                                <td> 
                                    <label style="font-size: 15px; color: #cbc750;">Last Name </label>
                                    </td>
                                    <td>
                                    <input id="lastname" name="lastname" style="width: 98%; height: 26px" required="required" type="text" pattern="[A-Za-z].{1,}" title="Minimum Two  Characters  are Required For Last Name" placeholder="Enter Name " /> 
                                </td>
                                 </tr>
                                 <tr>
								<td colspan="2"><div class="cleaner" style="height: 10%"></div></td>
								</tr>
                                <tr>
                                <td> 
                                    <label style="font-size: 15px; color: #cbc750;">Address</label>
                                    </td>
                                    <td>
                                    <input id="address" name="address" style="width: 98%; height: 26px" required="required" type="text" placeholder="Enter Address " /> 
                                </td>
                                 </tr>
                                 <tr>
								<td colspan="2"><div class="cleaner" style="height: 10%"></div></td>
								</tr>
                                <tr>
                               
                                 <td> 
                                    <label style="font-size: 15px; color: #cbc750;">Gender</label>
                                    </td>
                                    <td>
                                    <select style="width: 100%; height: 30px"
										id="gender" name="gender" required>
											<option value="">Select Gender</option>
											<option value="Male">Male</option>
											<option value="Female">Female</option>
											<!-- <option value="Insurance">Insurance</option> -->
									</select>
                                     
                                </td>
                                
                                 </tr>
                                 <tr>
								<td colspan="2"><div class="cleaner" style="height: 10%"></div></td>
								</tr>
                                <tr>
                                <td> 
                                    <label style="font-size: 15px; color: #cbc750;">Mobile Number </label>
                                    </td>
                                    <td>
                                    <input id="mobileno" name="mobileno" maxlength="10" readonly="readonly" style="width: 98%; height: 26px"  value=<%=mobileno %> required="required" type="text" placeholder="eg."/>
                                </td>
                                 </tr>
                                 <tr>
								<td colspan="2"><div class="cleaner" style="height: 10%"></div></td>
								</tr>
                                <tr>
                                 <td> 
                                    <label style="font-size: 15px; color: #cbc750;">DOB </label>
                                    </td>
                                    <td>
                                    <input type="date" style="width: 98%; height: 26px"
												name="DOB" required="required"
												placeholder="Date" />
                                     </td>
                                      </tr>
                                      <tr>
								<td colspan="2"><div class="cleaner" style="height: 10%"></div></td>
								</tr>
                                
								<tr>
									<td colspan="2" align="center"><input type="submit" value="Update"  style="background-image: url(images/templatemo_h1_bg.jpg);width: 50%;height: 60%;font-size: 25px;color: white" /><br /></td>
								</tr>
							</table>
                                <%
                             }   
                             }
					    	catch (Exception e) {
					    		e.printStackTrace();
					    	}
                             %>
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