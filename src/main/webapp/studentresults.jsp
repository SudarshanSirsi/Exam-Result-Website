<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./styles/resultpage.css">
</head>
<body>
	<%
	ArrayList l1 = (ArrayList) request.getAttribute("studentrow");
	%>
	<nav
		class="nav--head">
		<img src="./images/logo.jpeg" width="75px"> <br>
		 <nav style="width: 30px;"></nav>
		Karnataka Secondary Education Examination Board, 2023
	</nav>
	<div class="name">Name :  <%=l1.get(1)%></div>
	<div class="regNo">Reg. No :  <%=l1.get(0)%></div>
	<div class="grid--container">
		<div class="container">
			<div class="cells header">Part A</div>
			<div class="cells table--head">Subject</div>
			<div class="cells table--head">Obtained Marks</div>
			<div class="cells table--head">Total Marks</div>
			<div class="cells table--head">Result</div>
			
			<div class="cells subjects">Kannada</div>
			<div class="cells marks"><%=l1.get(6)%></div>
			<div class="cells marks">100</div>
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
			<div class="cells marks"><%=msg2%></div>
			
			
			<div class="cells subjects">English</div>
			<div class="cells marks"><%=l1.get(5)%></div>
			<div class="cells marks">100</div>
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
			<div class="cells marks"><%=msg1%></div>
			
			
			<div class="cells subjects">Science</div>
			<div class="cells marks"><%=l1.get(8)%></div>
			<div class="cells marks">100</div>
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
			<div class="cells marks"><%=msg4%></div>
			
			<div class="cells subjects">Mathematics</div>
			<div class="cells marks"><%=l1.get(7)%></div>
			<div class="cells marks">100</div>
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
			<div class="cells marks"><%=msg3%></div>
			
			<div class="cells subjects">Social Science</div>
			<div class="cells marks"><%=l1.get(9)%></div>
			<div class="cells marks">100</div>
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
			<div class="cells marks"><%=msg5%></div>
		</div>


		<div class="overall--result--container">
			<div class="item item1">Total Marks</div>
			<div class="item item2">Total Marks Obtained</div>
			<div class="item item3">Percentage</div>
			<div class="item item4">500</div>
			 <%double x=x1+x2+x3+x4+x5;%>
			<div class="item item5"><%=x%></div>
			<div class="item item6"><%=x*0.2+"%"%></div>
		</div>
	</div>


</body>
</html>