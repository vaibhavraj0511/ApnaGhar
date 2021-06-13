
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ApnaGhar.com | Setting</title>

        <link rel="icon" href="./Assets/Images/logo.png" type="image/x-icon">

        <!--Google Font-->
        <link href='https://fonts.googleapis.com/css?family=Alegreya' rel='stylesheet'>

        <!--Box Icons-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

        <!--Font Awesome Icons-->
        <script src="https://kit.fontawesome.com/64d58efce2.js"></script>
        
        <!--CSS-->
        <link rel="stylesheet" href="./Assets/CSS/userhome.css">
        <link rel="stylesheet" href="./Assets/CSS/usersetting.css">

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

                            <a href="usersetting.jsp" class="nav__link active">
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

        <!--Contents-->      
        <div class="usersetting__wrapper">
            <div class="usersetting__title">
                Password Setting
            </div>
            <%
                String passl = request.getParameter("passl");
                String pass = request.getParameter("pass");
                String passo = request.getParameter("passo");
                if("valid".equals(passl)){
                    %>
                        <div style="text-align: center;margin-bottom: 15px">
                            <span style="font-size: 18px;color: red">Password length must be 6 character</span>
                        </div>
                    <%
                }

                if("valid".equals(pass)){
                    %>
                        <div style="text-align: center;margin-bottom: 15px">
                            <span style="font-size: 18px;color: #008b8b">Password change Successfully!!!</span>
                        </div>
                    <%
                }else{
                    if("invalid".equals(pass)){
                    %>
                        <div style="text-align: center;margin-bottom: 15px">
                            <span style="font-size: 18px;color: red">New and Confirm Password doesnot match!!!</span>
                        </div>
                    <%
                    }
                }
                
                if("valid".equals(passo)){
                    %>
                        <div style="text-align: center;margin-bottom: 15px">
                            <span style="font-size: 18px;color: red">Invalid Old Password!!!</span>
                        </div>
                    <%
                }
            %>
            <form action="usersettingcode.jsp" method="POST">
                <div class="usersetting__form">
                    <div class="usersetting__input-field">
                        <label>Email</label>
                        <input type="text" class="usersetting__input" value="<%=session.getAttribute("getEmail")%>"  name="email" readonly>
                    </div>
                    <div class="usersetting__input-field">
                        <label>Old Password</label>
                        <div class="passwordfield">
                            <input type="password" class="usersetting__input usersetting__password" name="oldpassword">
                            <span class="show-hide">
                                <i class="fa fa-eye hideeye"></i>
                            </span>
                        </div>
                        
                    </div>
                    <div class="usersetting__input-field">
                        <label>New Password</label>
                        <div class="passwordfield">
                            <input type="password" class="usersetting__input usersetting__passwords" name="newpassword">
                            <span class="show-hides">
                                <i class="fa fa-eye hideeyes"></i>
                            </span>
                        </div>
                    </div>
                    <div class="usersetting__input-field">
                        <label>Confirm New Password</label>
                        <input type="password" class="usersetting__input" name="confrimpassword">
                    </div>
                    <div class="usersetting__input-field">
                        <input type="submit" value="Change" class="usersetting__btn">
                    </div>
                </div>
            </form>        
        </div>
        <!--JS-->
        <script src="./Assets/JS/userhome.js"></script>
        <script>
            const pass_field = document.querySelector(".usersetting__password");
            const show_btn = document.querySelector(".hideeye");

            show_btn.addEventListener("click", function(){
                if(pass_field.type === "password"){
                    pass_field.type = "text";
                    show_btn.classList.add("hide");
                }
                else{
                    pass_field.type = "password";
                    show_btn.classList.remove("hide");
                }
            });

            const pass_fields = document.querySelector(".usersetting__passwords");
            const show_btns = document.querySelector(".hideeyes");

            show_btns.addEventListener("click", function(){
                if(pass_fields.type === "password"){
                    pass_fields.type = "text";
                    show_btns.classList.add("hides");
                }
                else{
                    pass_fields.type = "password";
                    show_btns.classList.remove("hides");
                }
            });

        </script>
    </body>
</html>