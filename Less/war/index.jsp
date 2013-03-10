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
		<link href='http://fonts.googleapis.com/css?family=Sacramento' rel='stylesheet' type='text/css'>
		<script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>   
    </head>
    <body class="index_background"> 
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
   	    <jsp:include page="/header.jsp" />
		 <div class="container">
      	
       	
			<div class="row" style="text-align: center;">
<!-- 				<img width="500" height="200" src="https://s3.amazonaws.com/assets.kickofflabs.com/logos/site/logo/8287/lheader1.png"></img> -->
				<h1 style="color:white;">less is more!</h1>
				<iframe width="560" height="315" src="http://www.youtube.com/embed/Qsd885pT-Wc" frameborder="0" allowfullscreen></iframe>
     			<br/>
     			<button class="btn btn-large btn-info" type="button" onclick="location.href='/main.jsp'">Discover it!</button>
     	 	</div>
      
<!--            <hr> -->
<!--             <footer> -->
<!--                 <p>&copy; Do Less 2013</p> -->
<!--             </footer> -->
        </div> <!-- /container -->

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.1.min.js"><\/script>')</script>

        <script src="js/vendor/bootstrap.min.js"></script>

        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
	
        <script>
            var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
            (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
            g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
            s.parentNode.insertBefore(g,s)}(document,'script'));
        </script>
    </body>
</html>
