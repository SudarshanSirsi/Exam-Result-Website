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
    <nav style="background-color: rgb(199, 224, 249); display: flex; align-items: center;justify-content: center;height: 50px">
    		<%String msg=(String)request.getSession().getAttribute("msg"); %>
    		<%=msg+"!" %>
    </nav>
    <nav style="background-color: rgb(199, 224, 249); display: flex; align-items: center;justify-content: center; height: 30px">
    		<a href="MultipleOperation.html">Click here</a>, to Go Back
    </nav>
    
    <nav style="height: 100px; background-color: rgb(199, 224, 249); display: flex; align-items: center;justify-content: center;">
        <img src="./images/National-Informatics-Centre-NIC.jpg" width="110px">
        <nav style="display: flex; align-items: center;justify-content: center; width: 185px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-weight: bold; font-size: smaller;"> All Rights Reserved ©, 2023</nav>
    </nav>

</body>
</html>