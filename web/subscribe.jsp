<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager, java.sql.Connection, java.sql.PreparedStatement" %>
<%
    int id = 0;
    String subscribe = request.getParameter("subcribe");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/apna_ghar","root","root");
    PreparedStatement ps = con.prepareStatement("select * from subscribtion where Subcribe_Mail=?");
    ps.setString(1,subscribe);
    ResultSet rs = ps.executeQuery();
    int count = 0;
    while(rs.next()){
        count++;
    }
    if(count>0){   
%>
    <script>
        alert("Already Subcribed!!");
        window.location="index.jsp";
    </script>
    <%
        
    }
    else{
    PreparedStatement ps1 = con.prepareStatement("insert into subscribtion values(?,?)");
    ps1.setInt(1, id);
    ps1.setString(2,subscribe);
    ps1.executeUpdate();%>
    <script>
        alert("Subcribe Successfully!!");
        window.location="index.html";
    </script>
    <% 
    }
    %>
    