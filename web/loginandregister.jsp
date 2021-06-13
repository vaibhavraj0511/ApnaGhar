<%@page import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet" %>

<%
    String email = request.getParameter("username");
    String mobile = request.getParameter("username");
    String userPassword = request.getParameter("userpassword");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apna_ghar","root","root");
    PreparedStatement ps = con.prepareStatement("select * from usersignup where (email=? or mobilenumber=?) and password=?");
    ps.setString(1, email);
    ps.setString(2, mobile);
    ps.setString(3, userPassword);
    ResultSet rs = ps.executeQuery();
    
    if(rs.next()){
        String getName = rs.getString(2);
        session.setAttribute("getName",getName);
        String getEmail = rs.getString(4);
        session.setAttribute("getEmail",getEmail);
        response.sendRedirect("userhome.jsp");
    }
    else{
        response.sendRedirect("login&register.jsp?success=invalid");
    }
%>