<%@ Page Title="" Language="C#" MasterPageFile="~/user/usermaster.Master" AutoEventWireup="true" CodeBehind="userhome.aspx.cs" Inherits="online_movie_ticket.user.userhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>

        <br />
        <br />
       
        <div style="text-align:center; width:100%">
        <h1 style="text-align:center;color:white;"><b>Welcome</b></h1>

        <asp:Label ID="lblName" runat="server" Font-Size="Larger" ForeColor="#BA6BFF" Font-Bold="True"></asp:Label>

            <br />
            <br />
        
        <div style="width:100%">
            
      <div align="center">
        <div  style="background-color: darkslategray;
    border: 1px solid #949c9c;
    padding: 10px;
    box-shadow: 9px 8px 5px 2px;
    height: 407px;
    width: 448px;
    vertical-align: central;
    font-family: Candara;
    color: #6f8d94bf;
    top: 38px;
    left: 454px; ">


            <asp:ImageMap ID="ImageMap1" runat="server" Height="88px" Width="102px" Style="border-radius:100px"></asp:ImageMap>
  
            <br />
            <br />
            <br />
            <br />
           <%-- <asp:Label ID="lblName" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>--%>
            <br />
            <br />
            <asp:Label ID="lblEmail" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblPhone" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
            <br />
            <br /> <br /><br />
            <br />
            <asp:Button ID="btnEdit" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#BA6BFF" Text="Edit Profile" OnClick="btnEdit_Click" />
            <br />
            <br /><br />
            <br /><br />
            <br /><br />
            <br />


           
  
            </div>
          </div>

        <br />
        <br />
        <br />
        <br />
        <br />
          
        <br />
        <br />
        <br />
       
    </div>




     </div>
</div>
</asp:Content>
