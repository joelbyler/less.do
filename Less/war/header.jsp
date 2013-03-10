<%@page import="com.google.appengine.api.users.UserServiceFactory"%>
<%@page import="com.google.appengine.api.users.UserService"%>
<%@page import="com.less.backend.service.impl.LessUserSvcImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="index.jsp">
                    	<span class="less_word">less</span>
                    	<span class="less_than">&#60;&nbsp</span>
                   	</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav">
                            <li class="active"><a href="index.jsp">Home</a></li>
                            <li><a href="about.jsp">About</a></li>
                            <li><a href="contact.jsp">Contact</a></li>
                        </ul>
						<div id="top_bar" class="pull-right">
					
			<% 
			    UserService userService = UserServiceFactory.getUserService();
				String logoutUrl= userService.createLogoutURL(request.getRequestURI());
				String userName = new LessUserSvcImpl().userIsLoggedIn();
				if( "".equals(userName)) {	
			%>		 
						<ul class="nav pull-right">
		                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Login</a>
		                        <ul class="dropdown-menu">
		                            <li><a href="/glogin">Login Via Google</a></li>
		                        </ul>
		                    </li>
		                </ul>
			<% } else {	%>			
		                <ul class="nav pull-right">
		                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><%=userName %> <b class="caret"></b></a>
		                        <ul class="dropdown-menu">
		                           <li><a href="<%=logoutUrl %>"><i class="icon-off"></i> Logout</a></li>
		                        </ul>
		                    </li>
		                </ul>
		     <% } 	%>		 
		              </div>
                    </div><!--/.nav-collapse -->
                </div>
            </div>
        </div>
        
        <input id="hidden_username" type="hidden" value="<%=userName %>"/>
				
