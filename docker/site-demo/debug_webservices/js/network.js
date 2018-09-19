var Network = {};

Network.send = function(urlWS, objIncident, objHeaders, doneFunction, failFunction)
{
    var request = $.ajax({
        type : "POST",
        url : urlWS,
        dataType : "json",
        headers : objHeaders,
        data : {
            jsonStream : JSON.stringify(objIncident)
        }
    }).success(doneFunction).fail(failFunction);
}

/**
 * works with chrome
 */
Network.sendPhotoJQuery = function(urlWS, imageURI, incidentId, doneFunction)
{
    // imageURI.name imageURI.size imageURI.type
    // alert(imageURI.name + " id:"+incidentId);
    var formData = new FormData();
    formData.append("imgField", imageURI);
    var request = $.ajax({
        type : "POST",
        headers : {
            "udid" : "",
            "authentToken" : "",
            "img_comment" : "",
            "incident_creation" : "",
            "incident_id" : incidentId,
            "type" : "far",
        },
        url : urlWS + "/photo2",
        data : formData,
        cache : false,
        contentType : false,
        processData : false,
        fail : function(e, xhr)
        {
            alert(e.statusText);
        }
    }).done(doneFunction);
}

/**
 * to use for blackberry
 */
Network.sendPhotoCordova = function(urlWS, imageURI, incidentId, doneFunction, failFunction)
{
    var options = new FileUploadOptions();
    options.fileKey = "imgField";
    options.fileName = imageURI.substr(imageURI.lastIndexOf('/') + 1);
    options.mimeType = "image/jpeg";

    var params = new Object();
    params.incident_id = incidentId;

    options.params = params;

    var ft = new FileTransfer();
    ft.upload(imageURI, urlWS, doneFunction, failFunction, options);
}

/**
 * Auth according to c4m specs
 */
Network.authentToken = function(strLogin, strPasswd, strPrivateKey)
{
    var iTimestamp = new Date().getTime();
    return Base64.encode("token=" + Sha1.hash(Sha1.hash(strPasswd) + iTimestamp + strPrivateKey) + ";ts=" + iTimestamp + ";login=" + strLogin);
}

/**
 * get headers according to c4m specs
 */
Network.getHeaders = function(strKey, jsonObject)
{
    return {
        "x-app-version" : "1.0.0",
        "x-app-platform" : "js-family",
        "x-app-device-model" : "",
        "x-app-request-signature" : Sha1.hash(strKey + JSON.stringify(jsonObject))
    };
}
