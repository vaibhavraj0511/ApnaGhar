<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String deleteHouse = request.getParameter("deletehouse");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apna_ghar","root","root");
    PreparedStatement pst = con.prepareStatement("delete from addhouse where id=?");
    pst.setString(1, deleteHouse);
    pst.executeUpdate();
    response.sendRedirect("myhouseeditordelete.jsp?delete=valid");
%>