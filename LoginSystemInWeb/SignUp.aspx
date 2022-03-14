<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="LoginSystemInWeb.SignUp" %>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <title>Sign in</title>
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
            }
            .img
            {
                height:auto;
                width:45%;
                background:white;
                
            }
            .img > img
                {
                 width:500px;
                 height:494px;
                }

            #form1
            {
               height:auto;
               width:82%;
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
                margin:0 40%;
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
                    color:white;
                    cursor:pointer;
                }
          .labelDiv .messageLabel
          {
              width: 50px;
              height: 10px;
              margin-left: 36px;
              color: red;
          }
      </style>
  </head>
  <body text="label">
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
          <a class="nav-link" href="Login.aspx">Log in</a>
          <%if(Session["users"] != null && Session["user_password"] != null) 
            { %>
          <a class="nav-link" href="About.aspx">About</a>
          <a class="nav-link" href="#">Log out</a>
          <%}%>
             <% else
              {%>
          <a class="nav-link active" href="SignUp.aspx">Sign Up</a>
              <%}%>
      </div>
    </div>
  </div>
</nav>
     <div id="Div1" class ="container" runat ="server">
        <div class ="img">
                <img src ="/Images/car4.png" />
            </div>
        <form id="form1" runat="server">
            <div class ="h"><h1>Sign Up</h1></div>
            <ul class ="outer">
                <li>
                    <asp:Label ID="Label1" class ="label1 label" runat="server" Text="Label">User Name</asp:Label>
                    <asp:TextBox ID="TextUsername" class ="texbox1 box" runat="server"></asp:TextBox>
                </li>
                <li>
                    <asp:Label ID="Label2" class ="label2 label" runat="server" Text="Label">Password</asp:Label>
                    <asp:TextBox ID="Textpassword" class ="texbox2 box" runat="server"></asp:TextBox>
                </li>
                 <li>
                    <asp:Label ID="Label3" class ="label3 label" runat="server" Text="Label">Address</asp:Label>
                    <asp:TextBox ID="Textaddress" class ="texbox3 box" runat="server"></asp:TextBox>
                </li>
                 <li>
                    <asp:Label ID="Label4" class ="label4 label" runat="server" Text="Label">City</asp:Label>
                    <asp:TextBox ID="Textcity" class ="texbox4 box" runat="server"></asp:TextBox>
                </li>
                 <li>
                    <asp:Label ID="Label5" class ="label5 label" runat="server" Text="Label">Country</asp:Label>
                    <asp:TextBox ID="TextState" class ="texbox5 box" runat="server"></asp:TextBox>
                </li>
                   <li>
                    <asp:Label ID="Label7" class ="label7 label" runat="server" Text="Label">Profile pic</asp:Label>
                       <asp:FileUpload ID="FileUpload1" runat="server" />
                </li>
                <li>

                    <div class ="labelDiv">
                    <asp:Button ID="Button1" Class ="btn" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                    <asp:Label ID="message" Class ="messageLabel" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                </li>
                 <li>
                     <label for ="register" style ="font-size: medium">Learn More</label>
                     <a id ="" href ="Home.aspx"  style ="font-size: small; padding-left:3px">Home</a>
                </li>
            </ul>
        </form>
            </div>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
     <!--
       <script>
          var signInBtn = document.querySelector("#Button1");

          function checkValidation(e) {
              e.preventDefault();
              var signinEmail = document.querySelector("#TextUsername").value;
              var signinPassword = document.querySelector("#Textpassword").value;
              var signinAddress = document.querySelector("#Textaddress").value;
              var signinCity = document.querySelector("#Textcity").value;
              var signinState = document.querySelector("#TextState").value;

              var pattren1 = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
              var pattren2 = /^[A-Za-z]+$/;
              var pattren3 = /^[0-9a-zA-Z]+$/;

              if (pattren1.test(signinEmail) == false || signinEmail == "") {
                  alert("invalid or missing in email field")
              }
              if (pattren3.test(signinPassword) == false || signinPassword == "") {
                  alert("invalid or missing in password field")
              }
              if (pattren3.test(signinAddress) == false || signinAddress == "") {
                  alert("invalid or missing in address field")
              }
              if (pattren2.test(signinCity) == false || signinCity == "") {
                  alert("invalid or missing in city field")
              }
              if (pattren2.test(signinState) == false || signinState == "") {
                  alert("invalid or missing in state field")
              }
              
          }
          signInBtn.addEventListener("click", checkValidation);
      </script> -->
  </body>
</html>
