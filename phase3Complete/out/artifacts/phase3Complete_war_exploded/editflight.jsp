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

<body ">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header"><a class="navbar-brand navbar-link" href="#">Pakistan Airline</a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1"><a class="btn btn-primary navbar-btn" role="button" href="Admin.html">Manage Flights </a><a class="btn btn-success navbar-btn" role="button" href="manager.html" style="margin-left:0.7%;">Show Requests</a>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active" role="presentation"><a href="login.html">Login </a></li>
                    <li role="presentation"><a href="regestration.html">Signup </a></li>
                    <li role="presentation"><a href="https://en.wikipedia.org/wiki/Pakistan_International_Airlines">About us</a></li>
                </ul><a class="btn btn-warning navbar-btn" role="button" href="bookflight.html" style="margin-left:1%;">Book Flight</a></div>
        </div>
    </nav>
	
	
	 <form action="<%=response.encodeURL(request.getContextPath()+"/addflight")%>" method="post"  >
                        <div>
           <label >Flight ID</label>
    <br>



    <input id="id" type="text" name="fid" value="${fdata.fid}" />
    <br>
      <label >Plane Name </label>
     <br>
  <input id="pname" type="text" name="plane" value="${fdata.plane}" />
    <br>
     <label >From</label> &emsp; &emsp;
    &emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;
    <label >To
    </label>
    <br>
    <input id="from" type="text" name="from" value="${fdata.from}"/>&emsp; &emsp;
    <input id="to" type="text" name="to" value="${fdata.to}" />
    <br>
     <label >Time</label>
    <br>
    <input id="time" type="text" name="time" value="${fdata.time}"/>
    <br>
     <label >First Class seats</label> &emsp; &emsp;
    &nbsp; &emsp;&emsp; &emsp;
    <label >price
    </label>
    <br>
    <input id="fclass" type="text" name="fseats" value="${fdata.fseats}"/>&emsp; &emsp;
    <input id="fprice" type="text" name="fprice" value="${fdata.fprice}" />
    <br>
    <br>
     <label >Business Class seats</label> &emsp; &emsp;
    &nbsp; &emsp;
    <label >price
    </label>
    <br>
    <input id="bclass" type="text" name="bseats" value="${fdata.bseats}"/>&emsp; &emsp;
    <input id="bprice" type="text" name="bprice" value="${fdata.bprice}"/>
    <br>
    <br>
     <label >Economy Class seats</label> &emsp; &emsp;
    &nbsp; &emsp;
    <label >price
    </label>
    <br>
    <input id="eclass" type="text" name="eseats" value="${fdata.eseats}"/>&emsp; &emsp;
    <input id="eprice" type="text"  name="eprice" value="${fdata.eprice}"/>
    <br>

</div>
         <input type="text" name="up" value="update" />
<button type="submit" class="btn btn-primary navbar-btn" >Update Info</button>

</form>
    
</body>

</html>