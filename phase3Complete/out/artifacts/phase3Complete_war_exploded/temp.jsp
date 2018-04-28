<%--
  Created by IntelliJ IDEA.
  User: Awais
  Date: 10/22/2017
  Time: 2:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>new1</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/Hero-Technology.css">
    <link rel="stylesheet" href="assets/css/Pretty-Footer.css">
    <link rel="stylesheet" href="assets/css/Pretty-Header.css">
    <link rel="stylesheet" href="assets/css/Pretty-Registration-Form.css">
    <link rel="stylesheet" href="assets/css/Hero-Technology-1.css">
    <link rel="stylesheet" href="assets/css/Article-List.css">
    <link rel="stylesheet" href="assets/css/Pretty-Login-Form.css">
    <link rel="stylesheet" href="assets/css/Contact-FormModal-Contact-Form-with-Google-Map.css">
    <link rel="stylesheet" href="assets/css/Footer-Clean.css">
    <link rel="stylesheet" href="assets/css/Footer-Dark.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/css/lightbox.min.css">
    <link rel="stylesheet" href="assets/css/Lightbox-Gallery.css">
    <link rel="stylesheet" href="assets/css/MUSA_panel-table.css">
    <link rel="stylesheet" href="assets/css/MUSA_panel-table1.css">
    <link rel="stylesheet" href="assets/css/select21.css">
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header"><a class="navbar-brand navbar-link" href="#">Pakistan Airline</a>
            <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
        </div>


    </div>



    <!--   <div class="collapse navbar-collapse" id="navcol-1"><a class="btn btn-primary navbar-btn" role="button" type="submist" href="admin.jsp">Manage Flights </a><a class="btn btn-success navbar-btn" role="button" href="manager.jsp" style="margin-left:0.7%;">Show Requests</a>-->

    <ul class="nav navbar-nav navbar-right">

        <li role="presentation"><a href="https://en.wikipedia.org/wiki/Pakistan_International_Airlines">About us</a></li>
    </ul></div>

    </div>

</nav>

<form action="<%=response.encodeURL(request.getContextPath()+"/savebook")%>" method="post">
    <div class="container"></div>
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">

                <table class="table table-striped table-bordered">
                    <thead>
                    <tr>
                        <th class="warning">Flight#</th>
                        <th>Plane </th>
                        <th>Economy class</th>
                        <th>Eprice </th>
                        <th>First class seats</th>
                        <th>Fprice </th>
                        <th>Business class seats</th>
                        <th>Bprice </th>
                        <th>Pickup</th>
                        <th>Destination </th>
                        <th>Time </th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach items="${f}" var="i">
                        <tr>
                            <td>${i.fid} </td>
                            <td>${i.plane} </td>
                            <td>${i.eseats} </td>
                            <td>${i.eprice} </td>
                            <td>${i.fseats} </td>
                            <td>${i.fprice} </td>
                            <td>${i.bseats}</td>
                            <td>${i.bprice} </td>
                            <td>${i.from}</td>
                            <td>${i.to}</td>
                            <td><div contenteditable>  ${i.time}</div></td>
                            <td><button class="btn btn-success"  name="fid" type="submit" value="${i.fid}">Book Now </button></td>

                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</form>
</body>
</html>

