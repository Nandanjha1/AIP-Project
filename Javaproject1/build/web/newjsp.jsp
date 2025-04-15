
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <style>
            body {
                background-image: url("https://img.freepik.com/premium-vector/padlock-with-keyhole-icon-personal-data-security-illustrates-cyber-data-information-privacy-idea-blue-color-abstract-hi-speed-internet-technology_542466-600.jpg?semt=ais_hybrid");
                background-size: cover;
            }
            .all {
                width: 300px;
                padding: 30px;
                border: 1px solid black;
                background-color: #000033;
                margin-left: 37%;
                margin-top: 11%;
                text-align: center;
                border-radius: 20px;
                box-shadow: 1px 1px 14px 5px #0ef;
                color: white;
            }
        </style>
    </head>
    <body>
        <div class="all">
            <h1 class="text-success">Login Here</h1>
            <form action="LoginUser" method="post">
                Enter Username: <br><input type="email" name="email" placeholder="Username..." class="form-control rounded mb-2" required>
                Enter Password: <br><input type="password" name="password" placeholder="Password..." class="form-control rounded" required>
                <input type="submit" value="Login" class="btn btn-primary mt-2 w-100">
            </form>
            <a href="login.jsp"><button class="btn btn-info mt-2 w-100">Login as Admin</button></a>
            <p style="color: red;">
                <% 
                    String message = request.getParameter("message");
                    if (message != null) {
                        out.print(message);
                    }
                %>
            </p>
        </div>
    </body>
</html>
