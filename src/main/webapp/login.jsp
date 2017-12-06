<%@ page import="java.sql.*"%>
<%@ page import="com.salesforcetojava.controller.*"%>
<%@ page import="org.apache.commons.codec.binary.*"%>
<%@ page import="javax.crypto.cipher.*"%>


<%
    String username = request.getParameter("username");    
    String password = request.getParameter("password");
    System.out.println("logs prints r working in console....!"+username+"===="+password);
    TestSalesForce tsf = new TestSalesForce();
    tsf.getContactDetails();
    tsf.getContactsList();
    boolean isUserExisted = tsf.validateUser(username,password);
    
    if (isUserExisted) {
        session.setAttribute("username", username);
        response.sendRedirect("contacts.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
    
    
    
  /*  String epasss = tsf.epass;
	Encrypt_Decrypt ed = new Encrypt_Decrypt();
	ed.encriptAndDecript(epasss);
    System.out.println("epasss======================="+epasss); */
    
    /*  Base64.Decoder decoder = Base64.getDecoder();
cipher.init(Cipher.DECRYPT_MODE, aesKey);
String decrypted = new String(cipher.doFinal(decoder.decode(encryptedString)));
System.out.println(decrypted); */
    
   /*  Class.forName("org.postgresql.Driver");
    Connection con = DriverManager.getConnection("jdbc:postgresql://192.168.0.222:5432/test",
            "postgres", "gopinadh");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from users where username='" + userName + "' and password='" +password + "'");
    if (rs.next()) {
        session.setAttribute("username", username);
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
     */
%>
