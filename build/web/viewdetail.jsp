
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apna_ghar","root","root");
    PreparedStatement ps = con.prepareStatement("select * from usersignup");
    ps.execute();
    ResultSet rs = ps.getResultSet();
    
    while(rs.next()){
     %>
     Name : <%=rs.getString("firstname")%>
     Email : <%=rs.getString("email")%>
     <img src="./profileimage/<%=rs.getString("profileimage")%>">
             
    <%   
    }
%>