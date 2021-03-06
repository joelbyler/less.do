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
      	
	      	<span class="span2"><img src="/img/team/kyle.jpg" class="img-circle"><center><label>Kyle Blair</label></center></span>
	      	<span class="span2"><img src="/img/team/john.jpg" class="img-circle"><center><label>John Barrett</label></center></span>
	      	<span class="span2"><img src="/img/team/alberto.jpg" class="img-circle"><center><label>Alberto Calleja R&iacute;os</label></center></span>
	      	<span class="span2"><img src="/img/team/joel.jpg" class="img-circle"><center><label>Joel Byler</label></center></span>
      	
      		<br style="clear:both"/>
			<hr>
			<footer>
                <p>&copy; Less.do 2013</p>
            </footer>
        </div> <!-- /container -->

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="js/vendor/jquery.tmpl.min.js"></script>
        
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.1.min.js"><\/script>')</script>

        <script src="js/vendor/bootstrap.min.js"></script>

        <script src="js/plugins.js"></script>
        <script src="js/product_detail.js"></script>
	
		<script type="text/javascript">
			$(document).ready(function() {
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
