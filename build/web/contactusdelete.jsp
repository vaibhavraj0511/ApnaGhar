<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String deleteContact = request.getParameter("contactdelete");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apna_ghar","root","root");
    PreparedStatement pst = con.prepareStatement("delete from contactus where Id=?");
    pst.setString(1, deleteContact);
    pst.executeUpdate();
    response.sendRedirect("contactusview.jsp?delete=valid");
%>
