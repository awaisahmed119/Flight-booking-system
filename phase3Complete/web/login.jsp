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
    <script src="JavaScript.js"></script>

    <script>
        function myFunction() {
           // document.getElementById("l").innerHTML = "Hello World";

            var form = $("#lform");
            $.ajax({


                type: "POST",
                url: "login",
                dataType: 'json',
                data: form.serialize(),
                success: function (data) {

                    var x=data.type;

                    if(x=="customer")
                    {
                        window.location="customerhome.jsp";
                    }
                    else if(x=="manager")
                    {
                        window.location="managerhome.jsp";
                    }
                    else if(x=="adminhome")
                    {

                        window.location="adminhome.jsp";
                    }
                    else if(x=="false")
                    {
                        $("#result").text("Verify email to Proceed");
                    }
                    else{
                        $("#result").text("Incorrect Email or Password");
                    }
                }
            });

        return false;
        }
    </script>


    <script type="text/javascript">
        $(document).ready(function(){

            $('#b').click(function(){

            $("#l").text("Incorrect Email or Password");
    });
    });


</script>

    <script type="text/javascript">
        $(document).ready(function(){


            var form = $("#lform");
            form.submit(function () {


                var name = document.getElementById("uname1").value;
                var password = document.getElementById("psw1").value;
                var x;

                //if (name==""||password=="") {
                //alert("Incorrect input");
                //x=0;
                //}
//else
                x=1;

                if(x==1){

                    $.ajax({


                        type: form.attr('method'),
                        url: form.attr('action'),
                        dataType: 'json',
                        data: form.serialize(),
                        success: function (data) {

                            var x=data.type;

                            if(x=="customer")
                            {
                                window.location="customer.jsp";
                            }
                            else if(x=="manager")
                            {
                                window.location="manager.jsp";
                            }
                            else if(x=="adminhome")
                            {

                                window.location="adminhome.jsp";
                            }
                            else if(x=="false")
                            {
                                $("#result").text("Verify email to Proceed");
                            }
                            else{
                                $("#result").text("Incorrect Email or Password");
                            }
                        }
                    });
                }
                return false;
            });
        });
    </script>



</head>

<body>
<div class="row">
    <div class="col-md-12" style="background-color:#2aabd2;">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand navbar-link" href="index.html">Pakistan Airline</a>
                    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                </div>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active" role="presentation"><a href="#">Login </a></li>
                        <li class="disabled" role="presentation"><a href="#">Signup </a></li>
                        <li role="presentation"><a href="#">Contact Us </a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>
<div class="row register-form" style="background-color:#e8eaea;">
    <div class="col-md-8 col-md-offset-2">



        <form id="lform" action="login" method="post">

            <div class="errorClass" id="result" style="font-size:20px"></div>

            <h1 style="font-size:35px;">Login </h1>
            <div class="form-group">
                <div class="col-sm-4 label-column">
                    <label class="control-label" for="email-input-field" >Email </label>
                </div>

                <input class="form-control" type="text" id="uname1" name="j_username" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required>


            </div>
            <div class="form-group">
                <div class="col-sm-4 label-column">
                    <label class="control-label" for="pawssword-input-field" id="l">Password </label>
                </div>

                <input class="form-control" id="psw1" type="password" name="j_password" required>

            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox">Remember Password?</label>
            </div>

           <!-- <button class="btn btn-default submit-button" input-type="submit" id="login"  style="background-color:rgb(13,10,129);">Login </button>-->

            &nbsp;&nbsp;
           <h2> <a href="regestration.jsp">Not Regesterd Yet?</a></h2>
        </form>
        <button id="b" value="chal v"  onclick="myFunction()"> Login</button>


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
