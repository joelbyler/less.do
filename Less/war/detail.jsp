<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <style>
            body {
                padding-top: 60px;
                padding-bottom: 40px;
            }
        </style>
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <link rel="stylesheet" href="css/main.css">
		<link href='http://fonts.googleapis.com/css?family=Raleway|Pacifico|Sacramento' rel='stylesheet' type='text/css'>
		<script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>   
    </head>
    <body> 
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
   	    <jsp:include page="/header.jsp" />

        <div class="container">
      
      	<div class="row">
      	
			<div class="row span8">
			
				<div id="detail_product_detail" class="row span8 well">
					
					<span style="float:right;">
	                    <a id="lessback" class="brand" href="main.jsp" style="text-decoration: none;">
	                    	<span class="less_than_back">&#60;&nbsp</span>
	                    	<span class="less_word_back">less</span>
	                   	</a>
					</span>
				</div>
				
				
			<div id="detail_all_comments" class="row span8 well">
				  
			</div>
				
				<div id="detail_item_input_comment" class="row span8 well">
		      		<form>
			      	    <label>Title</label>
			            <input id="detail_item_input_comment_title" type="text" value="Title" class="input-large"/>
			            <label>Comment</label>
			            <textarea id="detail_item_input_comment_comment" type="text" value="Comment" class="input-large"></textarea>
			            <br/>
			            <button class="btn" type="button" onclick="postComment();">Submit</button>
		      		</form>
		 	   </div>
		 	   
			</div>
		      
      	</div>
      
        </div> <!-- /container -->
         <footer>
         <hr>
             <p>&nbsp; &nbsp; &copy; Do Less 2013</p>
         </footer>

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="js/vendor/jquery.tmpl.min.js"></script>
        
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.1.min.js"><\/script>')</script>

        <script src="js/vendor/bootstrap.min.js"></script>

        <script src="js/plugins.js"></script>
        <script src="js/product_detail.js"></script>
	
		<script type="text/javascript">
			$(document).ready(function() {
				addLessBack();
				displayProductComments();
			});
		</script>
        <script>
            var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
            (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
            g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
            s.parentNode.insertBefore(g,s)}(document,'script'));
        </script>
    </body>
</html>
