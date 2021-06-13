<%@page import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet" %>

<%
    String adminName = request.getParameter("adminname");
    String adminPassword = request.getParameter("adminpassword");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apna_ghar","root","root");
    PreparedStatement ps = con.prepareStatement("select * from admin where username=? and password=?");
    ps.setString(1, adminName);
    ps.setString(2, adminPassword);
    ResultSet rs = ps.executeQuery();
    
    if(rs.next()){
        String getUser = rs.getString(1);
        session.setAttribute("adminUserName",getUser);
        String getName = rs.getString(3);
        session.setAttribute("adminName",getName);
        String getEmail = rs.getString(4);
        session.setAttribute("adminEmail",getEmail);
        response.sendRedirect("adminhome.jsp");
    }
    else{
        response.sendRedirect("admin.jsp?pass=valid");
    }
%>