<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@page import= "java.util.*" %>
<html>
<head>
    <title>User Details</title>
</head>
<body>
    <h1>User Details</h1>
    <table border="1">
        <table border="1">
        <tr>
            <th>Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Contact</th>
            <th>Email</th>
            <th>Address</th>
        </tr>
        <%
            // Example data. Replace this with your actual data source
            List<Map<String, String>> users = new ArrayList<>();
            Map<String, String> user1 = new HashMap<>();
            user1.put("name", "John Doe");
            user1.put("age", "28");
            user1.put("gender", "Male");
            user1.put("contact", "1234567890");
            user1.put("email", "john@example.com");
            user1.put("address", "123 Main St, Cityville");

            Map<String, String> user2 = new HashMap<>();
            user2.put("name", "Jane Smith");
            user2.put("age", "32");
            user2.put("gender", "Female");
            user2.put("contact", "0987654321");
            user2.put("email", "jane@example.com");
            user2.put("address", "456 Elm St, Townsville");

            users.add(user1);
            users.add(user2);

            for (Map<String, String> user : users) {
        %>
        <tr>
            <td><%= user.get("name") %></td>
            <td><%= user.get("age") %></td>
            <td><%= user.get("gender") %></td>
            <td><%= user.get("contact") %></td>
            <td><%= user.get("email") %></td>
            <td><%= user.get("address") %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
