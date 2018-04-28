<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
    <div class="row">
        <div class="col-md-12">
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header"><a class="navbar-brand navbar-link" href="index.jsp">Pakistan Airlines</a>
                        <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                    </div>
                    <div class="collapse navbar-collapse" id="navcol-1">
                        <button class="btn btn-primary navbar-btn" type="button">Manage Flights</button>
                        <button class="btn btn-warning navbar-btn" type="button" style="margin-left:1%;">Book Flight</button>
                        <ul class="nav navbar-nav navbar-right">
                            </li>
                            <li role="presentation"><a href="#">About Us</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
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
                        <th>status </th>
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
                            <td>${i.status}</td>


                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <form action="<%=response.encodeURL(request.getContextPath()+"/manipulate")%>" method="post">
        &nbsp;  &nbsp; <button class="btn btn-primary" type="submit">Update Info</button>
        Flight ID: <input type="text" name="fidinput" >
      <br><br>
    </form>

    <button class="btn btn-info" type="button" data-toggle="modal" data-target="#modal5" style="background-color:rgb(32,87,135);margin-left:1%;">Requests Status</button>
    <button class="btn btn-success" type="button" data-toggle="modal" data-target="#modal1" style="margin-left:1%;">Add Flight</button>
    <button class="btn btn-danger" type="button" data-toggle="modal" data-target="#modal6" style="margin-left:1%;">Delete Flight</button>
    <div class="container">
        <div class="modal fade" role="dialog" tabindex="-1" id="modal1">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header" style="background-color:#171515;">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                        <h4 class="modal-title" style="color:rgb(254,247,247);"><strong>Update Informaation</strong></h4></div>

                    <

                    <form action="<%=response.encodeURL(request.getContextPath()+"/addflight")%>" method="post" class="modal-body" id="model1" style="background-color:#eaeafb;background-image:url(&quot;assets/img/2ab.jpg&quot;);">
                        <div>
           <label >Flight ID</label>
    <br>

    <input id="id" type="text" name="fid" value="${fdata.fid}" />
    <br>
      <label >Plane Name</label>
     <br>
  <input id="pname" type="text" name="plane" />
    <br>
     <label >From</label> &emsp; &emsp;
    &emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;
    <label >To
    </label>
    <br>
    <input id="from" type="text" name="from"/>&emsp; &emsp;
    <input id="to" type="text" name="to" />
    <br>
     <label >Time</label>
    <br>
    <input id="time" type="text" name="time" />
    <br>
     <label >First Class seats</label> &emsp; &emsp;
    &nbsp; &emsp;&emsp; &emsp;
    <label >price
    </label>
    <br>
    <input id="fclass" type="text" name="fseats"/>&emsp; &emsp;
    <input id="fprice" type="text" name="fprice" />
    <br>
    <br>
     <label >Business Class seats</label> &emsp; &emsp;
    &nbsp; &emsp;
    <label >price
    </label>
    <br>
    <input id="bclass" type="text" name="bseats"/>&emsp; &emsp;
    <input id="bprice" type="text" name="bprice"/>
    <br>
    <br>
     <label >Economy Class seats</label> &emsp; &emsp;
    &nbsp; &emsp;
    <label >price
    </label>
    <br>
    <input id="eclass" type="text" name="eseats"/>&emsp; &emsp;
    <input id="eprice" type="text"  name="eprice"/>
    <br>

</div>

                        <form action="javascript:void();" method="get" id="contactForm">
                            <input class="form-control" type="hidden" name="Introduction" value="This email was sent from www.mywebsite.com">
                            <input class="form-control" type="hidden" name="subject" value="My Contact Form">
                            <input class="form-control" type="hidden" name="to" value="email@mywebsite.com">
                            <div class="row">
                                <div class="col-md-6">
                                    <div id="modal-successfail"></div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6" id="modal-message" style="width:100%;">
                                    <fieldset></fieldset>
                                    <div class="form-group"></div>
                                    <div class="form-group">
                                        <button class="btn btn-primary btn-block" input type="submit">Update Information<i class="fa fa-chevron-circle-right"></i></button>
                                    </div>
                                    <hr class="visible-xs-block visible-sm-block">
                                </div>
                                <div class="col-md-6">
                                    <fieldset></fieldset>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <form action="javascript:void();" method="get" id="contactForm">
            <input class="form-control" type="hidden" name="Introduction" value="This email was sent from www.mywebsite.com">
            <input class="form-control" type="hidden" name="subject" value="My Contact Form">
            <input class="form-control" type="hidden" name="to" value="email@mywebsite.com">
            <div class="row">
                <div class="col-md-6">
                    <div id="successfail"></div>
                </div>
            </div>
            <div class="row"></div>
        </form>
    </div>
    <footer>
        <div class="row">
            <div class="col-md-4 col-sm-6 footer-navigation">
                <h3><a href="#">Pakistan Airline</a></h3>
                <p class="links"><a href="#">Home</a><strong> · </strong><a href="#">Blog</a><strong> · </strong><a href="#">Pricing</a><strong> · </strong><a href="#">About</a><strong> · </strong><a href="#">Faq</a><strong> · </strong><a href="#">Contact</a></p>
                <p class="company-name">pakistan Airline© 2015 </p>
            </div>
            <div class="col-md-4 col-sm-6 footer-contacts">
                <div><span class="fa fa-map-marker footer-contacts-icon"> </span>
                    <p><span class="new-line-span">21 Revolution Street</span> Paris, France</p>
                </div>
                <div><i class="fa fa-phone footer-contacts-icon"></i>
                    <p class="footer-center-info email text-left"> +1 555 123456</p>
                </div>
                <div><i class="fa fa-envelope footer-contacts-icon"></i>
                    <p> <a href="#" target="_blank">support@company.com</a></p>
                </div>
            </div>
            <div class="clearfix visible-sm-block"></div>
            <div class="col-md-4 footer-about">
                <h4>About the company</h4>
                <p> Lorem ipsum dolor sit amet, consectateur adispicing elit. Fusce euismod convallis velit, eu auctor lacus vehicula sit amet.
                </p>
                <div class="social-links social-icons"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-linkedin"></i></a><a href="#"><i class="fa fa-github"></i></a></div>
            </div>
        </div>
    </footer>
    <div class="col-md-12">
        <div class="container">
            <div class="modal fade" role="dialog" tabindex="-1" id="modal5">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                            <h4 class="modal-title">Request Status</h4>
                            <div>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>FlightID</th>
                                                <th>Performed Operation</th>
                                                <th>Request Status</th>
                                                <th> </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>11 </td>
                                                <td>Edit </td>
                                                <td>Approved </td>
                                            </tr>
                                            <tr>
                                                <td>322</td>
                                                <td>Delete </td>
                                                <td>Pending </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="modal-body">
                            <form action="javascript:void();" method="get" id="contactForm">
                                <input class="form-control" type="hidden" name="Introduction" value="This email was sent from www.mywebsite.com">
                                <input class="form-control" type="hidden" name="subject" value="My Contact Form">
                                <input class="form-control" type="hidden" name="to" value="email@mywebsite.com">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div id="modal-successfail"></div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <form action="javascript:void();" method="get" id="contactForm">
                <input class="form-control" type="hidden" name="Introduction" value="This email was sent from www.mywebsite.com">
                <input class="form-control" type="hidden" name="subject" value="My Contact Form">
                <input class="form-control" type="hidden" name="to" value="email@mywebsite.com">
                <div class="row">
                    <div class="col-md-6">
                        <div id="successfail"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6" id="message">
                        <fieldset></fieldset>
                        <div class="form-group has-feedback"></div>
                        <div class="form-group"></div>
                        <hr class="visible-xs-block visible-sm-block">
                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="static-map"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="col-md-12">
        <div class="container">
            <div class="modal fade" role="dialog" tabindex="-1" id="modal6">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                            <h4 class="modal-title">Delete Flight</h4>

                            <form action="<%=response.encodeURL(request.getContextPath()+"/delete")%>" method="post">
                            <div>
                                <input type="text" placeholder="Enter Flight ID" name="fid"/>
                                <button class="btn btn-danger" type="submit" style="margin-left:1%;">Delete </button>
                            </div>
                            </form>

                        </div>
                        <div class="modal-body">
                            <form action="javascript:void();" method="get" id="contactForm">
                                <input class="form-control" type="hidden" name="Introduction" value="This email was sent from www.mywebsite.com">
                                <input class="form-control" type="hidden" name="subject" value="My Contact Form">
                                <input class="form-control" type="hidden" name="to" value="email@mywebsite.com">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div id="modal-successfail"></div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <form action="javascript:void();" method="get" id="contactForm">
                <input class="form-control" type="hidden" name="Introduction" value="This email was sent from www.mywebsite.com">
                <input class="form-control" type="hidden" name="subject" value="My Contact Form">
                <input class="form-control" type="hidden" name="to" value="email@mywebsite.com">
                <div class="row">
                    <div class="col-md-6">
                        <div id="successfail"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6" id="message">
                        <fieldset></fieldset>
                        <div class="form-group has-feedback"></div>
                        <div class="form-group"></div>
                        <hr class="visible-xs-block visible-sm-block">
                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="static-map"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/Contact-FormModal-Contact-Form-with-Google-Map.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/js/lightbox.min.js"></script>
    <script src="assets/js/select2.js"></script>
    <script src="assets/js/select21.js"></script>
    <script src="assets/js/select22.js"></script>
    <script src="assets/js/select23.js"></script>
    <script src="assets/js/select24.js"></script>
    <script src="assets/js/select25.js"></script>
    <script src="assets/js/select26.js"></script>
</body>

</html>