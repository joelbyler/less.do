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
    <body> 
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
   	    <jsp:include page="/header.jsp" />


        <div class="container">
        	
        	<form class="form-horizontal" action='landing.html' method="GET">
			  <fieldset>
			    <div id="legend">
			      <legend class="">Help us help you </legend>
			    </div>
		
			    <div class="control-group">
			      <p class="control-label"  style="margin-right: 1%;">I am </p>
			       <div id="index_help_type">
			       <select id="selectTopLevelCategory" class="selectpicker" onchange="displayMainCategories(this.value);" ></select>
				  </div>  
			    </div>
				
			 <div id="main_category_section" class="row" style="display:none;">
			  <div class="span12">
			    <div class="page-header">
			      <h4><span id="main_category_label">What type of business are you most like?</span><span style="float: right;"><small><span id="main_category_item_count"></span> options</small></span></h4>
			    </div>
				<div id="main_category_list" ></div>
			  </div>
			</div> 
			 <div id="sub_category_section" class="row" style="display:none;">
			  <div class="span12">
			    <div class="page-header">
			      <h4><span id="sub_category_label">What can we help you with?</span><span style="float: right;"><small><span id="sub_category_item_count"></span> options</small></span></h4>
			    </div>
				<div id="sub_category_list" ></div>
			  </div>
			</div> 
						
        	</fieldset>
        	
        	</form>
        	<br/>
        	<div id="main_suggested_elements" style="display: none;"></div>
            <hr>

            <footer>
                <p>&copy; Do Less 2013</p>
            </footer>

        </div> <!-- /container -->

		<script src="js/vendor/jquery-1.9.1.min.js"></script>
		<script src="js/vendor/jquery.tmpl.min.js"></script>

        <script src="js/vendor/bootstrap.min.js"></script>

        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
	
		<script type="text/javascript">
			$(document).ready(function() {
				loadFirstQuestion();
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
