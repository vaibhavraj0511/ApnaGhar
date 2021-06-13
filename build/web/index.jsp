<!DOCTYPE html>
<html lang="en">   
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ApnaGhar.com</title>
    
        <link rel="icon" href="./Assets/Images/logo.png" type="image/x-icon">

        <!--Box Icons-->
        <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet">

        <!--Google Font-->
        <link href='https://fonts.googleapis.com/css?family=Alegreya' rel='stylesheet'>
        
        <!--CSS-->
        <link rel="stylesheet" href="./Assets/CSS/index.css">
        
        <link rel="stylesheet" href="./Assets/CSS/lightslider.css">

        <!--Jquery-->
        <script src="./Assets/JS/jquery.js"></script>
        <script src="./Assets/JS/lightslider.js"></script>
    </head>
    <body>
        

        <!--Navbar-->
        <header class="l-header" id="header">
            <nav class="nav bd-container">
                <a href="#home" class="nav__logo"><img src="./Assets/Images/logo.png" alt=""></a>

                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">
                        <li class="nav__item"><a href="#home" class="nav__link active-link"><i class="home-icons bx bx-home"></i> Home</a></li>
                        <li class="nav__item"><a href="#about" class="nav__link"><i class="home-icons bx bx-detail"></i> About Us</a></li>
                        <li class="nav__item"><a href="#team" class="nav__link"><i class="home-icons bx bx-group"></i> Team</a></li>
                        <li class="nav__item"><a href="#services" class="nav__link"><i class="home-icons bx bx-cog bx-spin"></i> Services</a></li>
                        <li class="nav__item"><a href="#contact" class="nav__link"><i class="home-icons bx bx-phone-call"></i> Contact Us</a></li>
                        
                        <div class="nav-login-btn nav__item">
                            <a href="login&register.jsp" id="nav-login"><i class="bx bx-user"></i> Login/Register</a>
                        </div>
                    </ul>
                    
                </div>
            
                <div class="nav__toggle" id="nav-toggle">
                    <i class='bx bx-menu-alt-right'></i>
                </div>
            </nav>
        </header>
        <main class="l-main">

            <!--Home-->
            <section class="home" id="home">
                <div class="home-container bd-grid">
                    <!--<img src="./Assets/Images/home-banner.jpg" alt="Home Image">-->
                </div>            
                <div class="home-image-text">
                    <span class="home-image-text-style">EVERYTHING YOU NEED<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ALL IN ONE PLACE</span>
                </div>
                <div class="home-btns">
                    <div class="home-btn-style home-btn-space home-btn-media-style-L">
                        <a href="login.jsp"><i class='bx bx-user'></i> Login</a>
                    </div>
                    <div class="home-btn-style home-btn-space home-btn-media-style-R">
                        <a href="register.jsp"><i class='bx bx-user-plus'></i> Register</a>
                    </div>
                </div>
            </section> 
            <!--About US-->
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
            <!--Our Team-->
            <section class="team" id="team">
                <div class="team-background-color">
                    <h2 class="team-title">Our Team</h2>
                    <span class="team-subtitle">Developers</span>

                    <div class="team-container">    
                        <div class="team-content">
                            <div class="team-img">
                                <img src="./Assets/Images/sj.jpg" alt="">
                            </div>
                            <div class="team-name">
                                <p>Soumya Jain</p>
                            </div>
                            <hr class="team-hr">
                            <div class="team-sub-name">
                                <p>Front End Developer</p>
                            </div>
                            <div class="team-social-media">                        
                                <a href="https://www.instagram.com/sj___only" class="team-social-media-link" target="blank"><i class='bx bxl-instagram' ></i></a>
                                <a href="https://www.linkedin.com/in/soumya-jain-7314bb206" class="team-social-media-link" target="blank"><i class='bx bxl-linkedin' ></i></a>
                            </div>
                        </div>
                        <hr class="team-hr-second">
                        <div class="team-content">
                            <div class="team-img">&nbsp;&nbsp;
                                <img src="./Assets/Images/vrss.png" alt="">
                            </div>
                            <div class="team-name">
                                <p>Vaibhav Raj Sisodiya</p>
                            </div>  
                            <hr class="team-hr">
                            <div class="team-sub-name">
                                <p>Full Stack Developer</p>
                            </div>
                            <div class="team-social-media">        
                                <a href="https://www.instagram.com/vaibhav.raj_" class="team-social-media-link-v" target="blank"><i class='bx bxl-instagram'></i></a>
                                <a href="https://www.linkedin.com/in/vaibhav-raj-sisodiya-30029a1b3" class="team-social-media-link-v" target="blank"><i class='bx bxl-linkedin'></i></a>
                                <a href="https://www.github.com/vaibhavraj0511" class="team-social-media-link-v"><i class='bx bxl-github'></i></a>
                            </div>
                        </div>
                        <hr class="team-hr-second">
                        <div class="team-content">
                            <div class="team-img">
                                <img src="./Assets/Images/si.jpeg" alt="">
                            </div>
                            <div class="team-name">
                                <p>Shreya Itoria</p>
                            </div>
                            <hr class="team-hr">
                            <div class="team-sub-name">
                                <p>Front End Developer</p>
                            </div>  
                            <div class="team-social-media">                            
                                <a href="https://www.instagram.com/shreyaitoria" class="team-social-media-link" target="blank"><i class='bx bxl-instagram'></i></a>
                                <a href="https://www.linkedin.com/in/shreya-itoria-62b6061b4" class="team-social-media-link" target="blank"><i class='bx bxl-linkedin'></i></a>
                            </div>
                        </div>
                    </div>
                </div>    
            </section>
            <!--Services-->
            <section class="services" id="services">
                <h2 class="services-title">Services</h2>
                <span class="services-subtitle">Why Choose Us</span>
                
                <div class="services-container ">
                    <div class="services-data">                        
                        <i class='bx bxs-institution service-icon-style'></i>                        
                        <h2 class="service-text-style">Villa</h2>
                    </div>
                    <div class="services-data">
                        <i class='bx bx-building-house service-icon-style'></i>
                        <h2 class="service-text-style">Houses</h2>
                    </div>
                    <div class="services-data">                        
                        <i class='bx bx-building service-icon-style' ></i>                        
                        <h2 class="service-text-style">Apartment</h2>
                    </div>
                    <div class="services-data">                    
                        <i class='bx bxs-school service-icon-style' ></i>                        
                        <h2 class="service-text-style">Hostel</h2>
                    </div>
                    <div class="services-data">
                        <i class='bx bx-bed service-icon-style' ></i>
                        <h2 class="service-text-style">Room</h2>
                    </div>
                </div>

                <!--Service Carousel-->
                <ul id="autoWidth" class="cs-hidden">
                    <li class="item-a">
                        <div class="service-slider-box">
                            <i class='bx bxs-institution service-icon-style'></i>                        
                        <h2 class="service-text-style">Villa</h2>
                        </div>
                    </li>
                    <li class="item-b">
                        <div class="service-slider-box">
                            <i class='bx bx-building-house service-icon-style'></i>
                        <h2 class="service-text-style">Houses</h2> 
                        </div>
                    </li>
                    <li class="item-c">
                        <div class="service-slider-box">
                            <i class='bx bx-building service-icon-style' ></i>                        
                        <h2 class="service-text-style">Apartment</h2> 
                        </div>
                    </li>
                    <li class="item-d">
                        <div class="service-slider-box">
                            <i class='bx bxs-school service-icon-style' ></i>                        
                            <h2 class="service-text-style">Hostel</h2> 
                        </div>
                    </li>
                    <li class="item-e">
                        <div class="service-slider-box">
                            <i class='bx bx-bed service-icon-style' ></i>
                        <h2 class="service-text-style">Room</h2> 
                        </div>
                    </li>
                </ul>
            </section>
            <!--Contact Us-->
            <section class="contact" id="contact">
                <h2 class="contact-title">Contact Us</h2>
                <span class="contact-subtitle">Get in touch</span>
                
                <p class="contact-note">If you’d like to get in touch, send us a message or simply contact us directly using the details below.</p>
                
                <div class="contact-container bd-grid">
                    <div class="contact-box">
                        <i class="bx bxs-map contact-icon"></i>
                        <h3 class="contact-heading">Location</h3>
                        <span class="contact-description">Indore</span>
                    </div>

                    <div class="contact-box">
                        <i class="bx bx-mail-send contact-icon"></i>
                        <h3 class="contact-heading">Email</h3>
                        <span class="contact-description"><a href="mailto:vaibhavrajsisodiya13@gmail.com">vaibhavrajsisodiya13@gmail.com</a></span>
                    </div>
                </div>

                <div class="contact-form">
                    <form action="homecontact.jsp" class="contact-form-method" method="POST">
                        <div class="contact-text-pass bd-grid">
                            <div class="contact-text-field">
                                <input type="text" name="contactname" class="contact-name" required autocomplete="off">
                                <span></span>
                                <label>Name</label>
                            </div>
                            <div class="contact-text-field">
                                <input type="email" name="contactemail" required autocomplete="off">
                                <span></span>
                                <label>E-mail</label>
                            </div>
                        </div>
                        <div class="contact-text-area">
                            <div class="contact-text-field contact-text-field-area">
                                <textarea id="" cols="22" rows="05" name="contactmessage" autocomplete="off" required></textarea>
                                <span></span>
                                <label>Message</label>
                            </div>
                        </div>
                        <input type="submit" value="Send Message">
                    </form>
                </div>
            </section>
        </main>
        <!--Footer-->
        <footer class="footer">
            <div class="footer-container">
                <div class="sec footer-about">
                    <h2>About Site</h2>
                    <p>We’re reimagining how you
                        rent. It’s now easier to get into a place you
                        love. So let’s do this, together.</p>
                </div>
                <div class="sec footer-quick-link">
                    <h2>Quick Links</h2>
                    <ul>  
                        <li><a href="login&register.jsp">Login/Register</a></li>          
                        <li><a href="admin.jsp">Admin</a></li>
                        <li><a href="#about">About Us</a></li>
                        <li><a href="#services">Services</a></li>
                        <li><a href="#team">Our Team</a></li>
                        <li><a href="t&c.jsp">Terms & Condition</a></li>                    
                    </ul>
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
                        <li><a href="https://www.facebook.com/vaibhavraj0511"><i class='bx bxl-facebook'></i></a></li>
                        <li><a href="https://twitter.com/vaibhavraj_"><i class='bx bxl-twitter' ></i></a></li>
                        <li><a href="https://www.instagram.com/vaibhav.raj_"><i class='bx bxl-instagram' ></i></a></li>
                    </ul>
                    <!--<div class="footer-subscribe">
                        <h2>Subscribe</h2>
                        <form action="subscribe.jsp" method="POST">
                            <div class="footer-subscribe-text">
                                <input type="email" name="subcribe" class="footer-text" autocomplete="off">
                                <input type="submit" value="Subscribe"  class="subscribe-btn" >
                            </div>
                        </form>
                    </div>-->
                </div>
            </div>
        </footer>
        <div class="copy-right-text">
            <p>Copyright &#169; 2021 Apna Ghar. All Rights Reserved.</p>
        </div>
        
        <!--JS-->
        <script src="./Assets/JS/index.js"></script>
    </body>
</html>