var CollisionUtil = {};

CollisionUtil.jsonResponse = null;

/**
 * Download the JSON file
 */
CollisionUtil.download = function(downloadDoneFunction, messageSelectedFunction)
{
    var objRequest = JSON.parse('[{"request":"getIncidentsByPosition","position":{"longitude":2.3,"latitude":48.8},"radius":"close"}]');
    objRequest[0].position.latitude = INCIDENT[0].position.latitude;
    objRequest[0].position.longitude = INCIDENT[0].position.longitude;
    
    AuthUtil.addAuthField(objRequest);
    var objHeaders = Network.getHeaders(PRIVATE_KEY, objRequest);
    Network.send(POST_URL, objRequest, objHeaders, function(jsonResponse)
    {
    	downloadDoneFunction();
        CollisionUtil.jsonResponse = jsonResponse[0].answer;
        CollisionUtil.populate(messageSelectedFunction);
    });
}


/**
 * Build the DOM according to the JSON file
 */
CollisionUtil.populate = function(messageSelectedFunction)
{
    $("#listCollision").empty();
    $.each(CollisionUtil.jsonResponse.closest_incidents, function(i, item)
    {
    	var imgSrc = "";
    	if(item.pictures.close.length>0) {
    		imgSrc = item.pictures.close[0]; 
    	}
    	if(item.pictures.far.length>0) {
    		imgSrc = item.pictures.far[0]; 
    	}
    	var htmlContent = "<li id='" + item.id + "'><a href='#detail'><img src='"+imgSrc+"'/><h3>"+item.address +"</h3><span class='ui-li-count'>"+item.confirms+"</span></a></li>";
        $("#collision #listCollision").append(htmlContent);
        $("#collision #" + item.id).click(function()
        {
        	messageSelectedFunction(item.id);
        });
    });
    $(location.hash + " ul").listview("refresh");
}

CollisionUtil.detailIncident = function(id)
{
	var detailIncident = JSON.parse('[{"request":"getIncidentById","id":"13"}]');
	detailIncident[0].id = id;
    AuthUtil.addAuthField(detailIncident);
    var objHeaders = Network.getHeaders(PRIVATE_KEY, detailIncident);
    Network.send(POST_URL, detailIncident, objHeaders, function(jsonResponse)
    {
        json = jsonResponse[0].answer.incident;
        $("#detail #address").html(json.address);
        $("#detail #date").html(json.date);

        var imgSrc = "";
    	if(json.pictures.close.length>0) {
    		imgSrc = json.pictures.close[0]; 
    	}
    	if(json.pictures.far.length>0) {
    		imgSrc = json.pictures.far[0]; 
    	}
        $("#detail #img").attr("src", imgSrc);
        
        $("#detail #voteForMsg").click(function()
        {
        	$("#detail #voteForMsg").parent().hide("slow");
            var urlVote = JSON.parse('[{"request":"updateIncident","incidentLog":{"incidentId":1,"udid":"toto","status":"Confirmed"}}]');
            urlVote[0].incidentLog.incidentId = id;
            AuthUtil.addAuthField(urlVote);
            var objHeaders = Network.getHeaders(PRIVATE_KEY, urlVote);
            Network.send(POST_URL, urlVote, objHeaders, function(jsonResponse)
            {
            });
        }).parent().show();
    });
}
