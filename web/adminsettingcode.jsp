<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String userName = request.getParameter("username");
    String oPassword = request.getParameter("oldpassword");
    String nPassword = request.getParameter("newpassword");
    String cPassword = request.getParameter("confrimpassword");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apna_ghar","root","root");
    PreparedStatement ps = con.prepareStatement("select * from admin where username=? and password=?");
    ps.setString(1, userName);
    ps.setString(2, oPassword);
    ResultSet rs = ps.executeQuery();
    if(rs.next()){
        if(nPassword.length() < 6){
            response.sendRedirect("adminsetting.jsp?passl=valid");
        }
        else{
            PreparedStatement pst = con.prepareStatement("Update admin set password=? where username=?");
            if(nPassword.equals(cPassword)){
                pst.setString(1, nPassword);
                pst.setString(2, userName);
                pst.executeUpdate();
                response.sendRedirect("adminsetting.jsp?pass=valid");
            }else{
                response.sendRedirect("adminsetting.jsp?pass=invalid");
            }
        }
    }    
    else{
        response.sendRedirect("adminsetting.jsp?passo=valid");
    }
%>