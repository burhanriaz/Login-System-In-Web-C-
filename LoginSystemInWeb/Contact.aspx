<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="LoginSystemInWeb.Contact" %>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <title>content</title>
  </head>
  <body>
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Car Rental</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link" aria-current="page" href="Home.aspx">Home</a>
        <a class="nav-link active" href="Contact.aspx">Contant us</a>
         
          <%if(Session["users"] != null && Session["user_password"] != null)
            { %>
          <a class="nav-link" href="About.aspx">About</a>
          <a class="nav-link" href="Logout.aspx">Log out</a>
          <%}%>
             <% else
              {%>
          <a class="nav-link" href="Login.aspx">Login</a>
           <a class="nav-link" href="SignUp.aspx">Sign Up</a>

              <%}%>
      </div>
    </div>
  </div>
</nav>

    <section class="readercorner-full-section" style="background: #f7f9fc; box-shadow: 16px -9px 121px 20px lightgrey">
    <div class="container container-width-1200">
    <div class="row">
    <div class="col-xs-12 col-sm-12">
    <div class="breadcrumb-section">
        <p>
            &nbsp;</p>
    <ol class="breadcrumb">
    <li class="active" style="font-size: 27px; font-weight: bold;"></li>
    </ol>
    </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-9 reader-content-full" style="width:100%">
    <div class="full-width-float list-reader-de">
    <h1>Contact Us</h1>
    <form id="contactForm" role="form" class="cn-form  full-width-float" name="contactForm" method="post" action="submit.php">
    <input type="hidden" name="csrf" value="354b473bf3800e94c0ee344355122ef4">
    <div class="row form-style-cn" style="margin: 0px 0px 20px 0px;">
    <div class="col-xs-12 col-sm-12">
    <div class="full-width-float">
    <div class="col-sm-6 col-padd-off border-fromcontrol">
    <div class="position-relative">
    <input id="name" type="text" class="form-control" required="" name="name" placeholder="Name *" style="margin-bottom:5px;">
    </div>
    </div>
    <div class="col-sm-6 col-padd-off">
    <div class="position-relative">
    <input id="email" type="text" class="form-control" required="" name="email" placeholder="Email *" style="margin-bottom:5px;">
    </div>
    </div>
    <div class="col-sm-6 col-padd-off border-fromcontrol">
    <div class="position-relative">
    <input id="telephone" type="text" class="form-control" required="" name="telephone" placeholder="Contact info *" style="margin-bottom:5px;">
    </div>
    </div>
    <div class="col-sm-6 col-padd-off">
    <div class="position-relative">
    <input id="subject" type="text" class="form-control" required="" name="subject" placeholder="Subject *" style="margin-bottom:5px;">
    </div>
    </div>
    <div class="col-sm-12 col-md-12 col-lg-12 col-padd-off border-fromcontrol" style="border-right-style: none;">
    <div class="position-relative">
    <textarea id="message" class="form-control" rows="5" required="" name="message" placeholder="Message"></textarea>
    </div>
    </div>
    </div>
    </div>
    </div>
    <div class="g-recaptcha" style="margin-left: 15px;" data-callback="recaptchaCallback" data-sitekey="6LdWlloUAAAAAOJJgOMRDWq09yuSlZR_o-qxPiws"><div style="width: 304px; height: 78px;"><div><iframe title="reCAPTCHA" src="https://www.google.com/recaptcha/api2/anchor?ar=1&amp;k=6LdWlloUAAAAAOJJgOMRDWq09yuSlZR_o-qxPiws&amp;co=aHR0cHM6Ly93d3cucGFraXN0YW5hcm15Lmdvdi5wazo0NDM.&amp;hl=en-GB&amp;v=npGaewopg1UaB8CNtYfx-y1j&amp;size=normal&amp;cb=3qe5vwpfo8zh" width="304" height="78" role="presentation" name="a-lnmmcyez94cg" frameborder="0" scrolling="no" sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox"></iframe></div><textarea id="g-recaptcha-response" name="g-recaptcha-response" class="g-recaptcha-response" style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea></div><iframe style="display: none;"></iframe></div>
    <div class="col-sm-10">
    &nbsp;
    </div>
    <div class="col-sm-2" style="padding: 0px;">
    <input type="submit" name="submit" class="btn btn-golden" id="submit" value="Submit" style="width: 100%" disabled="">
    </div>
    </form>
    </div>
    </div>
    
    </div>
    </div>
    </section>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
  </body>
</html>