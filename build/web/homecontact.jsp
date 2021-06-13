<%@page import="java.sql.DriverManager, java.sql.Connection, java.sql.PreparedStatement" %>

<%
    int id = 0;
    String contactName = request.getParameter("contactname");
    String contactEmail = request.getParameter("contactemail");
    String contactMessage = request.getParameter("contactmessage");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apna_ghar","root","root");
    PreparedStatement ps = con.prepareStatement("insert into contactus values(?, ?, ?, ?)");
    ps.setInt(1, id);
    ps.setString(2, contactName);
    ps.setString(3, contactEmail);
    ps.setString(4, contactMessage);
    ps.executeUpdate();
%>  
    <script>
        alert("Successfully Send Message!!");
        window.location="index.jsp";
    </script>