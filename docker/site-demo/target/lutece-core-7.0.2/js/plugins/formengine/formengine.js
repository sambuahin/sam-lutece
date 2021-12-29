var uploading = 0;
var portalURI = $( 'input[name="portalURI"]' ).val(  );

function addAsynchronousUploadField(fieldId, formId, subformId) {

}

/**
 * Gets the max size value for the file
 * @param fieldId the file
 * @return the max size
 */
function getMaxLengthValue( fieldId )
{
	return getInputValue( "#_formengine_upload_maxLength_" + fieldId );
}

function getFileExtValue( fieldId )
{
	var value = getInputValue( "#_formengine_upload_fileTypes_" + fieldId );
	if ( value != null )
	{
		var reg = new RegExp("[ ,;]+", "g");
		var splitted = value.split(reg);
		value = "";
		var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
	    for(var i = 0; i < splitted.length; i++)
	    {
	    	if ( i > 0 )
	    	{
	    		value += ";"
	    	}
	    	value += "*." + splitted[i];
	    }
	}
	
	return value;
}

function canUploadFile( fieldId )
{
	// return true since onSelect does not work properly...
	return true;
	/* var filesCount = getUploadedFilesCount( fieldId );
	var maxFiles = getMaxUploadFiles( fieldId )
	return maxFiles == 0 ? true : filesCount < maxFiles; */
}

function getMaxUploadFiles( fieldId )
{
	var value = getInputValue( "#_formengine_upload_maxFiles_" + fieldId );
	return value == null ? 0 : value;
}

function getUploadedFilesCount( fieldId )
{
	// build indexes to remove
	var indexes = new Array();
	
	var indexesCount = 0;
	var checkboxPrefix = '_formengine_upload_checkbox_' + fieldId;
	return $('[name^="' + checkboxPrefix + '"]').length;
}

function getInputValue( inputId )
{
	var input = $( inputId )[0];
	if ( input != null )
	{
		return input.value;
	}
	
	return null;
}

/**
 * Handles error
 * @param event event
 * @param ID id
 * @param fileObj  fileObj
 * @param data data
 * @param fieldId fieldId
 */
function handleError( event,ID,fileObj,data,fieldId ) {
	$('#' + fieldId).uploadifyCancel(ID);
	
	if ( data.type=="File Size" ) {
		var maxSize = data.info / 1024;
		var strMaxSize;
		
		if ( maxSize > 1024 )
		{
			maxSize = Math.round( maxSize / 1024 * 100 ) / 100;
			
			strMaxSize = maxSize + "Mo";
		}
		else
		{
			strMaxSize = Math.round( maxSize * 100 ) / 100 + "ko";
		}
		alert("Le fichier est trop gros. La taille est limitée à " + strMaxSize );
	}
	else
	{
		alert("Une erreur s'est produite lors de l'envoi du fichier : " + data.info );
	}
}

function formengineStartUpload( event, ID, fieldId )
{
	if( ! canUploadFile( fieldId ) )
	{
		// canUploadFile will return true
		// $('#' + fieldId).uploadifyClearQueue();
		// document.getElementById(jQuery(event.target).attr('id') + 'Uploader').clearqueue();
		$('#' + fieldId).uploadifyCancel(ID);
		// document.getElementById(jQuery(event.target).attr('id') + 'Uploader').cancelFileUpload(ID, true, true, false);
		return false;
	}
	uploading++;
	
	return true;
}

/**
 * Called when the upload if successfully completed
 * @param event event
 * @param ID id
 * @param fileObj fileObj
 * @param data data (json)
 */
function formengineOnUploadComplete(event,ID,fileObj,data)
{
	uploading--;
	
	
	var jsonData;
	try
	{
		jsonData = $.parseJSON(data);
	}
	catch ( err )
	{
		/* webapp conf problem : probably file upload limit */
		alert("Une erreur est survenue lors de l'envoi du fichier.");
		return;
	}
	
	if ( jsonData.error != null )
	{
		alert( jsonData.error );
	}
	
	var jsonParameters = {"form":form,"subform":subform, "field_name":jsonData.field, "portalURI": portalURI, "t": new Date().getTime() };
	
	$.getJSON(baseUrl + '/jsp/site/plugins/formengine/UploadedFiles.jsp', jsonParameters,
			function(json) {
				formengineDisplayUploadedFiles(json);
			}
	);
}

/**
 * Sets the files list
 * @param jsonData data
 */
function formengineDisplayUploadedFiles( jsonData )
{
	// create the div
	var fieldName = jsonData.field;
	
	if ( fieldName != null )
	{
		/* error messages */
		if ( jsonData.errorMessages != undefined && jsonData.errorMessages != null )
		{
			$('#_formengine_uploaded_files_errors_' + fieldName).text("");
			var errorMessage = "";
			if ( $.isArray( jsonData.errorMessages ) )
			{
				errorMessage +=  "<ul>"
				for ( var index = 0; index < jsonData.errorMessages.length; index++ )
				{
					errorMessage += jsonData.errorMessages[index];
				}
				errorMessage += "</ul>";
			}
			else
			{
				// only one message...
				errorMessage += jsonData.errorMessages;
			}
			$('#_formengine_uploaded_files_errors_' + fieldName).html( errorMessage );
			/* $('#_formengine_uploaded_files_errors_' + fieldName).find("a").each( function() {
				$(this).attr("href", window.location.href + $(this).attr("href") );
			}); */
		}
		
		if ( jsonData.fileCount == 0 )
		{
			// no file uploaded, hiding content
			$("#_formengine_uploaded_files_" + fieldName ).hide(  );
			$("#_formengine_uploaded_files_label_" + fieldName ).hide(  );
			$("#_formengine_uploaded_files_button_" + fieldName ).hide(  );
		}
		else
		{
			// show the hidden div (if not already)
			$("#_formengine_uploaded_files_" + fieldName ).show(  );
			$("#_formengine_uploaded_files_label_" + fieldName ).show(  );
			$("#_formengine_uploaded_files_button_" + fieldName ).show(  );

			var strContent = "";
			var checkboxPrefix = '_formengine_upload_checkbox_' + fieldName;
			
			// jsonData.uploadedFiles.length is str length when file count is 1 so using fileCount instead.
			// so if jsonData.fileCount == 1, the index should not be used
			for ( var index = 0; index < jsonData.fileCount; index++ ) {
					strContent = strContent + "<div class=\"formengine-element\"> \
						<span class=\"formengine-label\">&nbsp;</span>  \
						<span class=\"formengine-field\" >  \
							<label>  \
								<input type=\"checkbox\"  \
									name=\"" + checkboxPrefix + index + "\"  \
									id=\"" + checkboxPrefix + index + "\"  \
								/>  \
								&#160;" + ( (jsonData.fileCount == 1) ? jsonData.uploadedFiles : jsonData.uploadedFiles[index] ) + 
							"</label>  \
						</span>  \
					</div> ";
			}
			
			$("#_formengine_uploaded_files_" + fieldName ).html(
					strContent
			);
		}
	
	}
}

function getUrlVars()
{
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for(var i = 0; i < hashes.length; i++)
    {
        hash = hashes[i].split('=');
        vars.push(hash[0]);
        if ( i == hashes.length - 1 && hash[1].indexOf('#') > 0 )
        {
        	hash[1] = hash[1].slice(0, hash[1].indexOf('#') );
        }
        vars[hash[0]] = hash[1];
    }
    return vars;
}

// get page parameters
var urlsVars = getUrlVars();
var form = urlsVars['form'];
var subform = urlsVars['subform'];


// add asynchronous behaviour to inputs type=file
$('input[type=file]').each(function(index) {
	//addAsynchronousUploadField(this.id, urlsVars['form'], urlsVars['subform']);
});

// prevent user from quitting the page before his upload ended.
$('input[type=submit]').each(function() {
	$(this).click(function(event) {
			if ( uploading != 0 )
			{
				event.preventDefault();
				alert('Merci de patienter pendant l\'envoi du fichier');
			} 
			else if ( this.name.match("_formengine_upload_delete_"  ) )
			{
				event.preventDefault(); 
				removeFile(form , subform, this.name);;
			}
	});
});

/**
 * Removes a file
 * @param form the form
 * @param subform the subform
 * @param action the action button name
 */
function removeFile( form, subform, action ) {
	var fieldName = action.match("_formengine_upload_delete_(.*)")[1];
	
	// build indexes to remove
	var indexes = new Array();
	
	var indexesCount = 0;
	var checkboxPrefix = '_formengine_upload_checkbox_' + fieldName;
	$('[name^="' + checkboxPrefix + '"]:checked' ).each( function() {
		if (this.checked)
		{
			indexesCount++;
			var index = this.name.match( checkboxPrefix + "(\\d+)")[1] ;
			indexes.push(index);
		}
	});
	
	if ( !indexesCount )
	{
		return;
	}
	
	strIndexes = "[" + indexes + "]";
	var jsonData = {"form":form,"subform":subform, "field_name":fieldName, "field_index": strIndexes, "portalURI": portalURI, "t": new Date().getTime()};
	
	$.getJSON(baseUrl + '/jsp/site/plugins/formengine/DoRemoveFile.jsp', jsonData,
		function(json) {
			formengineDisplayUploadedFiles(json);
		}
	);
}

function keepAlive(  ) {
	if ( uploading > 0 )
	{
		$.getJSON(baseUrl + 'jsp/site/plugins/formengine/KeepAlive.jsp');
	}
	setTimeout("keepAlive()", 240000);
}

keepAlive(  );

