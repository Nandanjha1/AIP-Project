<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Admin Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <style>
            .main {
                width: 60%;
                justify-content: center;
            }
        </style>
    </head>
    <body>
        <div class="main position-absolute top-50 start-50 translate-middle d-flex rounded">
            <div class="rounded">
                <img src="https://t4.ftcdn.net/jpg/04/60/71/01/360_F_460710131_YkD6NsivdyYsHupNvO3Y8MPEwxTAhORh.jpg" width="350px" height="400px" class="rounded">
            </div>
            <div class="second bg-primary-subtle p-5 text-center">
                <h2>Admin Login</h2>
                <form action="login" method="post" class="mt-5">
                    Username: <input type="text" name="username" required><br><br>
                    Password: <input type="password" name="password" required><br><br>
                    <input type="submit" value="Login" class="btn btn-success w-100">
                </form>
            </div>
        </div>
    </body>
</html>
