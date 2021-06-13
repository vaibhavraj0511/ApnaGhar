<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apna_ghar","root","root");
    PreparedStatement pst = con.prepareStatement("select count(*) from addhouse");
    ResultSet rs = pst.executeQuery();
    String countRow = "";
    if(rs.next()){
        countRow = rs.getString(1);
        %>
                Total:<%
    out.println(countRow);
    }
    
    PreparedStatement ps = con.prepareStatement("select count(*) from usersignup");
    ResultSet rst = ps.executeQuery();
    String countRowa = "";
    if(rst.next()){
        countRowa = rst.getString(1);
        %>
                Total:<%
    out.println(countRowa);
    }
%>