var base_url = "http://do-less.appspot.com/";
//var base_url = "http://localhost:8888/";

var TEMPLATE_PRODUCT_DETAIL = ""
		+ " <div class=\"span2\">"
		+ " <a href=\"#\" style=\"width: 160px;\" class=\"thumbnail\">"
		+ "<img src=\"${img_url} \" alt=\" \" width=\"200\" >"
		+ "</a>"
		+ "</div>"
		+ "<div class=\"span4\">"
		+ "<p id=\"detail_item_name\"><h2><strong>${label}</strong></h2></p>"
		+ "<p class=\"detail_item_description\"> ${description} </p>"
		+ "<span class=\"badge badge-warning\"><span id=\"detail_item_comments_number\">2</span> comments</span> <span class=\" badge badge-info\" id=\"detail_item_rate\">0</span>"
		+ " <button class=\"btn btn-mini\" type=\"button\" onclick=\"rateElementUp();\">Up</button>"
		+ " <button class=\"btn btn-mini\" type=\"button\" onclick=\"rateElementDown();\">Down</button>"
		+ "</div>";

var TEMPLATE_PRODUCT_COMMENT = ""
		+ "		    <h3>${title}</h3>"
		+ "		    <p>${comment}</p>"
		+ "		    <div> "
		+ "		        <span class=\"badge badge-success\">${date}</span><div class=\"pull-right\"><span class=\"label\">${username}</span></div> "
		+ "		    </div>" + "		    <hr>";

$.template("productComments", TEMPLATE_PRODUCT_COMMENT);
$.template("productDetails", TEMPLATE_PRODUCT_DETAIL);

function displayProductComments() {
	var url = base_url + "/data/product" + getUrlParam("id") + ".json";
	$.getJSON(url, function(data) {

		$.tmpl("productDetails", data).appendTo("#detail_product_detail");
		$("#detail_all_comments").html("");
		$.each(data.comments, function(key, value) {
			$.tmpl("productComments", value).appendTo("#detail_all_comments");
		});
		$("#main_suggested_elements").show();
	});
}

function rateElementUp() {
	var points = $("#detail_item_rate").html();
	points++;
	$("#detail_item_rate").html(points);
}

function rateElementDown() {
	var points = $("#detail_item_rate").html();
	points--;
	$("#detail_item_rate").html(points);
}

function postComment() {
	var new_comment = {
		"comment" : "",
		"username" : "",
		"date" : "2012-08-02 20:47:04",
		"title" : ""
	};
	var username = $("#hidden_username").val(); 
	var title = $("#detail_item_input_comment_title").val();
	var comment = $("#detail_item_input_comment_comment").val();
	var date = "Sysdate";
	new_comment["comment"] = comment;
	new_comment["username"] = username;
	new_comment["title"] = title;
	//new_comment["date"] = title;

	var numberOfElements = $("#detail_item_comments_number").html();
	numberOfElements++;
	var stringToAppend = "<div id='detail_item_comment'" + numberOfElements

	$("#detail_item_comments_number").html(numberOfElements);
	$.tmpl("productComments", new_comment).appendTo("#detail_all_comments");

}

function getUrlParam(name) {
    return decodeURI((RegExp(name + '=' + '(.+?)(&|$)').exec(location.search)||[,null])[1]);
}

function addLessBack() {
	iam = getUrlParam('iam');
	ido = getUrlParam('ido');
	ineed = getUrlParam('ineed');
	$("#lessback").attr("href", "main.jsp?iam="+iam+"&ido="+ido+"&ineed="+ineed);
}