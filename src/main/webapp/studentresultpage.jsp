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
<%-- <%ArrayList l1=(ArrayList)request.getAttribute("studentrow"); %> --%><!--  -->
<nav>
        <nav style="height: 100px; background-color: rgb(255, 255, 255); font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; display: flex; align-items: center; justify-content: center;">
           <img src="./images/logo.jpeg" width="75px"> <br>
            <nav style="width: 30px;"></nav>
            Karnataka Secondary Education Examination Board, 2023</nav>
    </nav>

    <nav style="display: flex; align-items: center;justify-content: center; background-color: aliceblue;">
        <table style="width: 370px; height: 160px">
            <tr>
                <td>University Seat Number:</td>
                <td><%=l1.get(0)%></td>
            </tr>
            <tr>
                <td>Name of the Student:</td>
                <td><%=l1.get(1)%></td>
            </tr>
            <tr>
                <td>Date of Birth:</td>
                <td><%=l1.get(2)%></td>
            </tr>
            <tr>
                <td>Father Name:</td>
                <td><%=l1.get(3)%></td>
            </tr>
            <tr>
                <td>Mother Name</td>
                <td><%=l1.get(4)%></td>
            </tr>
        </table>
    </nav>
    <nav style="display: flex; align-items: center;justify-content: center; background-color: aliceblue;">
        <table style="border: 1px solid black;height: 390px;width:370px; align-content: center;"border="1px">
            <tr>
                <th>Subject</th>
                <th>Marks Obtained</th>
                <th>Result</th>
            </tr>
            <tr>
                <td>English</td>
                <td><%=l1.get(5)%></td>
                <%double x1=(double)l1.get(5);
                String msg1="";
                if(x1>35)
                {
                    msg1="Pass";
                }
                else
                {
                    msg1="Fail"; 
                }
                %>
                <td><%=msg1%></td>
            </tr>
            <tr>
                <td>Kannada</td>
                <td><%=l1.get(6)%></td>
                <%double x2=(double)l1.get(6);
                String msg2="";
                if(x2>35)
                {
                    msg2="Pass";
                }
                else
                {
                    msg2="Fail"; 
                }
                %>
                <td><%=msg2%></td>
            </tr>
            <tr>
                <td>Maths</td>
                <td><%=l1.get(7)%></td>
                <%double x3=(double)l1.get(7);
                String msg3="";
                if(x3>35)
                {
                    msg3="Pass";
                }
                else
                {
                    msg3="Fail"; 
                }
                %>
                <td><%=msg3%></td>
            </tr>
            <tr>
                <td>Science</td>
                <td><%=l1.get(8)%></td>
                <%double x4=(double)l1.get(8);
                String msg4="";
                if(x4>35)
                {
                    msg4="Pass";
                }
                else
                {
                    msg4="Fail"; 
                }
                %>
                <td><%=msg4%></td>
            </tr>
            <tr>
                <td>Social Science</td>
                <td><%=l1.get(9)%></td>
                <%double x5=(double)l1.get(9);
                String msg5="";
                if(x5>35)
                {
                    msg5="Pass";
                }
                else
                {
                    msg5="Fail"; 
                }
                %>
                <td><%=msg5%></td>
            </tr>
        </table>
    </nav>
    <nav style="display: flex; align-items: center;justify-content: center; background-color: aliceblue; padding: 10px;">
        <table style="border: 1px solid black; align-self: center;" border="1px">
            <tr>
            	<th>
            		Total Marks
            	</th>
                <th>
                    Total Marks Obtained
                </th>
                <th>
                    Percentage Obtained
                </th>
            </tr>  
            <tr>
           		 <td>
           		 500
            	</td>
                <%double x=x1+x2+x3+x4+x5;%>
                <td>
                    <%=x%>
                </td>
                <td>
                    <%=x*0.2+"%"%>
                </td>
            </tr>  
        </table>
    </nav>

    <nav style="background-color: rgb(193, 222, 249);  height: 15px;"></nav>
        <nav style="background-color: rgb(193, 222, 249); display: flex; align-items: center;justify-content: center;">
            <button type="submit">Print</button>
            <nav style="width: 30px;"></nav>
            <a href="ViewResultPage.html">Go Back</a>
    </nav>

    <nav style="height: 100px; background-color: rgb(199, 224, 249); display: flex; align-items: center;justify-content: center;">
       <img src="./images/National-Informatics-Centre-NIC.jpg" width="110px">
        <nav style="display: flex; align-items: center;justify-content: center; width: 185px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-weight: bold; font-size: smaller;"> All Rights Reserved ©, 2023</nav>
    </nav>

</body>
</html>