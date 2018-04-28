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
    <div></div>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header"><a class="navbar-brand navbar-link" href="index.jsp" style="width:529px;">Pakistan AIrline<button class="btn btn-success" type="button" style="margin-left:1%;">Show Requests</button><button class="btn btn-warning" type="button" style="margin-left:1%;">BookFlight </button></a>
                <button
                class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav navbar-right">


                    <li role="presentation"><a href="#">Contact us</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <h1> Manage Admin Requests </h1>
    <div class="table-responsive" style="background-color:#ededf1;color:rgb(25,25,25);">
        <form action="<%=response.encodeURL(request.getContextPath()+"/approve")%>" method="post">
        <table class="table table-striped table-bordered">
            <thead>
            <tr>
                <th class="warning">Request ID</th>
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
                <th>Request Type </th>
            </tr>
            </thead>
            <tbody>

            <c:forEach items="${f}" var="i">
                <tr>
                    <td>${i.reqid} </td>
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
                    <td>${i.reqtype}</td>
                    <td><button class="btn btn-success" name="reqid" type="submit" value="${i.reqid}">Approve request </button></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        </form>
        <!--
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th style="font-size:26px;color:rgb(204,204,204);background-color:#013b04;"> Requests</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td style="color:rgb(21,18,18);background-color:#f1f8f8;">Req1 </td>
                </tr>
                <tr></tr>
                <tr>
                    <td style="color:rgb(21,20,20);background-color:#ecf7f6;">Req3 </td>
                </tr>
                <tr>
                    <td style="color:rgb(13,11,11);background-color:#f1e7f0;">Req4 </td>
                </tr>
                <tr>
                    <td style="color:rgb(14,10,10);background-color:#fafefd;">Req5 </td>
                </tr>
                <tr>
                    <td style="color:rgb(8,8,8);background-color:#f1e9f0;">Req6 </td>
                </tr>
                <tr>
                    <td style="color:rgb(7,7,7);background-color:#fbf8fb;">Req7 </td>
                </tr>
            </tbody>
        </table>
        -->

    </div>
    <form action="<%=response.encodeURL(request.getContextPath()+"/approve")%>" method="post">
    <input class="input-sm" type="text" placeholder="Request ID" name="reqid" style="margin-top:5%;">
    <button class="btn btn-success" type="submit"  style="margin-left:1%;">Approve Request</button>
    </form>
    <div class="container">
        <div class="modal fade" role="dialog" tabindex="-1" id="modal1">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header" style="background-color:#080808;">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                        <h4 class="modal-title" style="color:rgb(242,236,236);">Manage Requests</h4></div>

                    <div class="modal-body" id="madal2" style="background-image:url(&quot;assets/img/2ab.jpg&quot;);">
                        <div>
    <label>Flight ID</label>
    <br />
    <input id="id" type="text" />
    <br />
    <label>Plane Name</label>
    <br />
    <input id="pname" type="text" />
    <br />
    <label>From</label> &emsp;&emsp;&emsp;&emsp;
    &emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;
    <label>To</label>
    <br />
    <input id="from" type="text" />
     &emsp;&emsp;
    <input id="to" type="text" />
    <br />
    <label>Time</label>
    <br />
    <input id="time" type="text" />
    <br />
    <label>First Class seats</label>
    &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;
    
    <label>price</label>
    <br />
    <input id="fclass" type="text" />
     &emsp;&emsp;
    <input id="fprice" type="text" />
    <br />
    <br />
    <label>Business Class seats</label>
    &emsp;&emsp; &emsp;&emsp;
    <label>price</label>
    <br />
    <input id="bclass" type="text" />
     &emsp;&emsp;
    <input id="bprice" type="text" />
    <br />
    <br />
    <label>Economy Class seats</label>
     &emsp;&emsp; &emsp;&emsp;
    <label>price</label>
    <br />
    <input id="eclass" type="text" />
     &emsp;&emsp;
    <input id="eprice" type="text" />
    <br />
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
                            <div class="row" style="width:200%;">
                                <div class="col-md-6" id="modal-message">
                                    <fieldset></fieldset>
                                    <div class="form-group has-feedback"></div>
                                    <div class="form-group">
                                        <button class="btn btn-success btn-block" type="submit" style="width:100%;">Approve Request <i class="fa fa-chevron-circle-right"></i></button>
                                    </div>
                                    <hr class="visible-xs-block visible-sm-block">
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
        </form>
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