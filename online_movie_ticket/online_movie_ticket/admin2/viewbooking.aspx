<%@ Page Title="" Language="C#" MasterPageFile="~/admin2/mainmaster.Master" AutoEventWireup="true" CodeBehind="viewbooking.aspx.cs" Inherits="online_movie_ticket.admin2.viewbooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="page-wrapper">
        <div class="graphs">
     	<div class="col_3">
        	<div class="col-md-11 widget ">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-thumbs-up icon-rounded"></i>
                    <div class="stats">

    <asp:GridView ID="GrdViewbooking"  AllowPaging="True" PageSize="4" CssClass="table-bordered table table-hover table-responsive" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnPageIndexChanging="GridView1_PageIndexChanging" Height="265px" Width="751px">
    <Columns>
         <asp:BoundField DataField="bookingid" HeaderText="Booking ID"  />
        <asp:BoundField DataField="name" HeaderText="UserName" />
        <asp:BoundField DataField="moviename" HeaderText="MovieName" />
        <asp:BoundField DataField="seatno" HeaderText="SeatNo" />
        <asp:BoundField DataField="Date" HeaderText="Date" />
       
    </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>

</div>
                    </div>
                </div>
             </div>
            </div>
        </div>
</asp:Content>
