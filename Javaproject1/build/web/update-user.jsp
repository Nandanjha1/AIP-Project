<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.admin.model.User" %>
<%@page import="com.admin.dao.UserDAO" %>

<%
    int userId = Integer.parseInt(request.getParameter("id"));
    User user = UserDAO.getUserById(userId);
    if (user == null) {
        response.sendRedirect("admin.jsp?error=User not found");
        return;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Update User</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="p-4">
        <div class="container">
            <h2 class="mb-4">Update User</h2>
            <form action="UpdateUserServlet1" method="post">
                <input type="hidden" name="id" value="<%= user.getId()%>">

                <div class="mb-3">
                    <label>First Name</label>
                    <input type="text" name="firstName" class="form-control" value="<%= user.getFirstName()%>" required>
                </div>

                <div class="mb-3">
                    <label>Last Name</label>
                    <input type="text" name="lastName" class="form-control" value="<%= user.getLastName()%>" required>
                </div>

                <div class="mb-3">
                    <label>Mobile</label>
                    <input type="text" name="mobile" class="form-control" value="<%= user.getMobile()%>" required>
                </div>

                <div class="mb-3">
                    <label>Gender</label>
                    <select name="gender" class="form-control" required>
                        <option value="Male" <%= user.getGender().equalsIgnoreCase("Male") ? "selected" : ""%>>Male</option>
                        <option value="Female" <%= user.getGender().equalsIgnoreCase("Female") ? "selected" : ""%>>Female</option>
                        <option value="Other" <%= user.getGender().equalsIgnoreCase("Other") ? "selected" : ""%>>Other</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label>Email</label>
                    <input type="email" name="email" class="form-control" value="<%= user.getEmail()%>" required>
                </div>

                <div class="mb-3">
                    <label>Password</label>
                    <input type="password" name="password" class="form-control" value="<%= user.getPassword()%>" required>
                </div>

                <!-- Optional: show terms accepted -->
                <div class="mb-3 form-check">
                    <input type="checkbox" name="termsAccepted" class="form-check-input" value="true" <%= user.isTermsAccepted() ? "checked" : ""%> >
                    <label class="form-check-label">Accept Terms and Conditions</label>
                </div>


                <button type="submit" class="btn btn-success">Update</button>
                <a href="admin.jsp" class="btn btn-secondary">Cancel</a>
            </form>
        </div>
    </body>
</html>
