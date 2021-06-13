
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
        <link rel="stylesheet" href="./Assets/CSS/addhouse.css">
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
            String editHouseID = request.getParameter("edithouse");
            int houseId = Integer.parseInt(editHouseID);
           
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apna_ghar","root","root");
            PreparedStatement ps = con.prepareStatement("select * from addhouse where id=?");
            ps.setInt(1, houseId);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
        %>
        <div class="addhouse__container">
            <div class="addhouse__split-screen">
                <div class="addhouse__left">
                    <section class="addhouse__copy">
                        <img src="./Assets/Images/addhouse.svg" alt="">
                    </section>
                </div>
                <div class="addhouse__right">
                    <form action="UpdateHouse" method="post" enctype="multipart/form-data">
                        <section class="addhouse__copy">
                            <h1>Post Property</h1>
                        </section>
                        <div class="addhouse__input-container addhouse__id">
                            <input type="hidden" id="fname" name="id" value="<%=rs.getString("id")%>">
                        </div>
                        <div class="addhouse__input-container addhouse__name">
                            <label for="fname">Full Name</label>
                            <input type="text" id="fname" name="name" value="<%=rs.getString("fullname")%>" autocomplete="off">
                        </div>
                        
                        <div class="addhouse__input-container addhouse__mobileno">
                            <label for="mobileno">Mobile Number</label>
                            <input type="text" id="mobileno" name="mobileno" value="<%=rs.getString("mobilenumber")%>" autocomplete="off">
                        </div>
                        <div class="addhouse__input-container addhouse__address">
                            <label for="address">Address</label>
                            <textarea cols="22" rows="02" name="add"><%=rs.getString("address")%></textarea>
                        </div>
                        <div class="addhouse__input-container addhouse__location">
                            <label for="location">Area</label>
                            <input type="text" name="loc" id="location" value="<%=rs.getString("location")%>" autocomplete="off">
                        </div>
                        <div class="addhouse__input-container addhouse__city">
                            <label for="city">City</label>
                            <input type="text" name="cities" id="city" value="<%=rs.getString("city")%>" autocomplete="off">
                        </div>
                        <div class="addhouse__input-container addhouse__pincode">
                            <label for="pincode">Pin Code</label>
                            <input type="text" name="pincodes" id="pincode" value="<%=rs.getString("pincode")%>" autocomplete="off">
                        </div>
                        <div class="addhouse__input-container addhouse__property">
                            <label for="category">Property Type</label>
                            <select name="properties" id="property">
                                <option value="<%=rs.getString("property")%>"><%=rs.getString("property")%></option>
                                <option value="Villa">Villa</option>
                                <option value="Apartment">Apartment</option>
                                <option value="Flat">Flat</option>
                                <option value="House">House</option>
                                <option value="PG">PG</option>
                                <option value="Hostel">Hostel</option>                            
                                <option value="Room">Room</option>
                            </select>
                        </div>
                        <div class="addhouse__input-container addhouse__price">
                            <label for="price">Price</label>
                            <input type="text" name="prices" id="price" value="<%=rs.getString("price")%>" autocomplete="off">
                        </div>
                        <div class="addhouse__input-container addhouse__category">
                            <label for="category">Tenant Category</label>
                            <select name="categorties" id="category">
                                <option value="<%=rs.getString("category")%>"><%=rs.getString("category")%></option>
                                <option value="All">All</option>
                                <option value="Family">Family</option>
                                <option value="Girls">Girls</option>
                                <option value="Boys">Boys</option>
                            </select>
                        </div>
                        
                        <div class="addhouse__input-container addhouse__file-image">
                            <label for="file-image">Image</label>
                            <input type="file" name="file" required>
                        </div>
                        <input type="submit" value="Post Property" class="addhouse__btn">
                    </form>
                </div>
            </div>
        </div>
        <%
            }
        %>
        <!--JS-->
        <script src="./Assets/JS/userhome.js"></script>
    </body>
</html>