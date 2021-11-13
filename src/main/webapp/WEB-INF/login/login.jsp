<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log in</title>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>
<body>
<form action="j_security_check" method="post">

    <div class="container">
        <div class="row" style="margin-top:20px">
            <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                <form role="form">
                    <fieldset>
                        <h2>Please Sign In</h2>
                        <hr class="colorgraph">
                        <div class="form-group">
                            <label for="username"></label>
                            <input name="j_username" id="username" class="form-control input-lg" placeholder="Username">
                        </div>
                        <div class="form-group">
                            <label for="password"></label>
                            <input name="j_password" type="password" id="password" class="form-control input-lg" placeholder="Password">
                        </div>
                        <span class="button-checkbox">
					<button class="hidden" type="button"  data-color="info">Remember Me</button>
                    <label for="remember_me"></label><input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden">
					<a href="" class="btn btn-link pull-right">Forgot Password?</a>
				</span>
                        <hr class="colorgraph">
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <input type="submit" class="btn btn-lg btn-success btn-block" value="Sign In">
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <a href="" class="btn btn-lg btn-primary btn-block">Register</a>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>

    </div>

<%--    <fieldset>--%>
<%--        <legend>Insert your credentials</legend>--%>
<%--        <div>--%>
<%--            <label for="username">Username</label>--%>
<%--            <input name="j_username" id="username" placeholder="username" required>--%>
<%--        </div>--%>
<%--        <br>--%>
<%--        <div>--%>
<%--            <label for="password">Password</label>--%>
<%--            <input name="j_password" id="password" type="password" placeholder="password" required>--%>
<%--        </div>--%>
<%--    </fieldset>--%>
<%--    <br>--%>
<%--    <button type="submit">Submit</button>--%>
</form>
</body>
</html>
