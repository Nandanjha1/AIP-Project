
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.admin.model.User, java.util.List" %>

<%
    HttpSession userSession = request.getSession(false);
    if (userSession == null) {
        response.sendRedirect("login.jsp?message=Please login first!");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>Admin Content</title>
    </head>
    <body>
        <h2 class="ms-2">Welcome, Nandan Kumar!</h2>
        <nav class="navbar bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand">User Management</a>
                <div>
                    <a href="ExportToExcelServlet"><button class="btn btn-outline-success" type="button">Export to Excel</button></a>
                    <a href="newadmin.jsp"><button class="btn btn-outline-primary" type="submit">Add New Admin</button></a>
                    <a href="logoutadmin"><button class="btn btn-outline-danger" onclick="return confirmLogout();" type="submit">Logout</button></a>
                    <a href="FetchFeedbackServlet"><button class="btn btn-outline-secondary" type="submit">Show User Feedback</button></a>
                    <a href="FetchUsersServlet"><button class="btn btn-outline-info">View Users</button></a>
                </div>
            </div>
        </nav>
        <div class="container-fluid my-3">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Mobile</th>
                        <th>Gender</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Terms Accepted</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<User> users = (List<User>) request.getAttribute("users");
                        if (users != null && !users.isEmpty()) {
                            for (User user : users) {
                    %>
                    <tr>
                        <td><%= user.getId()%></td>
                        <td><%= user.getFirstName()%></td>
                        <td><%= user.getLastName()%></td>
                        <td><%= user.getMobile()%></td>
                        <td><%= user.getGender()%></td>
                        <td><%= user.getEmail()%></td>
                        <td><%= user.getPassword()%></td>
                        <td><%= user.isTermsAccepted() ? "Yes" : "No"%></td>
                        <td>
                            <!-- Update button -->
                            <a href="update-user.jsp?id=<%= user.getId()%>" class="btn btn-primary">Update</a>

                            <!-- Remove button -->
                            <a href="remove-user?id=<%= user.getId()%>" onclick="return confirmDelete('<%= user.getId()%>')" class="btn btn-danger">Remove</a>
                        </td>

                    </tr>
                    <%
                        }
                    } else {
                    %>
                    <tr>
                        <td colspan="9" class="text-center">No users found.</td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>
        <script>
            function confirmLogout() {
                return confirm("Are you sure you want to logout?");
            }

            function confirmDelete(userId) {
                if (confirm("Are you sure you want to delete this user?")) {
                    window.location.href = "remove-user?id=" + userId;
                }
            }
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
