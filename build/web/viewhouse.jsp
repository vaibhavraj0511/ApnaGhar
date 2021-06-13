
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
        <title>ApnaGhar.com | Houses</title>

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

                            <a href="viewhouse.jsp" class="nav__link active">
                                <i class='bx bx-building-house nav__icon'></i>
                                <span class="nav__name">Houses</span>
                            </a>

                            <a href="myhouse.jsp" class="nav__link">
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
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apna_ghar","root","root");
        %>
        <!--Content-->
        <div class="searchbox__container">
            <form action="viewhouse.jsp" method="Post">
                <div class="searchbox__searchbox">
                    <input type="text" class="searchbox__search" name="searchbar" placeholder="Search Area or City here...">
                    <button type="submit" class="searchbox__btn">
                        <i class="fa fa-search"></i>
                    </button>
                </div>
            </form>
        </div>
        <div class="viewhouse__container">
            <div class="viewhouse__cards">
                <%
                    String searchBoxArea = request.getParameter("searchbar");
                    PreparedStatement pst = null;
                    if(searchBoxArea!=null){
                        pst = con.prepareStatement("select * from addhouse where location=? or city=?");
                        pst.setString(1, searchBoxArea);
                        pst.setString(2, searchBoxArea);
                    }
                    else{
                        pst = con.prepareStatement("select * from addhouse");
                    }
                    ResultSet rs = pst.executeQuery();
                    int flag = 0;
                    while(rs.next()){
                    flag =1;
                    String filename = rs.getString("filename");
                    String name = rs.getString("fullname");
                    String mobileNo = rs.getString("mobilenumber");
                    String address = rs.getString("address");
                    String area = rs.getString("location");
                    String city = rs.getString("city");
                    String pinCode = rs.getString("pincode");
                    String property = rs.getString("property");
                    String price = rs.getString("price");
                    String category = rs.getString("category");
                %>
                <div class="viewhouse__card">
                    <div class="viewhouse__card-container">
                        <img src="<%=filename%>" alt="NO Image">
                    </div>
                    <div class="viewhouse__detail">
                        <p class="viewhouse__detail-heading">Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<span class="viewhouse__detail-text"> <%=name%></span></p>
                        <p class="viewhouse__detail-heading">Mobile Number &nbsp;&nbsp;&nbsp;:<span class="viewhouse__detail-text"> <%=mobileNo%></span></p>                       
                        <p class="viewhouse__detail-heading">Property &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<span class="viewhouse__detail-text"> <%=property%></span></p>
                        <p class="viewhouse__detail-heading">Category &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<span class="viewhouse__detail-text"> <%=category%></span></p>
                        <p class="viewhouse__detail-heading">Price &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<span class="viewhouse__detail-text"> <%=price%></span></p>                        
                        <p class="viewhouse__detail-heading">Address &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<span class="viewhouse__detail-text"> <%=address%></span></p>
                        <p class="viewhouse__detail-heading">Area &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<span class="viewhouse__detail-text"> <%=area%></span></p>                       
                        <p class="viewhouse__detail-heading">City &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<span class="viewhouse__detail-text"> <%=city%></span></p>
                        <p class="viewhouse__detail-heading">Pin Code &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<span class="viewhouse__detail-text"> <%=pinCode%></span></p>
                    </div>
                </div>               
                <%
                    }
                %>
            </div>
        </div>
            <%
            if(flag == 1){
            }
            else{
        %>
            <div class="viewhouse__notfound">
                <img class="viewhouse__notfound-img" src="./Assets/Images/not_found.svg" alt="">
                <p class="viewhouse__notfound-text" >Houses are not available...Try again after some time!!!</p>
            </div>      
        <%
            }
        %> 
        <!--JS-->
        <script src="./Assets/JS/userhome.js"></script>
    </body>
</html>