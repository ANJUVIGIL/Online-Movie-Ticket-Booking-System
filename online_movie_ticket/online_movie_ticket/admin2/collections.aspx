<%@ Page Title="" Language="C#" MasterPageFile="~/admin2/mainmaster.Master" AutoEventWireup="true" CodeBehind="collections.aspx.cs" Inherits="online_movie_ticket.admin2.collections" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="page-wrapper">
     <%--   <div class="graphs">--%>
     	<div class="col_3">
        	<div class="col-md-11 widget ">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-thumbs-up icon-rounded"></i>
                    <div class="stats">



 <%--   <form action="#" method="post">--%>
   <asp:Label ID="movie_name" runat="server" Text="Enter Movie Name" Height="16px" Width="160px"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Txtmovie" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="**" ControlToValidate="Txtmovie" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />

 <asp:Label ID="movie_desc" runat="server" Text="Enter Movie description"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox ID="Txtdesc" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="**" ControlToValidate="Txtdesc" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />

                        <asp:Label ID="movie_date" runat="server" Text="Enter Movie Director"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Txtdirector" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="**" ControlToValidate="Txtdirector" ForeColor="Red"></asp:RequiredFieldValidator>
      &nbsp;&nbsp;&nbsp;&nbsp;
        <br />

      <asp:Label ID="pic" runat="server" Text="Upload picture"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:FileUpload ID="movieimage" runat="server" /><br />
         <asp:ImageMap ID="Imgpic" runat="server" Width="77px"></asp:ImageMap>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="**" ControlToValidate="movieimage" ForeColor="Red"></asp:RequiredFieldValidator>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="save" runat="server" Text="save" BackColor="#009900" style="border-radius:30px;" ForeColor="#000066" OnClick="save_Click" Height="38px" Width="109px" /><br />
        <asp:HiddenField ID="hfdmovi" runat="server" Value="-1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Lblmovie" runat="server"></asp:Label>
<%--</form>--%>
    </div>
                    <asp:GridView ID="GrdViewmovie" CssClass=" table-responsive table" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="1" DataKeyNames="id" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Height="69px" Width="784px" OnPageIndexChanging="GrdViewmovie_PageIndexChanging">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="ID" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="moviename" HeaderText="MOVIE NAME" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="moviedesc" HeaderText="MOVIE DESCRIPTION" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="moviedirector" HeaderText="MOVIE DITRECTOR" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                               
                           
                                <asp:BoundField DataField="Status" HeaderText="Status" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:ImageField HeaderText="MOVIE IMAGE" DataImageUrlField="movieimage" controlstyle-width="100px" ControlStyle-Height="100px"  >
<ControlStyle Height="100px" Width="100px"></ControlStyle>
                                    <ItemStyle CssClass="pic" HorizontalAlign="Center" />
                                </asp:ImageField>
                               <%-- <asp:TemplateField HeaderText="Reject">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="rejectimg" runat="server" Height="50px" ImageUrl="~/img/ad img/download.png" OnClick="rejectimg_Click1" Width="50px" />
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Accept">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="acceptimg" runat="server" Height="50px" ImageUrl="~/img/ad img/11720867-accept-icon.jpg" OnClick="acceptimg_Click" Width="50px" />
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>--%>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" CssClass="cent" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" CssClass="cent" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
      
                       
                  
                        </asp:GridView>
                         <asp:HiddenField ID="hfdmovie" runat="server" Value="-1" />
                        </div>
      
                    </div>
                </div>
             </div>
            </div>
        </div>
</asp:Content>
