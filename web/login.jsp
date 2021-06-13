<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ApnaGhar.com | Login</title>
    
        <link rel="icon" href="./Assets/Images/logo.png" type="image/x-icon">

        <!--Font Awesome Icons-->
        <script src="https://kit.fontawesome.com/a81368914c.js"></script>

        <!--Google Font-->
        <link href='https://fonts.googleapis.com/css?family=Alegreya' rel='stylesheet'>

        <!--CSS-->
        <link rel="stylesheet" href="./Assets/CSS/login.css">

    </head>
    <body>
        <img src="./Assets/Images/wave.png" class="login-wave" alt="wave">
        <div class="container">
            <div class="login-img">                
                <img src="./Assets/Images/house-login.svg" alt="">
            </div>
            <div class="login-container">
                <form action="logincode.jsp" method="POST">                    
                    <img src="./Assets/Images/avatar-login.svg" class="login-avatar" alt="">
                    <h2>Login</h2>
                    <%
                        String registerSuccess = request.getParameter("success");
                        String uNP = request.getParameter("UNP");
                        if("valid".equals(registerSuccess)){
                            %>
                                <span style="font-size: 25px; color: #008b8b;">Register Successfully!!!</span>
                            <%
                        }else{                      
                            if("invalid".equals(uNP)){
                                %>
                                <span style="color: red;font-size: 18px">Invalid E-mail/ Mobile Number or Password</span>
                                <%
                            }
                        }
                    %>
                    <div class="login-input one">
                        <div class="login-input-i">
                            <i class="fas fa-user"></i>
                        </div>
                        <div>
                            <h5>E-mail or Mobile Number</h5>
                            <input class="logininputfield" type="text" name="username" autocomplete="off" required>
                        </div>
                    </div>
                    <div class="login-input two">
                        <div class="login-input-i">
                            <i class="fas fa-lock"></i>
                        </div>
                        <div>
                            <h5>Password</h5>
                            <input class="logininputfield logininputpassword" type="password" name="userpassword" required>
                            <span class="show-hide">
                                <i class="fa fa-eye"></i>
                            </span>
                        </div>
                    </div>
                    <div class="login-link">
                        <a href="register.jsp" class="noaccount">Don't have an account Click here?</a>
                        <a href="forgetpassword.jsp" class="forget">Forget Password?</a>
                    </div>
                    <input type="submit" class="login-btn" value="Login">
                    <p class="social-text">OR</p>
                        <div class="social-media">
                            <a href="#" class="social-icon">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-google"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-instagram"></i>
                            </a>
                        </div>
                </form>
            </div>
        </div>

        <!--JS-->
        <script src="./Assets/JS/login.js"></script>
        
        <!--Password-->
        <script>
            const pass_field = document.querySelector(".logininputpassword");
            const show_btn = document.querySelector(".fa-eye");
            
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
        </script>
    </body>
</html>