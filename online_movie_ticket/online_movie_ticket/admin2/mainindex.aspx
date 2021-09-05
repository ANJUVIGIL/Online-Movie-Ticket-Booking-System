<%@ Page Title="" Language="C#" MasterPageFile="~/admin2/mainmaster.Master" AutoEventWireup="true" CodeBehind="mainindex.aspx.cs" Inherits="online_movie_ticket.admin2.mainindex" %>
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
                     <%-- <h5><strong>45%</strong></h5>
                      <span>New Orders</span>--%>



                        <asp:GridView ID="GrdViewStudent" runat="server" CssClass="table-bordered table table-hover table-responsive"  AutoGenerateColumns="False" AllowPaging="True" PageSize="3" DataKeyNames="id" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Vertical" Height="382px" Width="784px" OnPageIndexChanging="GrdViewStudent_PageIndexChanging" CaptionAlign="Right" HorizontalAlign="Center">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="ID"  HeaderStyle-CssClass="cent">
<HeaderStyle CssClass="cent"></HeaderStyle>

                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="name" HeaderText="NAME" HeaderStyle-CssClass="cent" >
                            
<HeaderStyle CssClass="cent"></HeaderStyle>
                            
                                </asp:BoundField>
                                <asp:BoundField DataField="email" HeaderText="EMAIL" HeaderStyle-CssClass="cent" >
                             
<HeaderStyle CssClass="cent"></HeaderStyle>
                             
                                </asp:BoundField>
                                <asp:BoundField DataField="password" HeaderText="Password" HeaderStyle-CssClass="cent" >
                              
<HeaderStyle CssClass="cent"></HeaderStyle>
                              
                                </asp:BoundField>
                                <asp:BoundField DataField="phone" HeaderText="Phone" HeaderStyle-CssClass="cent" >
                              
<HeaderStyle CssClass="cent"></HeaderStyle>
                              
                                </asp:BoundField>
                                <asp:BoundField DataField="Status" HeaderText="Status" HeaderStyle-CssClass="cent">
                             
<HeaderStyle CssClass="cent"></HeaderStyle>
                             
                                </asp:BoundField>
                                <asp:ImageField HeaderText="Profile Pic" DataImageUrlField="image" controlstyle-width="100px" ControlStyle-Height="100px" >
<ControlStyle Height="100px" Width="100px"  ></ControlStyle>
                                   
                                </asp:ImageField>
                                <asp:TemplateField HeaderText="Reject">
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
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle HorizontalAlign="Center" />
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" CssClass="cent" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
      
                       
                  
                        </asp:GridView>
                         <asp:HiddenField ID="hfdadmin" runat="server" Value="-1" />
                        </div>
      










                    </div>
                </div>
        	</div>

     </div>
</div>
</asp:Content>
