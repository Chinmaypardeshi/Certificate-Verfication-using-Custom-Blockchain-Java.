package com.mail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class companymail {
	public static void main(String[] args) {
		
	}
	public static void SendRequest(String Email,String msg1,String cname,String mail)
	{
		String to=Email;
	    String subject="Send Company Approves";
	    String msg=msg1+"\n Company approves Name \t"+cname+"\n Company Email:\t"+mail;
	   final String user="blockchainecertificate@gmail.com";
	   final String pass="sunsoft@123";// send mail qrcode
	   Properties props = new Properties();
	   props.put("mail.smtp.host", "smtp.gmail.com");
	   props.put("mail.smtp.port", "587"); //this is optional
	   props.put("mail.smtp.auth", "true");
	   props.put("mail.smtp.starttls.enable", "true");

	   Session session = Session.getInstance(props,new javax.mail.Authenticator() {    
	   @Override
	   protected PasswordAuthentication getPasswordAuthentication() {
	   return new PasswordAuthentication(user,pass);
	  }
	  });
	   
	   try {
	  MimeMessage message = new MimeMessage(session);
	  message.setFrom(new InternetAddress(user));
	  message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
	  message.setSubject(subject);
	  message.setText(msg);
	  
	   Transport.send(message);
	       System.out.println(msg);
	       System.out.println("Send successfully");
	       
	       
	    }
	   catch(Exception e) 
	   {
	       System.out.println(e);
	   }	
	}	
}
