<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patients Details</title>
</head>
<body>

<h2>Patient details</h2>
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
Connection con = null;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Patient","root","root");
	String Query = "select * from patientjsp";
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery(Query);
	while(rs.next()){
		//String s = rs.getString(1)+" : "+rs.getInt(2)+" : "+rs.getString(3)+" : "+rs.getLong(4)+" : "+rs.getString(5)+" : "+rs.getString(6);
		//out.println(s);
		 %> <tr>
          <td><%= rs.getString(1) %></td>
          <td><%= rs.getInt(2) %></td>
          <td><%= rs.getString(3) %></td>
          <td><%= rs.getLong(4) %></td>
          <td><%= rs.getString(5) %></td>
          <td><%= rs.getString(6) %></td>
      </tr><%
	}
}
catch(Exception e){
	out.println(e);
}

%>
</table>

  <form action="Patient.jsp" method="post">
      <br>
        <input type="submit" name="action1" value="Register New Patient">
    </form>

</body>
</html>