var SignUtil = {
    geoloc : function()
    {
        function geoSuccess(position)
        {

            INCIDENT[0].position.latitude = position.coords.latitude;
            INCIDENT[0].position.longitude = position.coords.longitude;
            $("#start").show();
            var url = REVERSE_GEO_URL + position.coords.latitude + "," + position.coords.longitude;
            $.getJSON(url, function(data)
            {
                var address = data.results[0].formatted_address;
                INCIDENT[0].incident.address = address;
                document.getElementById("address_field").value = address;
            });
        }
        function geoFail(err)
        {
        }
        navigator.geolocation.getCurrentPosition(geoSuccess, geoFail, { enableHighAccuracy: true });
    }
};

var CameraUtil = {
    onPhotoFail : function(message)
    {
        alert('Failed because: ' + message);
    },
    takePicture : function(callBackFunction)
    {
        if (navigator.camera !== undefined) {
            navigator.camera.getPicture(callBackFunction, CameraUtil.onPhotoFail, {
                quality : 50,
                destinationType : Camera.DestinationType.FILE_URI,
                targetWidth : 600,
            });
        } else {
            callBackFunction(null);
        }
    }
};

var AuthUtil = {
    addAuthField : function(jsonObject)
    {
        var strAuthentToken = Network.authentToken("mylogin", "monmotdepasse", PRIVATE_KEY);
        jsonObject[0].authentToken = strAuthentToken;
        if (typeof device != 'undefined') {//cordova
            jsonObject[0].udid = device.uuid;
        } else {//browser
            jsonObject[0].udid = 0;
        }
    }
};