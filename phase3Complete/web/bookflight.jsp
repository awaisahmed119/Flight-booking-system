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
                    <div class="navbar-header"><a class="navbar-brand navbar-link" href="index.html">Pakistan Airline</a>
                        <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                    </div>
                    <div class="collapse navbar-collapse" id="navcol-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active" role="presentation"><a href="#">Login </a></li>
                            <li role="presentation"><a href="#">Signup </a></li>
                            <li role="presentation"><a href="#">AboutUS </a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <div></div>
    <div class="row login-form">
        <div class="col-md-4 col-md-offset-4">
            <h2 class="text-center form-heading">Book a Flight</h2>
            <form class="custom-form" action="<%=response.encodeURL(request.getContextPath()+"/book")%>" method="post" >

                <div class="form-group">
                    <select name="from" size="1" id="from">
                        <option value="0" selected>Pickup Point</option>
                        <option value="Lahore">Lahore</option>
                        <option value="Islamabad">Islamabad</option>
                        <option value="Karachi">Karachi</option>
                    </select>
                </div>

                <div class="form-group" >
                    <select name="to" size="1" id="To"  >
                        <option value="0" selected >Destination</option>
                        <option value="Lahore">Lahore</option>
                        <option value="Islamabad">Islamabad</option>
                        <option value="Karachi">Karachi</option>
                    </select>
                </div>

                <div class="form-group">
                    <input class="form-control" name="totalseats" type="text" placeholder="Total Seats">
                </div>

                <div class="form-group">
                    <select name="seatclass" size="1" id="seatclass">
                        <option value="0" selected>Seat Class</option>
                        <option value="1">First Class Seat</option>
                        <option value="2">Business Class Seat</option>
                        <option value="3">Economy Class Seat</option>
                    </select>
                </div>
                <button class="btn btn-primary" type="submit" style="margin-left:30%;">Check Flight Now</button>
            </form>
        </div>
        <div class="col-md-12">
            <div class="container">
                <div class="modal fade" role="dialog" tabindex="-1" id="modal4">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                <h4 class="modal-title">Contact Information</h4>
                                <div>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>Flight Number</th>
                                                    <th>plane </th>
                                                    <th>Departure Time</th>
                                                    <th> </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>11 </td>
                                                    <td>Boing 777</td>
                                                    <td>12 Aug 12pm</td>
                                                </tr>
                                                <tr>
                                                    <td>322</td>
                                                    <td>Air Bus 309</td>
                                                    <td>11Aug 2am</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <input type="text" placeholder="Your Desired Flight Number" style="width:197px;">
                                    <button class="btn btn-warning" type="button" style="margin-left:1%;">Continue to Payment</button>
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
        <div class="col-md-12"></div>
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