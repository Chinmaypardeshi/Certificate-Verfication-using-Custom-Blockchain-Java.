 <%@ page import="java.sql.*" %>
 <%@page import="javax.sql.*" %>
 <%@ page import="java.sql.*" %>
 <%@ page import="com.user.*" %>
 <%@page import="javax.sql.*" %>
 <%@page import=" java.io.PrintWriter" %>
<%@ page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="java.io.File"%>
    <%@page import="java.io.IOException"%>
    <%@page import="java.awt.image.BufferedImage"%>
    <%@page import="javax.imageio.ImageIO"%>
    <%@page import="java.io.ByteArrayOutputStream"%>

    <%@page import="java.math.BigInteger"%>
    <%@page import="javax.xml.bind.DatatypeConverter"%>
    <%@page import="java.awt.image.BufferedImage"%>
    <%@page import="java.awt.*" %>
<%@page import=" java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Bank Application</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<!--  Free CSS Templates from www.templatemo.com -->
	<div id="templatemo_container">
		<div id="templatemo_menu">
			<ul>
				<li><a href="CHome.jsp" class="current" >Home</a></li>
				<li><a href="ShowQR.jsp" class="current" >Show QR-Code</a></li>
				
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
						Home Page <span>(by Best Company)</span>
					</h1>

					
                           <table border="1" style="height: 15%;width: 100%;" >
	       <tr>
			<td><h3>UserName</h3> </td>
			<td><h3>QR Code</h3> </td>
			
		   </tr>
		   
		   <% 
		   String msg=request.getParameter("msg");
		   int flag=0;
		   if(msg==null)
		   {
			   flag=0;   
		   }
		   else if(msg.equals("1"))
		   {
			   flag=1;
		   }
		   else{
			   flag=0;
		   }
		   if(flag==0)
		   {
		   String emailid="";
		   Connection con = DBconn.conn();
		   String imgName=null;
		   String cemail=(String)session.getAttribute("Cuserid");
		   Statement st1 = (Statement) con.createStatement();
		   String str = "select * from tblqrupdateprofile where company_name='"+cemail+"'";
		   ResultSet rs = (st1).executeQuery(str);
		   while(rs.next()) 
		   {
		   	imgName=rs.getString("file_path");
		   emailid=rs.getString("emailid");
		   
		   try{
		   	    BufferedImage bImage = ImageIO.read(new File(imgName));//give the path of an image
		         ByteArrayOutputStream baos = new ByteArrayOutputStream();
		         BufferedImage result = new BufferedImage(
		         		bImage.getWidth(),
		         		bImage.getHeight(),
		                 BufferedImage.TYPE_INT_RGB);
		         result.createGraphics().drawImage(bImage, 0, 0, Color.PINK, null);
		         ImageIO.write( result, "jpg", baos );
		         baos.flush();
		         byte[] imageInByteArray = baos.toByteArray();
		         baos.close();                                   
		         String b64 = DatatypeConverter.printBase64Binary(imageInByteArray);
		         %>
		                                 
		         
       		 <tr>
           
              <td><a href="qrcoderead?emailid=<%= emailid %>"> <%= emailid %> </a></td>
              
               <td><a href="qrcoderead?emailid=<%= emailid %>"><img style="width: 50px; height: 50px"  src="data:image/jpg;base64, <%=b64%>"/> </a></td>
                </tr>
       		  <% 
              
		   
		     }catch(IOException e){
		      // System.out.println("Error: "+e);
		     } 
		   }
		   }
		   else
		   {
			   %>
			   <script type="text/javascript">
									alert("Smart Contract Expiry");
								</script>
			   <%
		   }
           
     		 %>	
              
 
			</table>
                           
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