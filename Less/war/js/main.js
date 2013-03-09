var base_url = "http://localhost:8888/";

function displayMainComponents() {
	var url = base_url + "component";
	var stringToAppend = '';
	$.getJSON(url, function(data) {
		if (data.status === "OK") {
			$.each(JSON.parse(data.response).allComponents, function(key, value) {
				stringToAppend+='<div class="row"><div class="span8"><div class="row"><div class="span8"><h4><strong><a href="#">'+value.name+'</a></strong></h4></div></div><div class="row"><div class="span2"><a href="#" class="thumbnail"><img src="'+value.imageUrl+'" height="180" width="260" alt="'+value.name+'"></a></div><div class="span6"><p>'+value.description+'</p><p><a class="btn" href="'+base_url+'component_detail.html?id='+value.key.name+'">Details</a></p></div></div><div class="row"><div class="span8"><p></p><p><i class="icon-user"></i> por <a href="#">'+value.author+'</a>  | <i class="icon-calendar"></i> //TODO DATE Sept 16th, 2012        | <i class="icon-comment"></i> <a href="#">0 Comments</a>| <i class="icon-share"></i> <a href="#">Share</a> | <i class="icon-tags"></i> Tags :'; 
					$.each(value.tags, function(key, value) {
						stringToAppend+=' <a href="#"><span class="label label-info">'+value+'</span></a>';
					});
					stringToAppend+='</p></div></div></div>	</div><hr>';				
			});
		}
		$("#main_components").append(stringToAppend);
	});
}


function displaySuggestedCategories() {
	$("#main_suggested_categories").show();
}

function displaySuggestedElements() {
	$("#main_suggested_elements").show();
}
