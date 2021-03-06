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

<body style="background-color:rgb(3,2,2);">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header"><a class="navbar-brand navbar-link" href="#">Pakistan Airline</a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>

        </div>



         <!--   <div class="collapse navbar-collapse" id="navcol-1"><a class="btn btn-primary navbar-btn" role="button" type="submist" href="admin.jsp">Manage Flights </a><a class="btn btn-success navbar-btn" role="button" href="manager.jsp" style="margin-left:0.7%;">Show Requests</a>-->

                <ul class="nav navbar-nav navbar-right">

                    <li role="presentation"><a href="https://en.wikipedia.org/wiki/Pakistan_International_Airlines">About us</a></li>
                </ul><a class="btn btn-warning navbar-btn" role="button" href="bookflight.jsp" >Book And Check Flight</a></div>


        <form action="<%=response.encodeURL(request.getContextPath()+"/logout")%>" method="post">
            <button type="submit" class="btn btn-success navbar-btn" value="logout" name="button" >Logout</button>
        </form>

        </div>

    </nav>
    <div class="row">
        <div class="col-md-12">
            <div class="carousel slide" data-ride="carousel" id="carousel-1" style="width:500px;margin-left:30%;height:300px;">
                <div class="carousel-inner" role="listbox">
                    <div class="item active"><img class="img-responsive" src="assets/img/1aa.jpg" alt="Slide Image" width="500" height="500"></div>
                    <div class="item"><img src="assets/img/2aa.jpg" alt="Slide Image" width="800" height="800"></div>
                    <div class="item"><img src="assets/img/3aa.jpg" alt="Slide Image" width="800" height="800"></div>
                </div>
                <div><a class="left carousel-control" href="#carousel-1" role="button" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i><span class="sr-only">Previous</span></a><a class="right carousel-control" href="#carousel-1" role="button"
                    data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i><span class="sr-only">Next</span></a></div>
                <ol class="carousel-indicators">
                    <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-1" data-slide-to="1"></li>
                    <li data-target="#carousel-1" data-slide-to="2"></li>
                </ol>
            </div>
        </div>
    </div>
    <div class="article-list"></div>
    <div class="photo-gallery" style="background-color:rgb(248,248,248);">
        <div class="container">
            <div class="intro">
                <h2 class="text-center">Why us?</h2>
                <p class="text-center">Pakistan Airline is world class airline . </p>
            </div>
            <h1 class="text-center" style="margin-top:10%;">Why US?</h1>
            <div class="row photos">
                <div class="col-lg-3 col-md-4 col-sm-6 item">
                    <a href="assets/img/1a.jpg" data-lightbox="photos"><img class="img-responsive" src="assets/img/1a.jpg"></a>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 item">
                    <a href="assets/img/building.jpg" data-lightbox="photos"><img class="img-responsive" src="assets/img/2a.jpg"></a>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 item">
                    <a href="assets/img/loft.jpg" data-lightbox="photos"><img class="img-responsive" src="assets/img/3a.jpg"></a>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 item">
                    <a href="assets/img/building.jpg" data-lightbox="photos"><img class="img-responsive" src="assets/img/4a.jpg"></a>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 item">
                    <a href="assets/img/loft.jpg" data-lightbox="photos"></a>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 item">
                    <a href="assets/img/desk.jpg" data-lightbox="photos"></a>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="media">
                <div class="media-left">
                    <a><img src="assets/img/plane.jpg"></a>
                </div>
                <div class="media-body">
                    <h4 style="color:rgb(248,245,245);">World top class Airlines</h4>
                    <p style="color:rgb(241,233,233);">The airline was founded on 23 October 1946 as&nbsp;<a href="https://en.wikipedia.org/wiki/Orient_Airways">Orient Airways</a>, initially based in&nbsp;<a href="https://en.wikipedia.org/wiki/Calcutta">Calcutta</a> prior to the&nbsp;
                        <a
                        href="https://en.wikipedia.org/wiki/Partition_of_British_India">Partition of British India</a>. It later acquired four&nbsp;<a href="https://en.wikipedia.org/wiki/Douglas_DC-3">Douglas DC-3s</a>. The airline was&nbsp;<a href="https://en.wikipedia.org/wiki/Nationalized">nationalized</a> on 10
                            January 1955 and was renamed Pakistan International Airlines. Its first international flight was in 1955, operating to London, via Cairo and Rome.<a href="https://en.wikipedia.org/wiki/Pakistan_International_Airlines#cite_note-6">[6]</a>                            PIA has a history of milestones in aviation, it was the first Asian carrier to fly the&nbsp;<a href="https://en.wikipedia.org/wiki/Lockheed_Super_Constellation">Lockheed Super Constellation</a> and also was the first non-communist
                            airline to fly to China. It was the second Asian airline to acquire a jet aircraft, a&nbsp;<a href="https://en.wikipedia.org/wiki/Boeing_707">Boeing 707</a>. More recently, it was the launch customer of the&nbsp;<a href="https://en.wikipedia.org/wiki/Boeing_777">Boeing 777-200LR</a>.
                            <a
                            href="https://en.wikipedia.org/wiki/Pakistan_International_Airlines#cite_note-7">[7]</a> The airline also owns&nbsp;<a href="https://en.wikipedia.org/wiki/The_Roosevelt_Hotel_(Manhattan)">The Roosevelt Hotel</a> and&nbsp;<a href="https://en.wikipedia.org/wiki/Sofitel">Sofitel Paris Scribe Hotel</a>.<a href="https://en.wikipedia.org/wiki/Pakistan_International_Airlines#cite_note-8">[8]</a>It
                                is Pakistan's largest airline with a fleet of more than 30 airplanes.<a href="https://en.wikipedia.org/wiki/Pakistan_International_Airlines#cite_note-planespotters.net-9">[9]</a> As of 2016, PIA is going through a procedure
                                of&nbsp;<a href="https://en.wikipedia.org/wiki/Privatization">privatization</a> to shift management from government to the private sector. It employed nearly 14,000 people as of annual report 2015 and the airline has overall
                                punctuality of 88%.<a href="https://en.wikipedia.org/wiki/Pakistan_International_Airlines#cite_note-10">[10]</a><a href="https://en.wikipedia.org/wiki/Pakistan_International_Airlines#cite_note-11">[11]</a> PIA operates
                                scheduled services to 22 domestic destinations and 28 international destinations across&nbsp;<a href="https://en.wikipedia.org/wiki/Asia">Asia</a>, <a href="https://en.wikipedia.org/wiki/Europe">Europe</a>, <a href="https://en.wikipedia.org/wiki/Middle_East">Middle East</a>                                and&nbsp;<a href="https://en.wikipedia.org/wiki/North_America">North America</a>. It operates nearly 100 flights daily.<a href="https://en.wikipedia.org/wiki/Pakistan_International_Airlines#cite_note-12">[12]</a><a href="https://en.wikipedia.org/wiki/Pakistan_International_Airlines#cite_note-13">[13]</a>                                </p>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="row">
            <div class="col-md-4 col-sm-6 footer-navigation">
                <h3><a href="#">Pakistan Airline</a></h3>
                <p class="links"><a href="#">Home</a><strong> · </strong><a href="#">Blog</a><strong> · </strong><a href="#">Pricing</a><strong> · </strong><a href="#">About</a><strong> · </strong><a href="#">Faq</a><strong> · </strong><a href="#">Contact</a></p>
                <p class="company-name">Company Name © 2015 </p>
            </div>
            <div class="col-md-4 col-sm-6 footer-contacts">
                <div><span class="fa fa-map-marker footer-contacts-icon"> </span>
                    <p>Lahore,Karachi,ISL </p>
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
                <p> Pakitsna AIrlines is world top class virtual airline
                </p>
                <div class="social-links social-icons"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-linkedin"></i></a><a href="#"><i class="fa fa-github"></i></a></div>
            </div>
        </div>
    </footer>
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