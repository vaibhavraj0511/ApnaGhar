<%@page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet" %>

<%
    String email = request.getParameter("email");
    String oPassword = request.getParameter("oldpassword");
    String nPassword = request.getParameter("newpassword");
    String cPassword = request.getParameter("confrimpassword");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apna_ghar","root","root");
    PreparedStatement ps = con.prepareStatement("select * from usersignup where email=? and password=?");
    ps.setString(1, email);
    ps.setString(2, oPassword);
    ResultSet rs = ps.executeQuery();
    if(rs.next()){
        if(nPassword.length() < 6){
            response.sendRedirect("usersetting.jsp?passl=valid");
        }
        else{
            PreparedStatement pst = con.prepareStatement("Update usersignup set password=? where email=?");
            if(nPassword.equals(cPassword)){
                pst.setString(1, nPassword);
                pst.setString(2, email);
                pst.executeUpdate();
                response.sendRedirect("usersetting.jsp?pass=valid");
            }else{
                response.sendRedirect("usersetting.jsp?pass=invalid");
            }
        }
    }    
    else{
        response.sendRedirect("usersetting.jsp?passo=valid");
    }
%>