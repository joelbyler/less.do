var base_url = "http://do-less.appspot.com/";
//var base_url = "http://localhost:8888/";

var CATEGORY_NAME_MAIN = "top_level";
var url = base_url + "/data/sample.json";
var TEMPLATE_MAIN_CATEGORY = "<span class=\"span2\"><a href=\"#\" onclick=\"displaySubCategories('${name}');\" title=\"${label}\"><img src=\"${img_url}\" class=\"img-circle\"><center><label>${label}</label></center></a></span>";
var TEMPLATE_SUB_CATEGORY = "<span class=\"span2\"><a href=\"#\" onclick=\"displayProducts('${name}');\" title=\"${label}\"><img src=\"${img_url}\" class=\"img-circle\"><center><label>${label}</label></center></a></span>";
var TEMPLATE_PRODUCT = "<div class=\"span3\"> <div class=\"row\">"
		+ "<hr><div class=\"span3\">"
		+ "    <div class=\"row\">"
		+ "      <div class=\"span3\">"
		+ "        <h4><strong><a href=\"/detail.jsp?id=${id}&iam=${iam}&ido=${ido}&ineed=${ineed}\">${label}</a></strong></h4>"
		+ "      </div>"
		+ "    </div>"
		+ "    <div class=\"row\">"
		+ "      <div class=\"span2\">"
		+ "        <a href=\"/detail.jsp?id=${id}&iam=${iam}&ido=${ido}&ineed=${ineed}\" class=\"thumbnail\">"
		+ "          <img src=\"${img_url}\" alt=\"${label}\">"
		+ "        </a>"
		+ "      </div>"
		+ "    </div>"
		+ "    <div class=\"row\">"
		+ "  	 <div class=\"span3\">      "
		+ "        <p>${description}</p>"
		+ "      </div>"
		+ "      <div class=\"span3\">"
		+ "        <p></p>"
		+ "        <p>"
		+ "          <i class=\"icon-comment\"></i> <a href=\"/detail.jsp?id=${id}&iam=${iam}&ido=${ido}&ineed=${ineed}\">${comments} Comments</a> | "
		+ "          <i class=\"icon-tags\"></i> Tags : "
		+ "			{{each tags}} "
		+ "		 		<a href=\"/detail.jsp?id=${id}&iam=${iam}&ido=${ido}&ineed=${ineed}\"><span class=\"label label-info\">${$value}</span></a>"
		+ "			{{/each}}  " + "        </p>" 
		+ "      </div>" 
		+ "    </div>"
		+ "  </div></div>" + "</div>";

$.template("mainCategoryCategory", TEMPLATE_MAIN_CATEGORY);
$.template("subCategoryCategory", TEMPLATE_SUB_CATEGORY);
$.template("productCategory", TEMPLATE_PRODUCT);

var iam = '';
var ido = '';
var ineed = '';

function loadFirstQuestion(iam, callback) {
	$.getJSON(url, function(data) {
		var select = $("#selectTopLevelCategory");
		select.find('option').remove().end();
		//select.append($('<option>').text("Select your option"));
		$.each(data.entry_categories, function(key, value) {
			if (value.tags.indexOf(CATEGORY_NAME_MAIN) >= 0) {
				if(value.name==iam){
					select.append($('<option>').text(value.label).attr('value', value.name).attr('selected', 'true'));
				} else {
					select.append($('<option>').text(value.label).attr('value', value.name));
				}
			}
			if(callback)callback();
		});
	});
}

function displayMainCategories(forTag, callback) {
	iam=forTag;
	var url = base_url + "/data/sample.json";
	$.getJSON(url, function(data) {
		$("#main_category_list").html("");
		var hitCounter = 0;
		$.each(data.main_categories, function(key, value) {
			if (value.tags.indexOf(forTag) >= 0) {
				$.tmpl("mainCategoryCategory", value).appendTo("#main_category_list");
				hitCounter++;
			}
		});
		if (hitCounter>0) {
			$("#main_category_item_count").html("(" + hitCounter + ")");
			$("#main_category_section").show();
			$("#main_category_section_alt").hide();
		} else {
			$("#main_category_section_alt").show();
			$("#main_category_section").hide();
		}
		if(callback)callback();
	});

}
function displaySubCategories(forTag, callback) {
	ido=forTag;
	var url = base_url + "/data/sample.json";
	$.getJSON(url, function(data) {
		$("#sub_category_list").html("");
		var hitCounter = 0;
		$.each(data.sub_categories, function(key, value) {
			if (value.tags.indexOf(forTag) >= 0) {
				$.tmpl("subCategoryCategory", value).appendTo(
						"#sub_category_list");
				hitCounter++;
			}
		});
		$("#sub_category_item_count").html("(" + hitCounter + ")");
		$("#sub_category_section").show();

		var new_position = $("#sub_category_label").offset();
		window.scrollTo(0, new_position.top - 20);		

		if(callback)callback();

	});

}

function displayProducts(forTag, callback) {
	ineed=forTag;
	var url = base_url + "/data/sample.json";
	$.getJSON(url, function(data) {
		$("#main_suggested_elements").html("");
		$.each(data.products, function(key, value) {
			if (value.tags.indexOf(forTag) >= 0) {
				$.tmpl("productCategory", value).appendTo("#main_suggested_elements");
			}
		});
		$("#main_suggested_elements").show();

		var new_position = $("#main_suggested_elements").offset();
		window.scrollTo(0, new_position.top - 10);
		
		if(callback)callback();
	});
}

function rebuildPage(iam, like, help_with) {
	loadFirstQuestion(iam, function() {
		displayMainCategories(iam, function() {
			displaySubCategories(like, function() {
				displayProducts(help_with);
			});
		});
	});
}

function getUrlParam(name) {
    return decodeURI((RegExp(name + '=' + '(.+?)(&|$)').exec(location.search)||[,null])[1]);
}

