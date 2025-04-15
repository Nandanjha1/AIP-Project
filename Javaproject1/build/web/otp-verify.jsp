<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>OTP Verification</title>
</head>
<body>
    <h2>OTP Verification</h2>
    <form action="verify-otp" method="post">
        Enter OTP: <input type="text" name="otp" required><br><br>
        <input type="submit" value="Verify OTP">
    </form>
</body>
</html>
