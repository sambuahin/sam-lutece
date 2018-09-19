//var BASE_URL = "http://dev.lutece.paris.fr/sira/rest/signalement/";
//var BASE_URL = "http://r57-sira-ws.apps.paris.fr/sira/rest/signalement/";
var BASE_URL = "http://dev.lutece.paris.fr/sira/rest/signalement/";

var POST_URL = BASE_URL + "api";
var XML_FILE = BASE_URL + "api/bb_cat";
var REVERSE_GEO_URL = "http://maps.googleapis.com/maps/api/geocode/json?sensor=true&latlng=";
var ZOOM = 18;
var INCIDENT; // js object for incident. To be send to server
var PRIVATE_KEY = "TBD";

$(document).ready(function()
{
    INCIDENT = JSON.parse('[{"request":"saveIncident","email":"phonegap.no-reply@paris.fr","incident":{"categoryId":1001,"address":"","descriptive":"  ","priorityId":3},"position":{"latitude":48.84,"longitude":2.36}}]');

    SignUtil.geoloc();

    $('#home').live('pageshow', function(event, ui)
    {
        SignUtil.geoloc();
        NomenclatureUtil.download(null,null);
        $('#end .msg').hide();
    });

    $('#collision').live('pageshow', function(event, ui)
    {
    	$('#collision a[data-role="button"]').hide();
    	$.mobile.loading( 'show' );
    	CollisionUtil.download(function () {
    		$.mobile.loading( 'hide' );
        	$('#collision a[data-role="button"]').show();
    	}, function (id) {
    		CollisionUtil.detailIncident(id);
    	});
    });

    $('#chooseType1').live('pageshow', function(event, ui)
    {
    	$.mobile.loading( 'show' );
        NomenclatureUtil.download(function () {
    		$.mobile.loading( 'hide' );
    	}, function (id) {
            INCIDENT[0].incident.categoryId = id;
        });
    });

    $('.chooseType').live('pageshow', function(event, ui)
    {
        NomenclatureUtil.populate(function (id) {
            INCIDENT[0].incident.categoryId = id;
        });
    });

    $('#choosePlace').live('pageshow', function(event, ui)
    {
        SignUtil.geoloc();
    });
            
    $('#visible-end-button').live('click', function(event, ui)
    {
    	INCIDENT[0].incident.descriptive = document.getElementById("comment_field").value;
    	INCIDENT[0].email = document.getElementById("email_field").value;
    	//TODO add priority
        CameraUtil.takePicture(function(photoURI)
        {
        	//$('#end #debug').html(JSON.stringify(INCIDENT));
            $("#hidden-end-button").click();
        	$.mobile.loading( 'show' );
            $('#end .msg').hide();
            $('#end_1').show();
            AuthUtil.addAuthField(INCIDENT);
            var objHeaders = Network.getHeaders(PRIVATE_KEY, INCIDENT);
            Network.send(POST_URL, INCIDENT, objHeaders, function(resp)
            {
            	//$('#end #debug').html(JSON.stringify(resp));
                var incidentId = resp[0].answer.incidentId;
                $("#idSigna").html(incidentId);
                $('#end .msg').hide();
                $('#end_2').show();

                if (photoURI != null) {
                    Network.sendPhotoCordova(POST_URL + "/photo2", photoURI, incidentId, function(data)
                    {
                        $('#end .msg').hide();
                        $('#end_3').show();
                    	$.mobile.loading( 'hide' );
                    }, function(error)
                    {
                    	$.mobile.loading( 'hide' );
                        alert("An error has occurred: Code = " + error.code);
                        $('#end .msg').hide();
                        $('#end_3').show();
                    });
                } else {
                    $('#end .msg').show();
                	$.mobile.loading( 'hide' );
                }
            }, function(e, xhr)
            {
                alert(e.statusText);
                $('#end .msg').hide();
                $('#end_3').show();
            });
        });
    });
});
