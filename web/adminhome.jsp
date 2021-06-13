<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ApnaGhar.com | Home</title>

        <link rel="icon" href="./Assets/Images/logo.png" type="image/x-icon">

        <!--Google Font-->
        <link href='https://fonts.googleapis.com/css?family=Alegreya' rel='stylesheet'>

        <!--Box Icons-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

        <!--Font Awesome Icons-->
        <script src="https://kit.fontawesome.com/64d58efce2.js"></script>
        
        <!--CSS-->
        <link rel="stylesheet" href="./Assets/CSS/userhome.css">
        <link rel="stylesheet" href="./Assets/CSS/admincount.css">
        
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
                        <span class="nav__profile-name"><%=session.getAttribute("adminName")%></span>
                        <a href="admineditprofile.jsp" class="nav__profile-edit">Edit Profile</a>
                    </div>

                    <div class="nav__list">
                        <div class="nav__items">
                            <a href="adminhome.jsp" class="nav__link active">
                                <i class="bx bx-home nav__icon"></i>
                                <span class="nav__name">Home</span>
                            </a>

                            <a href="adminviewhouse.jsp" class="nav__link">
                                <i class='bx bx-building-house nav__icon'></i>
                                <span class="nav__name">Houses</span>
                            </a>

                            <a href="adminviewuser.jsp" class="nav__link">
                                <i class='far fa-user nav__icon'></i>
                                <span class="nav__name">User</span>
                            </a>
                            
                            <a href="contactusview.jsp" class="nav__link ">
                                <i class='bx bx-message-square-dots nav__icon'></i>
                                <span class="nav__name">Contact Message</span>
                            </a>
                            
                            <!--<div class="nav__dropdown">
                                <a href="#" class="nav__link">
                                    <i class='bx bx-category nav__icon'></i>
                                    <span class="nav__name">Category</span>
                                    <i class="bx bx-chevron-down nav__icon nav__dropdown-icon"></i>
                                </a>

                                <div class="nav__dropdown-collapse">
                                    <div class="nav__dropdown-content">
                                        <a href="#" class="nav__dropdown-item">Family</a>
                                        <a href="#" class="nav__dropdown-item">Boys</a>
                                        <a href="#" class="nav__dropdown-item">Girls</a>
                                    </div>
                                </div>
                            </div>-->

                            <a href="adminsetting.jsp" class="nav__link ">
                                <i class='bx bx-cog nav__icon'></i>
                                <span class="nav__name">Setting</span>
                            </a>

                            <!--<a href="#" class="nav__link">
                                <i class="fas fa-clinic-medical nav__icon"></i>
                                <span class="nav__name">Add Property</span>
                            </a>-->
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
        <!--Contents-->
        <div class="admin__count">
            <%
                PreparedStatement ps = con.prepareStatement("select count(*) from usersignup");
                ResultSet rs = ps.executeQuery();
                if(rs.next()){
                    String countUser = rs.getString(1);
            %>
            <div class="admin__count-user">
                <p><i class='bx bx-user'></i></p>
                <p>Total User</p>
                <h3><%out.println(countUser);%></h3>
            </div>
            <%
                }
                    
                PreparedStatement pst = con.prepareStatement("select count(*) from addhouse");
                ResultSet rst = pst.executeQuery();
                if(rst.next()){
                    String countHouse = rst.getString(1);
            %>
            <div class="admin__count-house">
                <p><i class="fas fa-home"></i></p>
                <p>Total Property</p>
                <h3><%out.println(countHouse);%></h3>
            </div>
            <%
                }

                PreparedStatement pstt = con.prepareStatement("select count(*) from contactus");
                ResultSet rstt = pstt.executeQuery();
                if(rstt.next()){
                    String countMessage = rstt.getString(1);
            %>
            <div class="admin__count-mssg">
                <p><i class='bx bx-message-detail'></i></p>
                <p>Total Message</p>
                <h3><%out.println(countMessage);%></h3>
            </div>
            <%
                }
            %>
        </div>
        <div class="admin__welcome">
            <h1>WELCOME</h1>
        </div>
        <!--JS-->
        <script src="./Assets/JS/userhome.js"></script>
    </body>
</html>