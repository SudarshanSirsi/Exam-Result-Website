<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%ArrayList l1=(ArrayList)request.getAttribute("studentrow"); %>
<form action="updateurl">
<nav>
        <nav style="height: 100px; background-color: rgb(224, 208, 106); font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; display: flex; align-items: center; justify-content: center;">
            <img src="./images/logo.jpeg" width="75px"> <br>
            <nav style="width: 30px;"></nav>
            Karnataka Secondary Education Examination Board, 2023</nav>
    </nav>

        <nav style="background-color: rgb(193, 222, 249);display: flex; align-items: center;justify-content: center;">
                <table>
                    <tr>
                        <td>University Seat Number:</td>
                        <td><input type="text" name="usn" value=<%=l1.get(0)%> readonly="readonly"></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="name" value=<%=l1.get(1) %>></td>
                    </tr>
                    <tr>
                        <td>Date of Birth:</td>
                        <td><input type="date" name="dob" value=<%=l1.get(2)%>></td>
                    </tr>
                    <tr>
                        <td>Father Name:</td>
                        <td><input type="text" name="fname" value=<%=l1.get(3) %>></td>
                    </tr>
                    <tr>
                        <td>Mother Name:</td>
                        <td><input type="text" name="mname" value=<%=l1.get(4) %>> </td>
                    </tr>
                    <tr>
                        <td>English:</td>
                        <td><input type="number" name="eng" value=<%=l1.get(5) %>></td>
                    </tr>
                    <tr>
                        <td>Kannada:</td>
                        <td><input type="number" name="kan" value=<%=l1.get(6) %>></td>
                    </tr>
                    <tr>
                        <td>Maths</td>
                        <td><input type="number" name="maths" value=<%=l1.get(7) %>></td>
                    </tr>
                    <tr>
                        <td>Science</td>
                        <td><input type="number" name="sci" value=<%=l1.get(8) %>></td>
                    </tr>
                    <tr>
                        <td>Social Science</td>
                        <td><input type="number" name="ss" value=<%=l1.get(9) %>></td>
                    </tr>
                </table>
        </nav>

        <nav style="background-color: rgb(193, 222, 249);  height: 15px;"></nav>
        <nav style="background-color: rgb(193, 222, 249); display: flex; align-items: center;justify-content: center;">
            <button type="submit">Update</button>
            <nav style="width: 30px;"></nav>
            <button type="reset">Reset</button>
        </nav>
    <nav style="height: 100px; background-color: rgb(199, 224, 249); display: flex; align-items: center;justify-content: center;">
        <img src="./images/National-Informatics-Centre-NIC.jpg" width="110px">
        <nav style="display: flex; align-items: center;justify-content: center; width: 185px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-weight: bold; font-size: smaller;"> All Rights Reserved ©, 2023</nav>
    </nav>
</form>
</body>
</html>