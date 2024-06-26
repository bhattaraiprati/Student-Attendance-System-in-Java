<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="allcss/login.css">
    <title>Index:</title>

</head>
<body>
<div class="container">
    <div class="forms">
        <div class="form login">
            <span class="title">Login</span>

            <form action="user?page=login" method="post">
                <div class="input-field">
                    <input type="text" placeholder="Enter your email" name="email" required>
                    <i class="uil uil-envelope icon"></i>
                </div>
                <div class="input-field">
                    <input type="password" class="password" placeholder="Enter your password" name="password" required>
                    <i class="uil uil-lock icon"></i>
                    <i class="uil uil-eye-slash showHidePw"></i>
                </div>

                <div class="checkbox-text">
                    <div class="checkbox-content">
                        <input type="checkbox" id="logCheck">
                        <label for="logCheck" class="text">Remember me</label>
                    </div>

                    <a href="#" class="text">Forgot password?</a>
                </div>

                <div class="input-field button">
                    <input type="submit" value="Login">
                </div>
            </form>

            <div class="login-signup">
                    <span class="text">Not a member?
                        <a href="user?page=register" class="text signup-link">Signup Now</a>
                    </span>
            </div>
        </div>
    </div>
</div>
<%--<div class="container">--%>
<%--<form action="user?page=login" method="POST" class="loginForm">--%>
<%--    <div class="fluid">--%>
<%--        <div class="log">Login</div>--%>
<%--    </div>--%>
<%--    <input type="text" name="userName" class="input-user" placeholder="Enter userName: "><br>--%>
<%--    <input type="password" name="password" class="input-password"  placeholder="Enter password: "><br>--%>
<%--    <input type="submit" value="Login">--%>
<%--    <a href="user?page=register">Register</a>--%>
<%--</form>--%>
<%--</div>--%>

        <script src="register.js"></script>
</body>
</html>