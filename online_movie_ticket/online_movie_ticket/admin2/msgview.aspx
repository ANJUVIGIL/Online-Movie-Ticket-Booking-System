<%@ Page Title="" Language="C#" MasterPageFile="~/admin2/mainmaster.Master" AutoEventWireup="true" CodeBehind="msgview.aspx.cs" Inherits="online_movie_ticket.admin2.msgview" %>
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
 <asp:GridView ID="GridViewmsg"  DataKeyNames="id"  CssClass="table-bordered table table-hover table-responsive" runat="server" AllowPaging="True" PageSize="5" AutoGenerateColumns="False" Height="280px" OnPageIndexChanging="GridViewmsg_PageIndexChanging" Width="674px">
     <Columns>
         <asp:BoundField DataField="id" HeaderText="ID" HeaderStyle-CssClass="cent" >
<HeaderStyle CssClass="cent"></HeaderStyle>
         </asp:BoundField>
         <asp:BoundField DataField="name" HeaderText="Name" HeaderStyle-CssClass="cent" >
<HeaderStyle CssClass="cent"></HeaderStyle>
         </asp:BoundField>
         <asp:BoundField DataField="email" HeaderText="Email" HeaderStyle-CssClass="cent" >
<HeaderStyle CssClass="cent"></HeaderStyle>
         </asp:BoundField>
         <asp:BoundField DataField="mob" HeaderText="Mob" HeaderStyle-CssClass="cent" >
<HeaderStyle CssClass="cent"></HeaderStyle>
         </asp:BoundField>
         <asp:BoundField DataField="msg" HeaderText="Msg" HeaderStyle-CssClass="cent">
<HeaderStyle CssClass="cent"></HeaderStyle>
         </asp:BoundField>
         <asp:TemplateField HeaderText="DELETE">
             <ItemTemplate>
                 <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/img/ad img/download.png" OnClick="ImageButton1_Click" Width="50px" />
             </ItemTemplate>
         </asp:TemplateField>
     </Columns>
                        </asp:GridView>

                        <asp:HiddenField ID="hfdmsg" runat="server" Value="-1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Labelmsg" runat="server"></asp:Label>

</div>
                    </div>
                </div>
             </div>
            </div>
     </div>
</asp:Content>
