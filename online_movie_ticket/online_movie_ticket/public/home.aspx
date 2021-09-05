<%@ Page Title="" Language="C#" MasterPageFile="~/public/visitormaster.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="online_movie_ticket.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="publicAssets/css/style.css" rel="stylesheet" />
<link href="publicAssets/css/flexslider.css" rel="stylesheet" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
     <!-- DC Tabs CSS -->
<link type="text/css" rel="stylesheet" href="http://www.dreamtemplate.com/dreamcodes/tabs/css/tsc_tabs.css" />
 <!-- jQuery Library (skip this step if already called on page ) -->
<script type="text/javascript" src="http://www.dreamtemplate.com/dreamcodes/jquery.min.js"></script> <!-- (do not call twice) -->
 <!-- DC Tabs JS -->
<!--<script type="text/javascript" src="http://www.dreamtemplate.com/dreamcodes/tabs/js/tsc_tabs.js"></script>-->
<link rel="stylesheet" href="publicAssets/css/tsc_tabs.css" type="text/css" media="all" />
</asp:Content>

    <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="content">
	<div class="wrap">
		<div class="content-top">
				<div class="listview_1_of_3 images_1_of_3">
					<h3>Movie News</h3>
				<div class="content-left">
					<div class="listimg listimg_1_of_2">
						 <%--<img src="images/pic.jpg" alt=""/>--%><img src="publicassets/imageshm/banner1.jpg" />
					</div>
					<div class="text list_1_of_2">
						  <div class="extra-wrap">
                                <div class="data">August. 05. 2013</div>
                                <a href="#" class="color"><strong>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</strong></a><br/>
                                <span class="text-top">iam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam,</span>
                          </div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="content-left">
					<div class="listimg listimg_1_of_2">
						<%-- <img src="images/pic4.jpg" alt=""/>--%><img src="publicassets/imageshm/banner2.jpg" />
					</div>
					<div class="text list_1_of_2">
						  <div class="extra-wrap">
                                <div class="data">August. 05. 2013</div>
                                <a href="#" class="color"><strong>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</strong></a><br/>
                                <span class="text-top">iam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam,</span>
                          </div>
                          
					</div>
					<div class="clear"></div>
				</div>
				<div class="content-left">
					<div class="listimg listimg_1_of_2">
						 <%--<img src="images/pic1.jpg" alt=""/>--%><%--<img src="publicAssets/images/pic1.jpg" />--%><img src="publicassets/imageshm/banner3.jpg" />
					</div>
					<div class="text list_1_of_2">
						  <div class="extra-wrap">
                               <div class="data">August. 05. 2013</div>
                               <a href="#" class="color"><strong>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</strong></a><br>
                               <span class="text-top">iam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam,</span>
                          </div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="content-left">
					<div class="listimg listimg_1_of_2">
						 <%--<img src="images/pic2.jpg" alt=""/>--%><%--<img src="publicAssets/images/pic2.jpg" /--%><img src="publicassets/imageshm/banner4.jpg" />
					</div>
					<div class="text list_1_of_2">
						  <div class="extra-wrap">
                               <div class="data">August. 05. 2013</div>
                               <a href="#" class="color"><strong>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</strong></a><br/>
                               <span class="text-top">iam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam,</span>
                          </div>
					</div>
					<div class="clear"></div>
				</div>
			<a href="#" class="link2">See all</a>
		</div>				
		<div class="listview_1_of_3 images_1_of_3">
					<h3>Trailers</h3>
					<div class="middle-list">
						<div class="listimg1">
							 <img src="publicassets/imageshm/m3.jpg" alt=""/>
							 <a href="#" class="link">diam nonummy nibh euismod tincidunt</a>
						</div>
						<div class="listimg2">
							<%--<img src="images/pic6.jpg" alt=""/>--%><%--img src="publicAssets/images/pic6.jpg" />--%><img src="publicassets/imageshm/m1.jpg" />
							<a href="#" class="link">diam nonummy nibh euismod tincidunt</a>
						</div>
						<div class="clear"></div>
					</div>
					<div class="middle-list">
						<div class="listimg1">
							<%--<img src="images/pic7.jpg" alt=""/>--%><%--<img src="publicAssets/images/pic7.jpg" />--%><img src="publicassets/imageshm/m10.jpg" />
							<a href="#" class="link">diam nonummy nibh</a>
						</div>
						<div class="listimg2">
							<%--<img src="images/pic8.jpg" alt=""/>--%><%--<img src="publicAssets/images/pic8.jpg" />--%><img src="publicassets/imageshm/m11.jpg" />
							<a href="#" class="link">diam nonummy nibh</a>
						</div>
						<div class="clear"></div>
					</div>	
					<div class="middle-list">
						<div class="listimg1">
							<%--<img src="images/pic5.jpg" alt=""/>--%><%--<img src="publicAssets/images/pic5.jpg" />--%><img src="publicassets/imageshm/m12.jpg" />
							<a href="#" class="link">diam nonummy nibh euismod tincidunt</a>
						</div>
						<div class="listimg2">
						<%--	<img src="images/pic6.jpg" alt=""/>--%><%--<img src="publicAssets/images/pic6.jpg" />--%><img src="publicassets/imageshm/m2.jpg" />
							<a href="#" class="link">diam nonummy nibh euismod tincidunt</a>
						</div>
						<div class="clear"></div>
					</div>
					<a href="#" class="link2">See all</a>
					<div class="sub-bottom">
						<div class="nav">
							<section class="tsc_gradient-tabs">
							  <input id="grad-tab-1" type="radio" name="radio-set1" class="grad-tab-selector-1" checked="checked"/>
							 <label for="grad-tab-1" class="grad-tab-label-1">Per day</label>
							  <input id="grad-tab-2" type="radio" name="radio-set1" class="grad-tab-selector-2"/>
							  <label for="grad-tab-2" class="grad-tab-label-2">A week</label>
							  <input id="grad-tab-3" type="radio" name="radio-set1" class="grad-tab-selector-3"/>
							   <label for="grad-tab-3" class="grad-tab-label-3">Month</label>
							  <input id="grad-tab-4" type="radio" name="radio-set1" class="grad-tab-selector-4"/>
							   <div class="clear-shadow"></div>
							  <div class="gradtab-content" style="height:250px;">
							    <div class="gradtab-content-1">
							    	<h2>Lorem Ipsum.............................................12</h2>
							    	<h2>Lorem Ipsum.............................................11</h2>
							    	<h2>Lorem Ipsum.............................................10</h2>
							    	<h2>Lorem Ipsum.............................................9</h2>
							    	<h2>Lorem Ipsum.............................................8</h2>
							    	<h2>Lorem Ipsum.............................................7</h2>
							    	<h2>Lorem Ipsum.............................................6</h2>
							    	<h2>Lorem Ipsum.............................................5</h2>
							    	<h2>Lorem Ipsum.............................................4</h2>
							    	<h2>Lorem Ipsum.............................................3</h2>
							   </div>
							     <div class="gradtab-content-2">
							     	<h2>Lorem Ipsum.............................................12</h2>
							    	<h2>Lorem Ipsum.............................................11</h2>
							    	<h2>Lorem Ipsum.............................................10</h2>
							    	<h2>Lorem Ipsum.............................................9</h2>
							    	<h2>Lorem Ipsum.............................................8</h2>
							    	<h2>Lorem Ipsum.............................................7</h2>
							    	<h2>Lorem Ipsum.............................................6</h2>
							    	<h2>Lorem Ipsum.............................................5</h2>
							    	<h2>Lorem Ipsum.............................................4</h2>
							    	<h2>Lorem Ipsum.............................................3</h2>
							   	</div>
							    <div class="gradtab-content-3">
							     	<h2>Lorem Ipsum.............................................12</h2>
							    	<h2>Lorem Ipsum.............................................11</h2>
							    	<h2>Lorem Ipsum.............................................10</h2>
							    	<h2>Lorem Ipsum.............................................9</h2>
							    	<h2>Lorem Ipsum.............................................8</h2>
							    	<h2>Lorem Ipsum.............................................7</h2>
							    	<h2>Lorem Ipsum.............................................6</h2>
							    	<h2>Lorem Ipsum.............................................5</h2>
							    	<h2>Lorem Ipsum.............................................4</h2>
							    	<h2>Lorem Ipsum.............................................3</h2>
							 	</div>
							 </div>
					</section>		
				</div> 
			</div>
		</div>			
		<div class="listview_1_of_3 images_1_of_3">
					<h3>Films in Theaters</h3>
					<div class="content-left">
					<div class="listimg listimg_1_of_2">
						<%-- <img src="images/pic9.jpg" alt=""/>--%><img src="publicassets/imageshm/m3.jpg" />
					</div>
					<div class="text list_1_of_2">
						  <div class="extra-wrap1">
                                        <a href="#" class="link4">augue duis dolore te</a><br/>
                                        <span class="color1">USA (2013)</span><br/>
                                        Genre: <a href="#" class="color2">duis</a> / <a href="#" class="color2">soluta nobis eleifend option congue</a><br>
                                        <span class="link-top">Actors: <a href="#" class="color2">Conse ctetur,<br>dolore eu feugiat nulla facilisis at vero </a> </span> 
                                    </div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="content-left">
					<div class="listimg listimg_1_of_2">
						<%-- <img src="images/pic10.jpg" alt=""/>--%><img src="publicassets/imageshm/m4.jpg" />
					</div>
					<div class="text list_1_of_2">
						  <div class="extra-wrap1">
                                        <a href="#" class="link4">augue duis dolore te</a><br>
                                        <span class="color1">USA (2013)</span><br>
                                        Genre: <a href="#" class="color2">duis</a> / <a href="#" class="color2">soluta nobis eleifend option congue</a><br>
                                        <span class="link-top">Actors: <a href="#" class="color2">Conse ctetur,<br>dolore eu feugiat nulla facilisis at vero </a> </span> 
                                    </div>
					</div>
					<div class="clear"></div>
				</div>
					
					<div class="content-left">
					<div class="listimg listimg_1_of_2">
						 <img src="images/pic11.jpg" alt=""/><img src="publicassets/imageshm/m5.jpg" />
					</div>
					<div class="text list_1_of_2">
						  <div class="extra-wrap1">
                                        <a href="#" class="link4">augue duis dolore te</a><br>
                                        <span class="color1">USA (2013)</span><br>
                                        Genre: <a href="#" class="color2">duis</a> / <a href="#" class="color2">soluta nobis eleifend option congue</a><br>
                                        <span class="link-top">Actors: <a href="#" class="color2">Conse ctetur,<br>dolore eu feugiat nulla facilisis at vero </a> </span> 
                                    </div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="content-left">
					<div class="listimg listimg_1_of_2">
						 <img src="images/pic12.jpg" alt=""/><img src="publicassets/imageshm/m6.jpg" />
					</div>
					<div class="text list_1_of_2">
						  <div class="extra-wrap1">
                                        <a href="#" class="link4">augue duis dolore te</a><br>
                                        <span class="color1">USA (2013)</span><br>
                                        Genre: <a href="#" class="color2">duis</a> / <a href="#" class="color2">soluta nobis eleifend option congue</a><br>
                                        <span class="link-top">Actors: <a href="#" class="color2">Conse ctetur,<br>dolore eu feugiat nulla facilisis at vero </a> </span> 
                                    </div>
					</div>
					<div class="clear"></div>
				</div>
				<a href="#" class="link2">See all</a>
				</div>		
				<div class="clear"></div>		
			</div>
	</div>
</div>
</asp:Content>
