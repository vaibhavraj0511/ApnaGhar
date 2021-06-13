<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ApnaGhar.com | Login/Register</title>
    
        <link rel="icon" href="./Assets/Images/logo.png" type="image/x-icon">

        <!--Font Awesome Icons-->
        <script src="https://kit.fontawesome.com/64d58efce2.js"></script>

        <!--Google Font-->
        <link href='https://fonts.googleapis.com/css?family=Alegreya' rel='stylesheet'>

        <!--CSS-->
        <link rel="stylesheet" href="./Assets/CSS/login&register.css">
    </head>
    <body>
        <div class="container">
            <div class="forms-container">
                <div class="signin-signup">
                    <form action="loginandregister.jsp" class="sign-in-form">
                        
                        <h2 class="title">Login</h2>
                        <%  
                            String msg = request.getParameter("msg");
                            String pass = request.getParameter("pass");
                            String mob = request.getParameter("mobile");
                            String success = request.getParameter("success");
                            String unsuccess = request.getParameter("success");
                            if("valid".equals(msg)){
                                %>
                                <span style="font-size: 18px;color: red">Already Register with this Mail ID and Mobile Number!! Register with another..</span>
                                <%
                            }else{
                                if("valid".equals(pass)){
                                    %>
                                    <span style="font-size: 20px;color: red">Password Length must be 6 characters!! Register Again</span>
                                    <%
                                }else{
                                    if("valid".equals(mob)){
                                        %>
                                        <span style="font-size: 20px;color: red">Mobile Number must be 10 digit</span>
                                        <%
                                    }
                                }
                            }
                             
                            if("valid".equals(success)){
                                %>
                                    <span style="font-size: 22px;color: #008b8b">Register Successfully!!!</span>
                                <%
                            }else{
                                if("invalid".equals(unsuccess)){
                                %>
                                    <span style="font-size: 18px;color: red">Email/Mobile-Number or Password Invalid</span>
                                <%
                                }
                                
                            }
                        %>
                        <div class="input-field">
                            <i class="fas fa-user"></i>
                            <input type="text" placeholder="E-mail or Mobile Number" autocomplete="off" name="username">
                        </div>
                        <div class="input-field">
                            <i class="fas fa-lock"></i>
                            <input type="password" class="logininputpassword" placeholder="Password" name="userpassword">
                            <span class="show-hide">
                                <i class="fa fa-eye"></i>
                            </span>
                        </div>
                        <div class="forget">
                            <a href="forgetpassword.jsp">Forget Password?</a>
                        </div>
                        <input type="submit" value="Login" class="btn solid">
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

                    <form action="usersignupLandR.jsp" method="POST" class="sign-up-form">
                        
                        <h2 class="title">Register</h2>
                        <%                
                            if("valid".equals(msg)){
                                %>
                                <span style="font-size: 18px;color: red">Already Register with this Mail ID and Mobile Number!! Register with another..</span>
                                <%
                            }else{
                                if("valid".equals(pass)){
                                    %>
                                    <span style="font-size: 20px;color: red">Password Length must be 6 characters!! Register Again</span>
                                    <%
                                }else{
                                    if("valid".equals(mob)){
                                        %>
                                        <span style="font-size: 20px;color: red">Mobile Number must be 10 digit</span>
                                        <%
                                    }
                                }
                            }
                        %>
                        <div class="input-field">
                            <i class="fas fa-user"></i>
                            <input type="text" name="userfname" autocomplete="off" placeholder="First Name">
                        </div>
                        <div class="input-field">
                            <i class="fas fa-user"></i>
                            <input type="text" name="userlname" autocomplete="off" placeholder="Last Name">
                        </div>
                        <div class="input-field">
                            <i class="fas fa-envelope"></i>
                            <input type="email" name="useremail" autocomplete="off" placeholder="Email">
                        </div>
                        <div class="input-field">
                            <i class="fas fa-lock"></i>
                            <input type="password" class="registerinputpassword" name="userpassword" autocomplete="off" placeholder="Password">
                            <span class="show-hides">
                                <i class="fa fa-eye hides"></i>
                            </span>
                        </div>
                        <div class="input-field">
                            <i class="fas fa-phone-alt"></i>
                            <input type="number" name="usermobile" autocomplete="off" placeholder="Mobile Number">
                        </div>
                        <input type="submit" value="Register" class="btn solid">
                    </form>
                </div>
            </div>

            <div class="panels-container">
                <div class="panel left-panel">
                    <div class="content">
                        <h3>New Here?</h3>
                        <p>Looking for best house then first Register yourself.</p>
                        <button class="btn transparent" id="sign-up-btn">Register</button>
                    </div>
                    <img src="./Assets/Images/house-login.svg" class="image" alt="">
                </div>

                <div class="panel right-panel">
                    <div class="content">
                        <h3>One of us?</h3>
                        <p>Login fast to see new updated house feed.</p>
                        <button class="btn transparent" id="sign-in-btn">Login</button>
                    </div>
                    <img src="./Assets/Images/register.svg" class="image" alt="">
                </div>
            </div>
        </div>
        <!--JS-->
        <script src="./Assets/JS/login&register.js"></script>
        
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
        
            const pass_fields = document.querySelector(".registerinputpassword");
            const show_btns = document.querySelector(".hides");
            
            show_btns.addEventListener("click", function(){
                if(pass_fields.type === "password"){
                    pass_fields.type = "text";
                    show_btns.classList.add("hide");
                }
                else{
                    pass_fields.type = "password";
                    show_btns.classList.remove("hide");
                }
            });
        </script>
    </body>
</html>