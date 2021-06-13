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
                <img src="./Assets/Images/forgotpassword.svg" alt="">
            </div>
            <div class="login-container">
                <form action="forgetpasswordcode.jsp" method="POST">
                    <img src="./Assets/Images/forgetpasswordavatar.svg" class="login-avatar" alt="">
                    <h2 style="font-size: 38.5px;">Forget Password?</h2>
                    <%
                        String pass = request.getParameter("pass");
                        String passw = request.getParameter("passw");
                        String success = request.getParameter("success");
                        String passl = request.getParameter("passl");
                        if("valid".equals(pass)){
                            %>
                            <span style="color: #008b8b;font-size: 18px">Password Change Successfully!!!</span>
                            <%
                        }else{
                            if("invalid".equals(pass)){
                            %>
                            <span style="color: red;font-size: 18px">New and Confirm Password doesnot match!!!</span>
                            <%
                            }
                        }

                        if("valid".equals(passw)){
                            %>
                            <span style="color: #008b8b;font-size: 18px">Password Change Successfully!!!</span>
                            <%
                        }else{
                            if("invalid".equals(passw)){
                            %>
                            <span style="color: red;font-size: 18px">New and Confirm Password doesnot match!!!</span>
                            <%
                            }
                        }
                        
                        if("valid".equals(success)){
                            %>
                            <span style="color: red;font-size: 18px">Check Email or Mobile Number</span>
                            <%
                        }
                         
                        if("valid".equals(passl)){
                            %>
                            <span style="color: red;font-size: 18px">Password Length must be 6 character</span>
                            <%
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
                            <h5>New Password</h5>
                            <input class="logininputfield logininputpassword" type="password" name="npassword" required>
                            <span class="show-hide">
                                <i class="fa fa-eye"></i>
                            </span>
                        </div>
                    </div>
                    <div class="login-input two">
                        <div class="login-input-i">
                            <i class="fas fa-lock"></i>
                        </div>
                        <div>
                            <h5>Confrim New Password</h5>
                            <input class="logininputfield logininputpasswords" type="password" name="cnpassword" required>
                        </div>
                    </div>
                    <input type="submit" class="login-btn" value="Change Password">
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