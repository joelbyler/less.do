//var base_url = "http://do-less.appspot.com/";
var base_url = "http://localhost:8888/";
var CATEGORY_NAME_MAIN = "top_level";
var url = base_url + "data/sample.json";
var TEMPLATE_SUB_CATEGORY = "<span style=\"width: 50px;\"></span><a href=\"#\" onclick=\"displayProducts('${name}');\" title=\"${label}\"><img src=\"${img_url}\" class=\"img-circle\"></a>";
var TEMPLATE_PRODUCT = "<div class=\"row\">"
		+ "<hr><div class=\"span8\">"
		+ "    <div class=\"row\">"
		+ "      <div class=\"span8\">"
		+ "        <h4><strong><a href=\"/detail.jsp?id=${id}\">${label}</a></strong></h4>"
		+ "      </div>"
		+ "    </div>"
		+ "    <div class=\"row\">"
		+ "      <div class=\"span2\">"
		+ "        <a href=\"/detail.jsp?id=${id}\" class=\"thumbnail\">"
		+ "          <img src=\"${img_url}\" alt=\"{label}\">"
		+ "        </a>"
		+ "      </div>"
		+ "      <div class=\"span6\">      "
		+ "        <p>${description}</p>"
		+ "      </div>"
		+ "    </div>"
		+ "    <div class=\"row\">"
		+ "      <div class=\"span8\">"
		+ "        <p></p>"
		+ "        <p>"
		+ "          <i class=\"icon-comment\"></i> <a href=\"/detail.jsp?id=${id}\">${comments} Comments</a> | "
		+ "          <i class=\"icon-tags\"></i> Tags : "
		+ "			{{each tags}} "
		+ "		 		<a href=\"/detail.jsp?id=${id}\"><span class=\"label label-info\">${$value}</span></a>"
		+ "			{{/each}}  " + "        </p>" + "      </div>" + "    </div>"
		+ "  </div>" + "</div>";

$.template("subCategoryCategory", TEMPLATE_SUB_CATEGORY);
$.template("productCategory", TEMPLATE_PRODUCT);

function loadMainCategory() {
	$.getJSON(url, function(data) {
		var select = $("#selectTopLevelCategory");
		select.find('option').remove().end();
		select.append($('<option>').text("Select One"));
		$.each(data.main_categories, function(key, value) {
			if (value.tags.indexOf(CATEGORY_NAME_MAIN) >= 0) {
				select.append($('<option>').text(value.label).attr('value',
						value.name));
			}
		});
	});
}

function displaySubCategories(forTag) {
	var url = base_url + "/data/sample.json";
	$.getJSON(url, function(data) {
		$("#main_suggested_categories_list").html("");
		var hitCounter = 0;
		$.each(data.sub_categories, function(key, value) {
			if (value.tags.indexOf(forTag) >= 0) {
				$.tmpl("subCategoryCategory", value).appendTo(
						"#main_suggested_categories_list");
				hitCounter++;
			}
		});
		$("#suggested_category_item_count").html("(" + hitCounter + ")");
		$("#main_suggested_categories").show();
	});
}

function displayProducts(forTag) {
	var url = base_url + "/data/sample.json";
	$.getJSON(url, function(data) {
		$("#main_suggested_elements").html("");
		$.each(data.products, function(key, value) {
			if (value.tags.indexOf(forTag) >= 0) {
				$.tmpl("productCategory", value).appendTo(
						"#main_suggested_elements");
			}
		});
		$("#main_suggested_elements").show();
	});
}
