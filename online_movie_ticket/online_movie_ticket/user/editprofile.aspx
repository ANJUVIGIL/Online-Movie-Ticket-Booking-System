<%@ Page Title="" Language="C#" MasterPageFile="~/user/usermaster.Master" AutoEventWireup="true" CodeBehind="editprofile.aspx.cs" Inherits="online_movie_ticket.user.editprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <br /><br /><br /><br />




    <h1 align="center" style="background-color:darkslategray; color:white; font-family: Gungsuh;"><b>EDIT PROFILE</b></h1>





    <div style="border-style: 2PX; font-family: 'Buxton Sketch'; background-color: black;  padding-right: 150px; padding-bottom: 150px; padding-left: 150px; margin-right: 20px; margin-bottom: 20px; margin-left: 20px;" >

   <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageMap ID="imgMapProfile" runat="server" Height="150px" Width="150px" Style="border-radius:100px"></asp:ImageMap>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="flupImg" runat="server" />
        <br />
        <br /><br />

                     USER  NAME :<asp:TextBox ID="txtName" runat="server" Height="43px" Width="678px"  style="    margin-left: 80px;"></asp:TextBox><br /><br />
                        <br /><br />
                        EMAIL     : <asp:TextBox ID="txtEmail" runat="server" Height="43px" Width="678px"  style="margin-left: 116px;" ></asp:TextBox><br /><br />
                        PHONE :<asp:TextBox ID="txtPhone" runat="server" Height="43px" Width="678px"  style="margin-left: 115px;" ></asp:TextBox><br /><br />
                     PASSWORD   :<asp:TextBox ID="txtPass" runat="server" Height="43px" Width="678px"   style="margin-left: 83px;" ></asp:TextBox><br /><br />


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


       

         <div style="font-family: 'Mongolian Baiti'; font-size: large;">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnEdit" runat="server" Font-Bold="True" Height="50px" Text="UPDATE"  Width="681px" BackColor="black" Font-Size="X-Large" OnClick="btnEdit_Click"   />


                            <br />
                            <br />
                            <br />

             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

             <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Green"></asp:Label>

                            <br />
             <br />
             <br />

                            <br />

                        </div>


                 
        <br />
        <br />
        <br />
        <br />
        <br />

                 
    </div>

</asp:Content>
