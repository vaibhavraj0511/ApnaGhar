
<%@page import="java.lang.String"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ApnaGhar.com | My House</title>

        <link rel="icon" href="./Assets/Images/logo.png" type="image/x-icon">
        
        <!--Google Font-->
        <link href='https://fonts.googleapis.com/css?family=Alegreya' rel='stylesheet'>

        <!--Box Icons-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

        <!--Font Awesome Icons-->
        <script src="https://kit.fontawesome.com/64d58efce2.js"></script>
        
        <!--CSS-->
        <link rel="stylesheet" href="./Assets/CSS/userhome.css">
        <link rel="stylesheet" href="./Assets/CSS/viewhouse.css">
        <link rel="stylesheet" href="./Assets/CSS/table.css">
    </head>
    <body>
        <!--Header-->
        <header class="header">
            <div class="header__container">
                <img src="./Assets/Images/logo.png" alt="" class="header__img">

                <a href="#" class="header__logo">ApnaGhar.com</a>

                <div class="header__toggle">
                    <i class="bx bx-menu" id="header-toggle"></i>
                </div>
            </div>
        </header>
        
        <!--Nav-->
        <div class="nav" id="navbar">
            <nav class="nav__container">
                <div>
                    <a href="#" class="nav__link nav__logo">
                        <i class='bx bxs-institution nav__icon'></i>
                        <span class="nav__logo-name">Apna Ghar</span>
                    </a>

                    <div class="nav__profile">                        
                        <span class="nav__profile-name"><%=session.getAttribute("getName")%></span>
                        <a href="usereditprofile.jsp" class="nav__profile-edit">Edit Profile</a>
                    </div>

                    <div class="nav__list">
                        <div class="nav__items">
                            <a href="userhome.jsp" class="nav__link">
                                <i class="bx bx-home nav__icon"></i>
                                <span class="nav__name">Home</span>
                            </a>

                            <a href="viewhouse.jsp" class="nav__link">
                                <i class='bx bx-building-house nav__icon'></i>
                                <span class="nav__name">Houses</span>
                            </a>

                            <a href="myhouse.jsp" class="nav__link active">
                                <i class='bx bx-home-heart nav__icon'></i>
                                <span class="nav__name">My House</span>
                            </a>

                            <div class="nav__dropdown">
                                <a href="#" class="nav__link">
                                    <i class='bx bx-category nav__icon'></i>
                                    <span class="nav__name">Category</span>
                                    <i class="bx bx-chevron-down nav__icon nav__dropdown-icon"></i>
                                </a>

                                <div class="nav__dropdown-collapse">
                                    <div class="nav__dropdown-content">
                                        <a href="familyviewhouse.jsp" class="nav__dropdown-item">Family</a>
                                        <a href="boysviewhouse.jsp" class="nav__dropdown-item">Boys</a>
                                        <a href="girlsviewhouse.jsp" class="nav__dropdown-item">Girls</a>
                                    </div>
                                </div>
                            </div>

                            <a href="usersetting.jsp" class="nav__link ">
                                <i class='bx bx-cog nav__icon'></i>
                                <span class="nav__name">Setting</span>
                            </a>

                            <a href="addhouse.jsp" class="nav__link">
                                <i class="fas fa-clinic-medical nav__icon"></i>
                                <span class="nav__name">Add Property</span>
                            </a>
                        </div>
                    </div>
                </div>
                <!--
                <div class="nav-login-btn nav__item ">
                    <a href="login&register.html" id="nav-login"><i class="bx bx-user"></i> Login/Register</a>
                </div>-->
                
                <a href="logout.jsp" class="nav__link nav__logout">
                    <i class="bx bx-log-out nav__icon"></i>
                    <span class="nav__name">Logout</span>
                </a>
            </nav>
        </div>                                
        <!--Content-->
        <%
            String update = request.getParameter("update");
            String delete = request.getParameter("delete");
            if("valid".equals(update)){
                %>
                <div style="text-align: center">
                    <span style="font-size: 25px;color: #008b8b;text-align: center">Property Update Successfully!!!</span>
                </div>
                <%
            }

            if("valid".equals(delete)){
                %>
                <div style="text-align: center">
                    <span style="font-size: 25px;color: red;text-align: center">Property Deleted Successfully!!!</span>
                </div>
                <%
            }
        %>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Full Name</th>
                    <th>Email</th>
                    <th>Mobile Number</th>
                    <th>Address</th>
                    <th>Location</th>
                    <th>City</th>
                    <th>Pin Code</th>
                    <th>Property</th>
                    <th>Price</th>
                    <th>Category</th>
                    <th>Image</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%                                       
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apna_ghar","root","root");
                    PreparedStatement ps = null;
                    ResultSet rs = null;
                    ps = con.prepareStatement("select * from addhouse where email = ?");
                    ps.setString(1, (String)session.getAttribute("getEmail"));
                    rs = ps.executeQuery();
                    
                    int flag = 0;
                    while(rs.next()){
                        flag = 1;
                %>
                <tr>
                    <td><%=rs.getString("id")%></td>
                    <td><%=rs.getString("fullname")%></td>
                    <td><%=rs.getString("email")%></td>
                    <td><%=rs.getString("mobilenumber")%></td>
                    <td><%=rs.getString("address")%></td>
                    <td><%=rs.getString("location")%></td>
                    <td><%=rs.getString("city")%></td>
                    <td><%=rs.getString("pincode")%></td>
                    <td><%=rs.getString("property")%></td>
                    <td><%=rs.getString("price")%></td>
                    <td><%=rs.getString("category")%></td>
                    <td>
                        <img src="<%=rs.getString("filename")%>" style="width: 100px;height: 100px">
                    </td>
                    <td class="edit-delete">
                        <a href="houseedit.jsp?edithouse=<%=rs.getString("id")%>" class="edit-btn">Edit</a>
                        <a href="housedelete.jsp?deletehouse=<%=rs.getString("id")%>" class="delete-btn">Delete</a>  
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
            <%
            if(flag == 1){
                
            }
            else{
            %>
            <div class="viewhouse__notfound">
                <img class="viewhouse__notfound-img" src="./Assets/Images/not_found.svg" alt="">
                <p class="viewhouse__notfound-text" >You are not added any Property!!!</p>
            </div>      
        <%
            }
        %> 
        <!--JS-->
        <script src="./Assets/JS/userhome.js"></script>
    </body>
</html>