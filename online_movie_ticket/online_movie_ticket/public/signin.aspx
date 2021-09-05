<%@ Page Title="" Language="C#" MasterPageFile="~/public/visitormaster.Master" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="online_movie_ticket.signin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Login 10</title>
   <meta charset="utf-8">
		<%--<link href="css/style.css" rel='stylesheet' type='text/css' />--%>
    <link href="publicassets/login2css/style.css" rel="stylesheet" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text.css'/>
		<!--//webfonts-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="main">
		<form>
            <p>
           &nbsp;  &nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="msgsignin" runat="server" ForeColor="Red" Font-Size="Larger"></asp:Label>
                	</p>
    		<h1>&nbsp;<label>Login </label> </h1>
  			<div class="inset">
	  			<p>
	    		 <label for="email">EMAIL ADDRESS</label>
   	 			<asp:TextBox ID="txtemail" runat="server" placeholder="Enter EmailID"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="invalid email id" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   
				</p>
  				<p>
				    <label for="password">PASSWORD</label>
				    <asp:TextBox ID="txtpassword" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtpassword" ForeColor="Red"></asp:RequiredFieldValidator>
  				</p>
				  
 			 </div>
 	 
			  <p class="p-container">
			    
                  <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" Text="LOGIN" />
                 <a href="login.aspx" >Register here</a>
			  </p>
		</form>
	</div>  

</asp:Content>
