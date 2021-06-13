
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ApnaGhar.com | Add House</title>

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

                            <a href="addhouse.jsp" class="nav__link active">
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

        <!--Contents-->
        <div class="addhouse__container">
            <div class="addhouse__split-screen">
                <div class="addhouse__left">
                    <section class="addhouse__copy">
                        <%
                            String house = request.getParameter("house");
                            String mob = request.getParameter("mob");
                            if("valid".equals(house)){
                                %>
                                <div style="text-align: center">
                                    <span style="font-size: 22px;color: #008b8b">Property Added Successfully!!!</span>
                                </div>    
                                <%
                            }

                            if("valid".equals(mob)){
                                %>
                                <div style="text-align: center">
                                    <span style="font-size: 22px;color: red">Mobile Number must be 10 digit!!!</span>
                                </div>    
                                <%
                            }
                        %>
                        <br><img src="./Assets/Images/addhouse.svg" alt="">
                    </section>
                </div>
                <div class="addhouse__right">
                    <form action="FileUploadServlet" method="post" enctype="multipart/form-data">
                        <section class="addhouse__copy">
                            <h1>Post Property</h1>
                        </section>
                        <div class="addhouse__input-container addhouse__name">
                            <label for="fname">Full Name</label>
                            <input type="text" id="fname" name="fullname" autocomplete="off" required>
                        </div>
                        <div class="addhouse__input-container addhouse__email">
                            <label for="email">E-mail</label>
                            <input type="email" id="email" name="email" value="<%=session.getAttribute("getEmail")%>" readonly autocomplete="off" required>
                        </div>
                        <div class="addhouse__input-container addhouse__mobileno">
                            <label for="mobileno">Mobile Number</label>
                            <input type="number" id="mobileno" name="mobileno" autocomplete="off" required>
                        </div>
                        <div class="addhouse__input-container addhouse__address">
                            <label for="address">Address</label>
                            <textarea cols="22" rows="02" name="address" required></textarea>
                        </div>
                        <div class="addhouse__input-container addhouse__location">
                            <label for="location">Area</label>
                            <input type="text" name="location" id="location" autocomplete="off" required>
                        </div>
                        <div class="addhouse__input-container addhouse__city">
                            <label for="city">City</label>
                            <input type="text" name="city" id="city" autocomplete="off" required>
                        </div>
                        <div class="addhouse__input-container addhouse__pincode">
                            <label for="pincode">Pin Code</label>
                            <input type="number" name="pincode" id="pincode" autocomplete="off" required>
                        </div>
                        <div class="addhouse__input-container addhouse__property">
                            <label for="category">Property Type</label>
                            <select name="property" id="property" required>
                                <option value="">Select Property</option>
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
                            <input type="number" name="price" id="price" autocomplete="off" required>
                        </div>
                        <div class="addhouse__input-container addhouse__category">
                            <label for="category">Tenant Category</label>
                            <select name="category" id="category" required>
                                <option value="">Select Category</option>
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
        
        <!--JS-->
        <script src="./Assets/JS/userhome.js"></script>
    </body>
</html>