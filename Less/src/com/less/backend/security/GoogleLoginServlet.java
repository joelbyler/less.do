package com.less.backend.security;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;
import com.less.backend.model.LessUser;
import com.less.backend.service.LessUserSvc;
import com.less.backend.service.impl.ServiceFactoryImpl;
import com.less.util.UIDGenerator;

@SuppressWarnings("serial")
public class GoogleLoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		UserService userService = UserServiceFactory.getUserService();
		LessUserSvc dueluserSvc = (new ServiceFactoryImpl())
				.createLessUserService();

		User user = userService.getCurrentUser();
		Set<String> attributes = new HashSet<String>();

		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();

		if (user != null) {
			String userId = dueluserSvc.userExistGoogle(user.getUserId());
			if ("".equals(userId)) {
				LessUser duelUser = new LessUser();
				userId = UIDGenerator.getInstance().getKey();
				Key key = KeyFactory.createKey(LessUser.class.getSimpleName(),
						userId);
				duelUser.setKey(key);
				duelUser.setGoogleEmail(user.getEmail());
				duelUser.setGoogleUsername(user.getNickname());
				duelUser.setUsername(user.getNickname());
				duelUser.setEmail(user.getEmail());
				duelUser.setGoogleId(user.getUserId());
				dueluserSvc.createLessUser(duelUser);
			}

			// String resource = req.getRequestURI();
			// RequestDispatcher d = req.getRequestDispatcher(resource);
			out.println("<script>localStorage.userId = '" + userId
					+ "';  top.location.href='" + URLS.FINAL_LOGGED_URL
					+ "'</script>");
			// out.println("[<a href=\""
			// + userService.createLogoutURL(req.getRequestURI())
			// + "\">sign out</a>]");

		} else {
			String providerUrl = "https://www.google.com/accounts/o8/id";
			String loginUrl = userService.createLoginURL(req.getRequestURI(),
					null, providerUrl, attributes);
			out.println("<script> top.location.href='" + loginUrl
					+ "'</script>");
		}
	}
}
