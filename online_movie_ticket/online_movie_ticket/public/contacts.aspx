﻿<%@ Page Title="" Language="C#" MasterPageFile="~/public/visitormaster.Master" AutoEventWireup="true" CodeBehind="contacts.aspx.cs" Inherits="online_movie_ticket.contacts" %>
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
    		<h1>&nbsp;<lable>Login </lable> </h1>
  			<div class="inset">
	  			<p>
	    		 <label for="email">Name</label>
   	 			<asp:TextBox ID="txtname" runat="server" placeholder="Enter EmailID"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                 </p>
                   <p>
                       <label for="email">Email</label>
   	 			<asp:TextBox ID="txtemail" runat="server" placeholder="Enter EmailID"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="invalid email id" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   
				</p>

                  <p>
                   <label for="email">Phone</label>
   	 			<asp:TextBox ID="txtmob" runat="server" placeholder="Enter EmailID"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtmob" ForeColor="Red"></asp:RequiredFieldValidator>
                    
  				<p>
				    <label for="password">Message</label>
				    <asp:TextBox ID="txtmsg" runat="server" placeholder="Enter Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtmsg" ForeColor="Red"></asp:RequiredFieldValidator>
  				</p>
				  
 			 </div>

            <div>
<%--						   		<span></span>
						  </div>
					    </form>
				  </div>
  				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  
  				</div>--%>
 	 
			  <p class="p-container">
			    <%--<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />--%>
                    <asp:Label ID="Labelmsg" runat="server" ForeColor="#FF3300"></asp:Label>
                <%--  <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" Text="LOGIN" />--%>
              <%--    <asp:Label ID="msgsignin" runat="server"></asp:Label>
                 <a href="login.aspx" >Register here</a>--%>
			  </p>
		</form>
	</div>  
</asp:Content>
