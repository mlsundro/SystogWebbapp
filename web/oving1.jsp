<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="oving1css.css"/>
        <title>Form template</title>
    </head>
    <body>
        <div id="head">
        <h1>Form template</h1>
        <p><%out.println(new java.util.Date()); %></p>
        <p><script>document.write(new Date());</script></p>
        </div>
        
        <form action="oving1data.jsp" method="get">
            <!--disabled, max, maxlength, min, pattern, readonly, required, size, step, value, name-->
            First name:<br>
            <input type="text" name="firstname"><br>
            Last name:<br>
            <input type="text" name="lastname"><br>
            <br>
            Gender:<br>
            <input type="radio" name="gender" value="male">male
            <input type="radio" name="gender" value="female">female
            <input type="radio" name="gender" value="other">other<br><br>
            Things I have:<br>
            <input type="checkbox" name="vehicle1" value="Bike"> I have a bike<br>
            <input type="checkbox" name="vehicle2" value="Car"> I have a car<br>
            Select your favorite color:<br>
            <input type="color" name="favcolor"><br><br>
            Add your homepage:<br>
            <input type="url" name="homepage"><br>
            Email:<br>
            <input type="email" name="email"><br><br>
            Desired password:<br>
            <input type="password" name="pass1"><br>
            Repeat password:<br>
            <input type="password" name="pass2"><br>
            Choose a number between 1 and 10:<br>
            <input type="number" name="quantity" min="1" max="10"><br>
            <br>
            Range from 0 to 10:<br>
            <input type="range" name="points" min="0" max="10"><br>
            <input type="button" onclick="alert('You pressed the button')" value="Press me!"><br>
            <br>
            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
        </form>
    </body>
</html>
