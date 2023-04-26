<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 2/24/2023
  Time: 9:48 AM
  To change this template use File | Settings | File Templates.
--%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="allcss/register.css">
    <title>Register</title>

</head>
<body>

<%--<form action="user?page=newUsers" method="POST">--%>
<%--    <input type="text" name="userName" placeholder="Enter userName: "><br>--%>
<%--    <input type="text" name="email" placeholder="Enter Email: "><br>--%>
<%--    <input type="password" name="password" placeholder="Enter password: "><br>--%>
<%--    <input type="password" name="cpassword" placeholder="Confirm password: "><br>--%>
<%--&lt;%&ndash;    <input type="text" name="location" placeholder="Enter Location: "><br>&ndash;%&gt;--%>

<%--    <input type="submit" value="Register">--%>
<%--    <a href="user?page=login">Already a member ? Back to Login: </a>--%>
<%--</form>--%>



<div class="container">
    <div class="forms">


        <!-- Registration Form -->
        <div class="form signup">
            <span class="title">Registration</span>

            <form action="user?page=newUsers" method="POST" id="form">
                <div class="input-field">
                    <input type="text" placeholder="Enter your name" name="userName" required>
                    <i class="uil uil-user"></i>
                </div>
                <div class="input-field">
                    <input type="text" placeholder="Enter your email" name="email" id="email" onkeydown="validation()" >
                    <span id="text"></span>
                    <i class="uil uil-envelope icon"></i>
                </div>
                <div class="input-field">
                    <input type="password" class="password" placeholder="Create a password" name="password" required>
                    <i class="uil uil-lock icon"></i>
                </div>
                <div class="input-field">
                    <input type="password" class="password" placeholder="Confirm a password" name="conform_password" required>
<%--                    <i class="uil uil-lock icon"></i>--%>
<%--                    <i class="uil uil-eye-slash showHidePw"></i>--%>
                </div>

                <div class="checkbox-text">
                    <div class="checkbox-content">
                        <input type="checkbox" id="termCon">
                        <label for="termCon" class="text">I accepted all terms and conditions</label>
                    </div>
                </div>

                <div class="input-field button" >
                    <input type="submit" value="Signup" >
                </div>
            </form>

            <div class="login-signup">
                    <span class="text">Already a member?
                        <a href="user?page=BackLogin" class="text login-link">Login Now</a>
                    </span>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">

    function validation(){
        var form = document.getElementById("form");
        var email = document.getElementById("email").value;
        var text = document.getElementById("text");

        var pattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;

        if (email.match(pattern)){
            form.classList.add("valid");
            form.classList.remove("invalid");
            text.innerHTML = "Your Email Address is Valid";
            text.style.color = "00ff00";
        }
        else {
            form.classList.remove("valid");
            form.classList.add("invalid");
            text.innerHTML = "Please Enter Valid Email Address";
            text.style.color = "ff0000";
        }
        if (email == ""){
            form.classList.remove("valid");
            form.classList.remove("invalid");
            text.innerHTML = "";
            text.style.color = "00ff00";
        }
    }

</script>

</body>
</html>