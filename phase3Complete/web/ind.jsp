<%--
  Created by IntelliJ IDEA.
  User: awais
  Date: 10/11/2017
  Time: 12:09 AM
  To change this template use File | Settings | File Templates.
--%>

<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="<%=response.encodeURL(request.getContextPath()+"/a")%>" method="post">


    First name:<br>
    <input type="text" name="firstname" value="Mickey"><br>
    Last name:<br>
    <input type="text" name="lastname" value="Mouse"><br><br>
    <input type="submit" value="Submit">
  </form>
  </body>
</html>
