<%@ Page Title="" Language="C#" MasterPageFile="~/user/usermaster.Master" AutoEventWireup="true" CodeBehind="movies.aspx.cs" Inherits="online_movie_ticket.user.movies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <%--<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />--%>
    <link href="publicAssets/css/style.css" rel="stylesheet" />
<%--<script src='js/jquery.min.js'></script>--%>
    <script src="publicAssets/js/jquery.min.js"></script>
<%--<script src='js/jquery.color-RGBa-patch.js'></script>--%>
    <script src="publicAssets/js/jquery.color-RGBa-patch.js"></script>
<%--<script src='js/example.js'></script>--%>
    <script src="publicAssets/js/example.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tablez">
         
      <asp:DataList ID="DataList1" runat="server"  RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
 
           <ItemTemplate >
            
            <table border="1"  style="margin:95px;">
                <tr>
                    <td colspan="1" rowspan="1">Movie&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                        <asp:Label ID="Lblid" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image2" runat="server" Height="400px" ImageUrl='<%# Eval("movieimage") %>' Width="500px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("moviename") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Directed By
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("moviedirector") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("moviedesc") %>'></asp:Label>
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                    </td>
                </tr>--%>
                <tr>
                    <td>
                        <asp:Button ID="Button1" style="border-radius:20px;" runat="server" Text="Book Now" forecolor="#009900" BackColor="darkslategray" Width="100px" height="50px"/>
                    </td>
                </tr>
            </table>
            <br />
            <br />
              
        </ItemTemplate>
         
              
         
    </asp:DataList>
             <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="&lt;&lt;" Width="37px" />
          <asp:Button ID="Button4" runat="server"  Text="&lt;" Width="37px" OnClick="Button4_Click" />
          <asp:Button ID="Button5" runat="server"  Text="&gt;" Width="37px" OnClick="Button5_Click" />
<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="&gt;&gt;" Width="37px" /> 
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:miniprojectConnectionString %>" SelectCommand="SELECT * FROM [moviecollection]"></asp:SqlDataSource>
         <asp:HiddenField ID="Hiddenmovie" runat="server" Value="-1" />
</div>   

</asp:Content>
