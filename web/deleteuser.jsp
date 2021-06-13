<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String deleteUser = request.getParameter("userdelete");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apna_ghar","root","root");
    PreparedStatement pst = con.prepareStatement("delete from usersignup where id=?");
    pst.setString(1, deleteUser);
    pst.executeUpdate();
    response.sendRedirect("adminviewuser.jsp?delete=valid");
%>
