<%@ Page Title="" Language="C#" MasterPageFile="~/user/usermaster.Master" AutoEventWireup="true" CodeBehind="thanks.aspx.cs" Inherits="online_movie_ticket.user.thanks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Movie Seat Selection Flat Responsive Widget Template :: w3layouts</title>
    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Movie Seat Selection a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta-Tags -->
    <!-- Index-Page-CSS -->
  <%--  <link rel="stylesheet" href="css/style.css" type="text/css" media="all">--%>
 <%--   <link href="public/publicassets/cssm/style.css" rel="stylesheet" />--%>
    <link href="userassets/cssm/style.css" rel="stylesheet" />
    <!-- //Custom-Stylesheet-Links -->
    <!--fonts -->
    <link href="http://localhost:35795/fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i" rel="stylesheet">
    <!-- //fonts -->
     <style type="text/css">
         .auto-style1 {
             width: 528px;
         }
         .auto-style2 {
        width: 84%;
    }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <body>
    <h1>Movie Seat Selection</h1>
    <div class="container">
        <div style="background-image:url(userassets/imagesm/bannerm.jpg );">
        <div class="w3ls-reg">
            <!-- input fields -->
            <div class="inputForm">
                <h2>fill the required details below and select your seats</h2>
                <div class="mr_agilemain">
                    <div class="agileits-left">
                        <label>Movie Name
                            <span>*</span>
                        <asp:TextBox ID="txtname" runat="server" Width="408px" ForeColor="White"></asp:TextBox>
                        </label>
                        &nbsp;</div>
                    <div class="agileits-right">
                       <%-- <label> Number of Seats
                            <span>*</span>--%>
                        <asp:HiddenField ID="Hiddenmovie" runat="server" Value="-1" />
                        <asp:HiddenField ID="Hidticket" runat="server" />
                     <%--   </label>--%>
                        <h5></h5>
                        <div class="agileits_w3layouts_main_gridl">
                            <asp:TextBox ID="txtDatePicker" runat="server" class="date" name="Text" readonly="true" required="" value="mm/dd/yyyy"></asp:TextBox>
                        </div>
                        <asp:Calendar ID="Calendar1" runat="server" BorderColor="#333333" ForeColor="White" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                        <div class="clear">
                        </div>
&nbsp;</div>
                </div>
            </div>
            <!-- //input fields -->
            <!-- seat availabilty list -->
            <ul class="seat_w3ls">
            </ul>
            <!-- seat availabilty list -->
            <!-- seat layout -->
            <div class="seatStructure txt-center" style="overflow-x:auto;">
                <table id="seatsBlock">
                                        
                    <tr>
                        <td class="auto-style1">
                           
                            
                            
                            
                            
                            
                            
                            
                                      <asp:Label ID="Labelthanks" runat="server"></asp:Label>
                                      <asp:Label ID="Labelseat" runat="server"></asp:Label>
                           
                            
                            
                            
                            
                            
                            
                            
                                      </td>
                    </tr>

                    </table>

                <div> 
                    <asp:HiddenField ID="Hiddenseat" runat="server" Value="-1" />
              </div>

                <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="34px" OnClick="Button1_Click" Text="Confirm Selection" />
            </div>
            <!-- //seat layout -->
            <!-- details after booking displayed here -->
            <div class="displayerBoxes txt-center" style="overflow-x:auto;">
                <table class="Displaytable w3ls-table" width="100%">
                    <tr>
                        <th class="auto-style2">Name</th>
                        <th>Price of Seats</th>
                        <th>Seats</th>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;<asp:TextBox ID="txtmovie" runat="server" ForeColor="Black"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;120 Rs</td>
                        <td>
                          <%--  <textarea id="seatsDisplay"></textarea>--%>
                            <asp:TextBox ID="seatname" runat="server" ForeColor="Black"></asp:TextBox>
                           <%-- <textarea id="seatname"></textarea>--%>

                        </td>
                    </tr>
                </table>
            </div>
            <!-- //details after booking displayed here -->
        </div>
    </div>
    
    </div>
    <!-- js -->
    <%--<script src="js/jquery-2.2.3.min.js"></script>--%>
        <script src="public/publicassets/jsm/jquery-2.2.3.min.js"></script>
    <!-- //js -->
    <!-- script for seat selection -->
    <script>
        function onLoaderFunc() {
            $(".seatStructure *").prop("disabled", true);
            $(".displayerBoxes *").prop("disabled", true);
        }

        function takeData() {
            if (($("#txtname").val().length == 0) || ($("#Numseats").val().length == 0)) {
                alert("Please Enter your Name and Number of Seats");
            } else {
                $(".inputForm *").prop("disabled", true);
                $(".seatStructure *").prop("disabled", false);
                document.getElementById("notification").innerHTML =
                    "<b style='margin-bottom:0px;background:#ff9800;letter-spacing:1px;'>Please Select your Seats NOW!</b>";
            }
        }


        function updateTextArea() {

            if ($("input:checked").length == ($("#Numseats").val())) {
                $(".seatStructure *").prop("disabled", true);

                var allNameVals = [];
                var allNumberVals = [];
                var allSeatsVals = [];

                //Storing in Array
                allNameVals.push($("#txtname").val());
                allNumberVals.push($("#Numseats").val());
                $('#seatsBlock :checked').each(function () {
                    allSeatsVals.push($(this).val());
                });

                //Displaying 
                $('#txtname').val(allNameVals);
                $('#NumberDisplay').val(allNumberVals);
                $('#seatsDisplay').val(allSeatsVals);
            } else {
                alert("Please select " + ($("#Numseats").val()) + " seats")
            }
        }


        function myFunction() {
            alert($("input:checked").length);
        }

        /*
        function getCookie(cname) {
            var name = cname + "=";
            var ca = document.cookie.split(';');
            for(var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') {
                    c = c.substring(1);
                }
                if (c.indexOf(name) == 0) {
                    return c.substring(name.length, c.length);
                }
            }
            return "";
        }
        */


        $(":checkbox").click(function () {
            if ($("input:checked").length == ($("#Numseats").val())) {
                $(":checkbox").prop('disabled', true);
                $(':checked').prop('disabled', false);
            } else {
                $(":checkbox").prop('disabled', false);
            }
        });
    </script>
</asp:Content>
