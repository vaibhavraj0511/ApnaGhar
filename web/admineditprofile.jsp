<%@page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ApnaGhar.com | Profile</title>

        <link rel="icon" href="./Assets/Images/logo.png" type="image/x-icon">
        
        <!--Google Font-->
        <link href='https://fonts.googleapis.com/css?family=Alegreya' rel='stylesheet'>

        <!--Box Icons-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

        <!--Font Awesome Icons-->
        <script src="https://kit.fontawesome.com/64d58efce2.js"></script>
        
        <!--Bootstrap core css-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">

        <!--Materail Design Bootstrap-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css">

        <!--CSS-->
        <link rel="stylesheet" href="./Assets/CSS/userhome.css">
        <link rel="stylesheet" href="./Assets/CSS/editprofile.css">
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
                            <a href="adminhome.jsp" class="nav__link">
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
                                        <a href="familyviewhouse.jsp" class="nav__dropdown-item">Family</a>
                                        <a href="boysviewhouse.jsp" class="nav__dropdown-item">Boys</a>
                                        <a href="girlsviewhouse.jsp" class="nav__dropdown-item">Girls</a>
                                    </div>
                                </div>
                            </div>-->

                            <a href="adminsetting.jsp" class="nav__link ">
                                <i class='bx bx-cog nav__icon'></i>
                                <span class="nav__name">Setting</span>
                            </a>

                            <!--<a href="addhouse.jsp" class="nav__link">
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
            PreparedStatement pst = con.prepareStatement("select * from admin where username = ?");
            pst.setString(1, (String)session.getAttribute("adminUserName"));
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
                String image = rs.getString("image");
                String userName = rs.getString("username");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String mobileNo = rs.getString("mobileno");
        %>                                     
        <!--Content-->
        <div class="editprofile__wrapper">
            <div class="editprofile__left">
                <img src="<%=image%>" alt="">
            </div>
            <div class="editprofile__right">
                <div class="editprofile__info">
                    <h3>Personal Information <hr>
                            <%
                            String user = request.getParameter("user");
                            if("valid".equals(user)){
                                %>
                                <span style="color: #008b8b;font-size: 18px">Profile Updated Successfully!!</span>
                                <%
                            }
                        %>
                    </h3>
                    
                    <div class="editprofile__info-data">
                        <div class="editprofile__data">
                            <h4>User Name :</h4>
                            <p><%=userName%></p>
                        </div>
                        <div class="editprofile__data">
                            <h4>Name :</h4>
                            <p><%=name%></p>
                        </div>
                    </div>
                    <div class="editprofile__info-data-one">
                        <div class="editprofile__data">
                            <h4>Email :</h4>
                            <p><%=email%></p>
                        </div>
                        <div class="editprofile__data">
                            <h4>Mobile Number :</h4>
                            <p><%=mobileNo%></p>
                        </div>
                    </div>
                </div>
                <div class="editprofile__btn-center">
                    <input type="checkbox" id="editprofile__show">
                    <label for="editprofile__show" class="editprofile__show-btn"><i class="far fa-edit"></i> Update</label>
                    <div class="editprofile__btn-container">
                        <label for="editprofile__show" class="editprofile__btn-close-btn fas fa-times"></label>
                        <div class="editprofile__btn-text">Edit Profile</div>  
                        <form action="AdminEditProfile" method="POST" enctype="multipart/form-data">
                            <div class="editprofile__btn-data">
                                <label>User Name</label>
                                <input type="text" name="updateusername" value="<%=userName%>" readonly>
                            </div>
                            <div class="editprofile__btn-data">
                                <label>Name</label>
                                <input type="text" name="updatename" value="<%=name%>">
                            </div>
                            <div class="editprofile__btn-data">
                                <label>Email</label>
                                <input type="text" name="updateemail" value="<%=email%>" readonly>
                            </div>
                            <div class="editprofile__btn-data">
                                <label>Mobile Number</label>
                                <input type="text" name="updatemobilenumber" value="<%=mobileNo%>">
                            </div>
                            <div class="editprofile__btn-data">
                                <label>Profile Picture</label>
                                <input type="file" name="file">
                            </div>
                            <div class="editprofile__btn-btn">
                                <div class="">
                                    <input type="submit" class="editprofile__btn-inner" value="Update">
                                </div>
                            </div>
                        </form>
                    </div>
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