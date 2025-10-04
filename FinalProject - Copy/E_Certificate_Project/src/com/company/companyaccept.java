package com.company;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mail.companymail;

/**
 * Servlet implementation class companyaccept
 */
@WebServlet("/companyaccept")
public class companyaccept extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public companyaccept() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String msg="Congratulations,Based on your profile,you have been selected for further process.";
		String emailid = request.getParameter("emailid");
		PrintWriter pw = response.getWriter();
		HttpSession session = request.getSession(true);
		String cemailid=(String)session.getAttribute("Cuserid");
		String cname=(String)session.getAttribute("Cusername");
		//companymail.SendRequest(emailid,msg,cname,cemailid);
		
		pw.println("<html><script>alert('Status Update Successfully');</script><body>");
		pw.println("");
		pw.println("</body></html>");
		response.sendRedirect("ShowQR.jsp");
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
