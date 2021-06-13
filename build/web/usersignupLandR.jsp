<%@page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet" %>

<%
    int id = 0;
    String userFName = request.getParameter("userfname");
    String userLName = request.getParameter("userlname");
    String userEmail = request.getParameter("useremail");
    String userPassword = request.getParameter("userpassword");
    String userMobileNumber = request.getParameter("usermobile");
    String image = "default.jpg";
    String paths = "E:/Netbeans Program/Apna_Gharr/build/web//profileimage/default.jpg";
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/apna_ghar","root","root");
    PreparedStatement ps = con.prepareStatement("select * from usersignup where email=? OR mobilenumber=?");
    ps.setString(1, userEmail);
    ps.setString(2, userMobileNumber);
    ResultSet rs = ps.executeQuery();
    int count = 0;
    
    while(rs.next()){
        count++; 
    }
    
    if(count>0){
        response.sendRedirect("login&register.jsp?msg=valid");
    }
    else{
        if(userPassword.length() < 6){
            response.sendRedirect("login&register.jsp?pass=valid");           
        }
        else if(userMobileNumber.length() != 10){
            response.sendRedirect("login&register.jsp?mobile=valid");            
        }
        else{
            PreparedStatement ps1 = con.prepareStatement("insert into usersignup values(?, ?, ?, ?, ?, ?, ?, ?)");
            ps1.setInt(1, id);
            ps1.setString(2, userFName);
            ps1.setString(3, userLName);
            ps1.setString(4, userEmail);
            ps1.setString(5, userPassword);
            ps1.setString(6, userMobileNumber);
            ps1.setString(7, image);
            ps1.setString(8, paths);
            ps1.executeUpdate();
            response.sendRedirect("login&register.jsp?success=valid");
        }
    }
%>