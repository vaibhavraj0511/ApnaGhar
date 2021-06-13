<%@page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet" %>

<%
    String email = request.getParameter("username");
    String mobile = request.getParameter("username");
    String nPassword = request.getParameter("npassword");
    String cNPassword = request.getParameter("cnpassword");
    
    boolean numeric = true;
    numeric = mobile.matches("-?\\d+(\\.\\d+)?");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apna_ghar","root","root");
    
    PreparedStatement ps = con.prepareStatement("select * from usersignup where email=? or mobilenumber=?");
    ps.setString(1, email);
    ps.setString(2, mobile);
    ResultSet rs = ps.executeQuery();
    
    int count = 0;
    while(rs.next()){
        count++;
    }
    
    if(nPassword.length() < 6){
        response.sendRedirect("forgetpassword.jsp?passl=valid");
    }
    else {
        if(count>0){
            if(numeric){
                PreparedStatement ps1 = con.prepareStatement("update usersignup set password=? where mobilenumber=?");
                if(nPassword.equals(cNPassword)){
                    ps1.setString(1, nPassword);
                    ps1.setString(2, mobile);
                    ps1.executeUpdate();
                    response.sendRedirect("forgetpassword.jsp?pass=valid");
                }else{
                    response.sendRedirect("forgetpassword.jsp?pass=invalid");
                }
            }
            else{
                PreparedStatement ps1 = con.prepareStatement("update usersignup set password=? where email=?");
                if(nPassword.equals(cNPassword)){
                    ps1.setString(1, nPassword);
                    ps1.setString(2, email);
                    ps1.executeUpdate();
                    response.sendRedirect("forgetpassword.jsp?passw=valid");
                }else{
                    response.sendRedirect("forgetpassword.jsp?passw=invalid");
                }
            }
        }
        else{
            response.sendRedirect("forgetpassword.jsp?success=valid");
        }
    }
%>
        