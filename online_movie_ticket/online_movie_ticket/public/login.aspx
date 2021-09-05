<%@ Page Title="" Language="C#" MasterPageFile="~/public/visitormaster.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="online_movie_ticket.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Creative Colorlib SignUp Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
    <link href="publicassets/logincss/logincss.css" rel="stylesheet" />
<!-- web font -->
<link href="http://localhost:35795/fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- main -->
	<div class="main-w3layouts wrapper">
		<h1>&nbsp;SignUp </h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form action="#" method="post">
                     <asp:TextBox ID="txtname" runat="server" placeholder="Enter Name" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                     <asp:TextBox ID="txtemail" runat="server" placeholder="Enter EmailID"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="invalid email id" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtpassword" runat="server" placeholder="Enter Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                     <asp:TextBox ID="txtrepassword" runat="server" placeholder="Reenter Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtrepassword" ForeColor="Red"></asp:RequiredFieldValidator>
                     <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtrepassword" ErrorMessage="password mismatch"></asp:CompareValidator>
                   <asp:TextBox ID="txtphone" runat="server" placeholder="Enter Contact Number" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtphone" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:Label ID="Lblimage" runat="server" Text="Photo"></asp:Label>
                     <asp:FileUpload ID="Flupimage" runat="server" /><br />
                     <asp:ImageMap ID="Imgpic" runat="server" Width="77px"></asp:ImageMap>
                     <br />
&nbsp;<label class="anim"><asp:CheckBox ID="checkbox" runat="server" />
						</label>
					
					<div class="wthree-text">
						<label class="anim">
							&nbsp;&nbsp;&nbsp;<span>I Agree To The Terms & Conditions</span>
						</label>
					</div>
					<%--<input type="submit" value="SIGNUP">--%>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <br />
&nbsp;&nbsp;
                     <asp:HiddenField ID="hfdregister" runat="server" Value="-1" />
                    <asp:Button ID="btnsignup" runat="server" Text="SIGNUP" OnClick="btnsignup_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="message" runat="server" ForeColor="Yellow"></asp:Label>
&nbsp;</form>
				<p>Don't have an Account? <a href="signin.aspx"> you already signed then click here for sigin</a></p>
			</div>
		</div>
</div>
</asp:Content>
