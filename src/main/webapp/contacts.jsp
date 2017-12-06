<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"%>
<%@ page import="com.salesforcetojava.controller.*"%>
<%

String spageid=request.getParameter("page");  
int pageid=Integer.parseInt(spageid);  
int total=5;  
if(pageid==1){}  
else{  
    pageid=pageid-1;  
    pageid=pageid*total+1;  
}  

System.out.println("logs prints r working in console....!");
    TestSalesForce tsf = new TestSalesForce();
    tsf.getContactDetails();
    List<Contacts> contactsList = tsf.getContactsList();
 //   boolean isUserExisted = tsf.validateUser(username);
    
 /*   if (isUserExisted) {
        session.setAttribute("userid", username);
        response.sendRedirect("contacts.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    } */

out.print("<h1>Page No: "+spageid+"</h1>");
out.print("<table border='1' cellpadding='4' width='60%'>");
out.print("<tr><th>Id</th><th>Name</th><th>Salary</th>");
for(Contacts e:contactsList){
	out.print("<tr><td>"+e.getId()+"</td><td>"+e.getName()+"</td><td>"+e.getPhone()+"</td></tr>");
}
out.print("</table>");
%>
<a href="contacts.jsp?page=1">1</a>
<a href="contacts.jsp?page=2">2</a>
<a href="contacts.jsp?page=3">3</a>
