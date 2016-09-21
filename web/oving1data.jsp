<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Data</h1>
        First name: <%=request.getParameter("firstname")%><br>
        Last name: <%=request.getParameter("lastname")%><br>
        Gender: <%=request.getParameter("gender")%><br>
        Favorite color: <%=request.getParameter("favcolor")%><br>
        Home page: <%=request.getParameter("homepage")%><br>
        Email: <%=request.getParameter("email")%><br>
        Number: <%=request.getParameter("quantity")%><br>
        Points: <%=request.getParameter("points")%> <br>
    </body>
</html>
