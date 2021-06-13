
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
        <link rel="stylesheet" href="./Assets/CSS/userhomecontent.css">

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
                            <a href="userhome.jsp" class="nav__link active">
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
        <div class="content__container">
            <div class="slider fade">
                <div class="myslider" style="display: block;">
                    <img src="./Assets/Images/img1.jpg" style="width: 100%; height: 100%;" alt="">
                </div>
                <div class="myslider fade">
                    <img src="./Assets/Images/img2.jpg" style="width: 100%; height: 100%;" alt="">
                </div>
                <div class="myslider fade">
                    <img src="./Assets/Images/img3.jpg" style="width: 100%; height: 100%;" alt="">
                </div>
                <div class="myslider fade">
                    <img src="./Assets/Images/img4.jpg" style="width: 100%; height: 100%;" alt="">
                </div>
                <div class="myslider fade">
                    <img src="./Assets/Images/img5.jpg" style="width: 100%; height: 100%;" alt="">
                </div>

                <a class="prev" onclick="plusslides(-1)">&#10094;</a>
                <a class="next" onclick="plusslides(1)">&#10095;</a>

                <div class="dotsbox">
                    <span class="dot" onclick="currentslide(1)"></span>
                    <span class="dot" onclick="currentslide(2)"></span>
                    <span class="dot" onclick="currentslide(3)"></span>
                    <span class="dot" onclick="currentslide(4)"></span>
                    <span class="dot" onclick="currentslide(5)"></span>
                </div>
            </div>

            <section class="about" id="about">
                <h2 class="about-title">About Us</h2>
                <span class="about-subtitle">Our Story</span>
                
                <div class="about-container">
                    <div class="about-left">
                        <article>
                            <p>
                                Apna Ghar(House Rental Management) is India's Local Search engine that provides local search related services to users across India and committed to providing outstanding service and value to; landlords and tenants. We are known for developing quality working relationships with our clientele; relationships based on respect, integrity, and trust.<br><br>

                                Apna Ghar(House Rental Management) is proud to have developed beneficial relationships with landlords and tenants and a wide range of housing professionals. We pride ourselves on building a solid foundation for your home to rest upon. we ensure that you have the support you need to make sound decisions and receive the best deal possible. We go the extra mile for you! The agents at House Rental Managementy Group take the time to listen to your needs and dreams. We work tirelessly to achieve your goals without compromise. We are committed to treating every client as our #1 priority.<br><br>

                                <b>Mission Statement</b><br>
                                Our mission is to provide residents with exemplary service in a quality home environment, to provide employees unparalleled opportunities for personal and professional development, and to provide partners and clients with maximized real estate asset value.<br><br>

                                To Our Residents We are dedicated to delivering exemplary service in a quality home environment. Our goal is to be the apartment home provider of choice - a goal we attain through our residents and employees.<br><br>

                                We understand that our customers define the standard of quality and service, and their loyalty must be earned. To Our Employees We are dedicated to developing our employees personally and professionally. We understand that by supporting our employees with a dynamic work environment, ongoing training, performance-based recognition and opportunities for advancement, our business will continually succeed. We believe that by encouraging personal and professional growth, our employees will exceed their expectations - with the benefits being realized by all.
                            </p>
                        </article>
                    </div>

                    <div class="about-right">
                        <article>
                            <div class="aboutimgslider">
                                <div class="aboutimgslide aboutactiveslide">
                                    <img src="./Assets/Images/1.jpg" alt="">
                                </div>
                                <div class="aboutimgslide">
                                    <img src="./Assets/Images/2.jpg" alt="">
                                </div>
                                <div class="aboutimgslide">
                                    <img src="./Assets/Images/3.jpg" alt="">
                                </div>
                                <div class="aboutimgslide">
                                    <img src="./Assets/Images/4.jpg" alt="">
                                </div>
                                <div class="aboutimgslide">
                                    <img src="./Assets/Images/5.jpg" alt="">
                                </div>
                                <div class="about-navigation">
                                    <div class="aboutnavbtn aboutactiveslide"></div>
                                    <div class="aboutnavbtn"></div>
                                    <div class="aboutnavbtn"></div>
                                    <div class="aboutnavbtn"></div>
                                    <div class="aboutnavbtn"></div>
                                </div>
                            </div>

                        </article>
                    </div>
                </div>
            </section>

            <footer class="footer">
                <div class="footer-container">
                    <div class="sec footer-about">
                        <h2>About Site</h2>
                        <p>We?re reimagining how you
                        rent. It?s now easier to get into a place you
                        love. So let?s do this, together.</p>
                    </div>
                    
                    <div class="sec footer-contact">
                        <h2>Contact Info</h2>
                        <ul class="footer-contact-info">
                            <li>
                                <span><i class="bx bxs-map"></i></span>
                                <span>Indore</span>
                            </li>
                            <li>
                                <span><i class="bx bx-mail-send"></i></span>
                                <span><a href="mailto:vaibhavrajsisodiya13@gmail.com">vaibhavrajsisodiya13@gmail.com</a></span>
                            </li>
                        </ul>
                    </div>
                    <div class="sec footer-social-media">
                        <h2>Follow Us</h2>
                        <ul class="footer-social-media-icon">
                            <li><a href="#"><i class='bx bxl-facebook'></i></a></li>
                            <li><a href="#"><i class='bx bxl-twitter' ></i></a></li>
                            <li><a href="#"><i class='bx bxl-instagram' ></i></a></li>
                        </ul>
                        
                    </div>
                </div>
            </footer>
            <div class="copy-right-text">
                <p>Copyright &#169; 2021 Apna Ghar. All Rights Reserved.</p>
            </div>
        </div>
        <!--JS-->
        <script src="./Assets/JS/userhome.js"></script>
        <script src="./Assets/JS/userhomecontent.js"></script>
    </body>
</html>