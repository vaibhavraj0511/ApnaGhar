<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ApnaGhar.com | Register</title>
    
        <link rel="icon" href="./Assets/Images/logo.png" type="image/x-icon">

        <!--Font Awesome Icons-->
        <script src="https://kit.fontawesome.com/a81368914c.js"></script>

        <!--Google Font-->
        <link href='https://fonts.googleapis.com/css?family=Alegreya' rel='stylesheet'>
        
        <!--Jquery-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!--CSS-->
        <link rel="stylesheet" href="./Assets/CSS/register.css">

    </head>
    <body>
        <img src="./Assets/Images/wave.png" class="register-wave" alt="wave">
        <div class="container">
            <div class="register-img">
                <img src="./Assets/Images/register.svg" alt="">
            </div>
            <div class="register-container">
                <form action="usersignup.jsp" id="registration_form">
                    <img src="./Assets/Images/avatar-login.svg" class="register-avatar" alt="">
                    <h2>Register</h2>
                    <%
                        String msg = request.getParameter("msg");
                        String passValid = request.getParameter("pass");
                        String mobValid = request.getParameter("mobile");
                        if("valid".equals(msg)){
                        %>
                        <span style="color: red">Already Register with this Mail ID and Mobile Number!! Register with another..</span>
                        <%
                        }
                        else{
                            if("valid".equals(passValid)){
                                %>
                                <span style="color: red; font-size: 18px">Password length must be 6 Character</span>
                                <%
                            }
                            else if("valid".equals(mobValid)){
                                %>
                                <span style="color: red; font-size: 18px">Mobile Number must be 10 digit</span>
                                <%
                            }
                        }
                    %> 
                    <div class="register-input one">
                        <div class="register-input-i">
                            <i class="fas fa-user"></i>
                        </div>
                        <div>
                            <h5>First Name</h5>
                            <input class="registerinputfield" type="text" name="userfname" autocomplete="off" required>
                        </div>
                    </div>
                    <div class="register-input one">
                        <div class="register-input-i">
                            <i class="fas fa-user"></i>
                        </div>
                        <div>
                            <h5>Last Name</h5>
                            <input class="registerinputfield" type="text" name="userlname" autocomplete="off" required>
                        </div>
                    </div>
                    <div class="register-input one">
                        <div class="register-input-i">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <div>
                            <h5>Email</h5>
                            <input class="registerinputfield" type="email" name="useremail" autocomplete="off" required>
                        </div>
                    </div>
                    <div class="register-input two">
                        <div class="register-input-i">
                            <i class="fas fa-lock"></i>
                        </div>
                        <div>
                            <h5>Password</h5>
                            <input class="registerinputfield registerinputpassword" type="password" id="password" name="userpassword" required>
                            <span class="show-hide">
                                <i class="fa fa-eye"></i>                                                    
                            </span>                                             
                        </div>                                        
                    </div>
                    <span style="color: red;" id="passworderror"></span>
                    <div class="register-input two">
                        <div class="register-input-i">
                            <i class="fas fa-phone-alt"></i>
                        </div>
                        <div>
                            <h5>Mobile Number</h5>
                            <input class="registerinputfield" type="number" name="usermobile" autocomplete="off" required>
                        </div>
                    </div>
                    <input type="submit" class="register-btn" value="Register">
                    <a href="login.jsp">For Login Click Here</a>
                </form>
            </div>
        </div>

        <!--JS-->
        <script src="./Assets/JS/register.js"></script>
        
        <!--Password-->
        <script>
            const pass_field = document.querySelector(".registerinputpassword");
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
        <script type="text/javascript">
            $(function(){
                $("#passworderror").hide();
                
                var error_password = false;

                $("#password").focusout(function() {
                    var password_length = $("password").val().length;

                    if(password_length < 6){
                        $("#passworderror").html("Password Length must be 6 character");
                        $("#passworderror").show();
                        error_password = true;
                    }else{
                        $("#passworderror").hide();
                    }
                });

                
            });
           
        </script>
    </body>
</html>