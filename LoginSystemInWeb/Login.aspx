<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginSystemInWeb.Login" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

     <title>Login</title>
        <style>
           
            body
            {
               
                font-family:Arial;
               
            }
            .container
            {
                display:flex;
                margin:60px auto;
                background:rgb(33, 198, 178);
                height:auto;
                box-shadow:20px 20px 50px 10px lightgray;
                border-radius:5px;
                 font-size:20px;
                width: 107%;
            }
            .img
            {
                height:auto;
                width:45%;
                background:white;
                
            }
            .img > img
                {
                 width:489px;
                 height:447px;
                }

            #form1
            {
               height:auto;
               width:60%;
                margin-left: 96px;
            }
                #form1 .outer li
                {
                    display:flex;
                    flex-wrap:wrap;
                    align-item:center;
                    padding:10px;
                }
                #form1 .outer li .label
                {
                    flex: 1 0 100px;
                    max-width:120px
                }
            .h > h1
            {
                margin:0 40% 0 36%;
                padding:0;
                width:220px;
            }
            .btn
            {
                background:lightblue;
                font-weight:bold;
                border:1px solid gray;
                
            }
                .btn:hover
                {
                    cursor:pointer;
                    background:lightgray;
                }
            .messagelable .loglabel
            {
                 width: 50px;
              height: 10px;
              margin-left: 36px;
              color: red;
            }
                </style>
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
        <a class="nav-link" href="Contact.aspx">Contant us</a>
          <a class="nav-link active" href="Login.aspx">Log in</a>
          <%if(Session["users"] != null && Session["user_password"] != null)
            { %>
          <a class="nav-link" href="About.aspx">About</a>
          <a class="nav-link" href="#">Log out</a>
          <%}%>             <% else
              {%>
          <a class="nav-link" href="SignUp.aspx">Sign in</a>
              <%}%>
      </div>
    </div>
  </div>
</nav>
        <div class ="container">
        <div class ="img">
                <img src ="/Images/car2.png" />
            </div>
        <form id="form1" runat="server">
            <div class ="h"><h1>&nbsp;</h1>
                <h1>Log In</h1>
                <p>&nbsp;</p>
            </div>
            <ul class ="outer">
                <li>
                    <asp:Label ID="Label1" class ="label1 label" runat="server" Text="Label">User Name</asp:Label>
                    <asp:TextBox ID="TextBox1" class ="texbox1 box" runat="server" name ="textBox1"></asp:TextBox>
                </li>
                <li>
                    <asp:Label ID="Label2" class ="label2 label" runat="server" Text="Label">Password</asp:Label>
                    <asp:TextBox ID="TextBox2" class ="texbox2 box" runat="server" name ="textBox2"></asp:TextBox>
                </li>
                <li>
                    <div class ="messagelable">
                     <asp:Button ID="Button1" class="btn" runat="server" Text="Login" Width="86px" OnClick="Button1_Click1" />
                    <asp:Label ID="message" class="loglabel" runat="server" Text=""></asp:Label>
                        </div>
                </li>
                 <li>
                     <label for ="register" style ="font-size: medium">Learn More</label>
                     <a id ="" href ="SignUp.aspx"  style ="font-size: small; padding-left:3px">Register</a>
                </li>
            </ul>
        </form>
            </div>
     <!--  <script>
            var logInBtn = document.querySelector("#Button1");

            function checkValidation(e) {
                e.preventDefault();
                var signinEmail = document.querySelector("#TextBox1").value;
                var signinPassword = document.querySelector("#TextBox2").value;

                var pattren1 = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

                if (pattren1.test(signinEmail) == false || signinEmail == "") {
                    alert("invalid or missing in email field")
                }
                if (signinPassword == "") {
                    alert("invalid or missing in password field")
                }
            }
            logInBtn.addEventListener("click", checkValidation);

        </script>   -->

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




