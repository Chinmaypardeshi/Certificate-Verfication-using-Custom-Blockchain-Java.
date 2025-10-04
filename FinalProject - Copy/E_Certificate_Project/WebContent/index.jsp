<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
				<li><a href="RegisterPage.jsp" >Register Page</a></li>
				<li><a href="index.jsp" class="current">Login Page</a></li>
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
						Login <span>(by Best Student/Admin/HR)</span>
					</h1>

					<div class="product_info" style="width: 100%;height: 100%">
						<form class="post_section" action="AddLogin" method="post">
							<table  width="100%">
								<tr>
									<td><label style="font-size: 20px; color: #cbc750;">Select
											Roll:</label></td>
									<td><select style="width: 100%; height: 30px"
										id="username" name="roll" required="required">
											<option selected="selected">Select Roll</option>
											<option value="User">Student</option>
											<option value="Admin">Admin</option>
											<option value="Company">Company</option>
									</select></td>
								</tr>
								<tr>
								<td colspan="2"><div class="cleaner" style="height: 20%">&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
								</tr>
								<tr>
									<td><label style="font-size: 20px; color: #cbc750;">Email_ID</label>
									</td>
									<td><input id="username" name="email" style="width: 98%; height: 30px" required="required"
										type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
										placeholder="mymail@mail.com" /></td>
								</tr>
								<tr>
								<td colspan="2"><div class="cleaner" style="height: 20%">&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
								</tr>
								<tr>
									<td width="20%"><label style="font-size: 20px; color: #cbc750;">Password
									</label></td>
									<td><input id="password" name="password"
										required="required" type="password" style="width: 98%; height: 30px"
										placeholder="eg. X8df!90EO" /></td>
								</tr>
								<tr>
								<td colspan="2"><div class="cleaner" style="height: 20%">&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
								</tr>
								<tr>
									<td colspan="2" align="center"><input type="submit" value="Login"  style="background-image: url(images/templatemo_h1_bg.jpg);width: 50%;height: 60%;font-size: 25px;color: white" /><br /></td>
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