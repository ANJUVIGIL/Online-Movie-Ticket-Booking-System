<%@ Page Title="" Language="C#" MasterPageFile="~/public/visitormaster.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="online_movie_ticket.about" %>
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
     <div class="content">
	<div class="wrap">
		<div class="content-top">
				<div class="section group">
					<div class="about span_1_of_2">	
						<h3>Latest Movies</h3>	
							<div class="about-top">	
								<div class="grid images_3_of_2">
							<%--		<img src="publicAssets/images/pic13.jpg" />--%><img src="publicassets/imageshm/m5.jpg" />
								</div>
								<div class="desc span_3_of_2">
									<h4>JUMANJI</h4>
									<p class="p-link"><a href="#" class="link1">Lorem ipsum, Dolor </a></p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
									<a href="#" class="watch_but">Watch in HD</a>
								</div>
								<div class="clear"></div>
							</div>
							<div class="about-top">	
								<div class="grid images_3_of_2">
									<%--<img src="publicAssets/images/pic14.jpg" />--%><img src="publicassets/imageshm/m7.jpg" />
								</div>
								<div class="desc span_3_of_2">
									<h4>FROZEN II</h4>
									<p class="p-link"><a href="#" class="link1">Lorem ipsum, Dolor </a></p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
                                    <p>.<a href="#" class="watch_but">Watch in HD</a></p>
                                    <p>
			<script>
			    // When the user scrolls down 20px from the top of the document, show the button
			    window.onscroll = function () {
			        scrollFunction()
			    };

			    function scrollFunction() {
			        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
			            document.getElementById("movetop").style.display = "block";
			        } else {
			            document.getElementById("movetop").style.display = "none";
			        }
			    }

			    // When the user clicks on the button, scroll to the top of the document
			    function topFunction() {
			        document.body.scrollTop = 0;
			        document.documentElement.scrollTop = 0;
			    }
			</script>
			<!-- /move top -->

		&nbsp;</p>
								</div>
								<div class="clear"></div>
							</div>
							<a href="#" class="watch_but">More Movies</a>
					</div>			
				<div class="rightsidebar span_3_of_1">
						<h3>COMING SOON...</h3>	
						<div class="small_box premier">
                            <a href="#" class="col"><img src="publicAssets/imageshm/m8.jpg" width="76" height="112" alt=""/><br/>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</a>
	                    	<a href="#" class="col"><img src="publicAssets/imageshm/m10.jpg" width="76" height="112" alt=""/><br/>Lorem ipsum dolor sit amet, consectetuer</a>
	                        <a href="#" class="col"><img src="publicAssets/imageshm/m11.jpg" width="76" height="112" alt=""/><br/>Lorem ipsum dolor sit amet, consec</a>
	                        <div class="clear"></div>
							<a href="#" class="button ">See all</a>
                    	</div>
                    <h3>Latest Movie News</h3>	
                    <ul class="latest_news">
                        	<li>
                            	<span class="date">05 July, 2013</span><br/>
                            	<a href="#">dolore eu feugiat nulla facilisis at vero eros ..</a>
                            </li>
                            <li>
                            	<span class="date">05 July, 2013</span><br/>
                            	<a href="#">dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit</a>
                            </li>
                            <li class="m_bottom">
                            	<span class="date">05 July, 2013</span><br/>
                            	<a href="#">dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit</a>
                            </li>
                           
                        </ul>
                        <a href="#" class="button ">See all</a>
 				</div>
			</div>
				<div class="clear"></div>		
			</div>
	</div>
</div>


</asp:Content>
