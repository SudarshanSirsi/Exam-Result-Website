<%@page import="kseeb_dto.student_dto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav>
        <nav style="height: 100px; background-color: rgb(224, 208, 106); font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; display: flex; align-items: center; justify-content: center;">
            <img src="./images/logo.jpeg" width="75px"> <br>
            <nav style="width: 30px;"></nav>
            Karnataka Secondary Education Examination Board, 2023</nav>
 </nav>
    <%List<student_dto> l1=(List<student_dto>)request.getAttribute("studentlist"); %>
        <nav style="display: flex; align-items: center; justify-content: center;background-color: rgb(212, 229, 247) ;">
        <table style="border: 1px solid black; "border="1px">
        <tr>
        <th>USN</th>
        <th>Name</th>
        <th>Date of Birth</th>
        <th>Father Name</th>
        <th>Mother Name</th>
        <th>English</th>
        <th>Kannada</th>
        <th>Maths</th>
        <th>Science</th>
        <th>Social Science</th>
        <th>Total Marks</th>
        <th>Percentage</th>
        </tr>
        
        <%for(student_dto dto:l1) {%> 
        
        <tr>
        <td><%=dto.getUsn() %></td>
        <td><%=dto.getName() %></td>
        <td><%=dto.getDob() %></td>
        <td><%=dto.getFather_name() %></td>
        <td><%=dto.getMother_name() %></td>
        <td><%=dto.getEnglish() %></td>
        <td><%=dto.getKannada() %></td>
        <td><%=dto.getMaths() %></td>
        <td><%=dto.getScience() %></td>
        <td><%=dto.getSocial_science() %></td>
        <%double x=dto.getEnglish()+dto.getKannada()+dto.getMaths()+dto.getScience()+dto.getSocial_science(); %>
        <%double y=x*100/500; %>
        <td><%=x %></td>
        <td><%=y+"%" %></td>
        </tr>
        <%} %>
        </table>
        
    </nav>
   <nav style="background-color: rgb(212, 229, 247);display: flex; align-items: center; justify-content: center; height: 60px"> <a href="MultipleOperation.html">Go Back</a></nav>
    

    <nav style="height: 100px; background-color: rgb(199, 224, 249); display: flex; align-items: center;justify-content: center;">
        <img src="./images/National-Informatics-Centre-NIC.jpg" width="110px">
        <nav style="display: flex; align-items: center;justify-content: center; width: 185px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-weight: bold; font-size: smaller;"> All Rights Reserved ©, 2023</nav>
    </nav>
</body>
</html>