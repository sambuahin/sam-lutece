/*
 * jQuery File Upload Plugin JS Example 8.9.1
 * https://github.com/blueimp/jQuery-File-Upload
 *
 * Copyright 2010, Sebastian Tschan
 * https://blueimp.net
 *
 * Licensed under the MIT license:
 * http://www.opensource.org/licenses/MIT
 */

/* global $, window */

$.ajaxSetup({cache:false}); 

$(function () {
    'use strict';

    var uploadButton = $('<button/>')
    .addClass('btn btn-primary')
    .prop('disabled', true)
    .text('Processing...')
    .on('click', function () {
        var $this = $(this),
            data = $this.data();
        $this
            .off('click')
            .text('Abort')
            .on('click', function () {
                $this.remove();
                data.abort();
            });
        data.submit().always(function () {
            $this.remove();
        });
    });
    
    // Initialize the jQuery File Upload widget:
	$(document).on('click','.${handler_name}${fieldname}', {} ,function() {
    	$(this).fileupload({
    			// Uncomment the following to send cross-domain cookies:
    			//xhrFields: {withCredentials: true},
    			dataType: 'json',
    			url: '${base_url}${upload_url}',
    			disableImageResize: /Android(?!.*Chrome)|Opera/
        		.test(window.navigator && navigator.userAgent),
    			imageMaxWidth: ${imageMaxWidth},
    			imageMaxHeight: ${imageMaxHeight},
    			previewMaxWidth: ${previewMaxWidth},
    			previewMaxHeight: ${previewMaxHeight},
    			imageCrop: false, // Force cropped images
    			dropZone: $(this),
    			maxFileSize: ${maxFileSize},
    			formData: [{name:'fieldname',value:$(this)[0].name}, {name:'asynchronousupload.handler', value:'${handler_name}'}],
    			messages: {
    		        maxFileSize: '${i18n("dansmarue.message.upload.file.error.size",(maxFileSize/1000000.0))}',
			
    		    }
    	    }).on('fileuploadprocessalways', function (e, data) {
    	        var index = data.index,
    	            file = data.files[index],
    	            fieldName = data.formData[0].value;
//    	        if (file.preview) {
//    	            node
//    	                .prepend('<br>')
//    	                .prepend(file.preview);
//    	        }
    	        if (file.error) {
    	        	updateErrorBox( file.error, fieldName )
    	        }
//    	        if (index + 1 === data.files.length) {
//    	            data.context.find('button')
//    	                .text('Upload')
//    	                .prop('disabled', !!data.files.error);
//    	        }
    	    }).on('fileuploadprogressall', function (e, data) {
    	        var progress = parseInt(data.loaded / data.total * 100, 10);
    	        var fieldName = this.name;
    	        var bar = $(' #progress-bar_' + fieldName);
    	        bar.html( progress + '%'  );
    	        bar.css( 'width', progress + '%' );
    	         	        
    	        $(' #progress_' + fieldName).show( );
    	        
    	        if ( progress >= 100 )
    	        {
    	        	$(' #progress_' + fieldName).hide();
    	        }
    	    }).on('fileuploaddone', function (e, data) {
    	    	formDisplayUploadedFiles${fieldname}( data.result, data.files, '${checkBoxPrefix}' );
    	    }).on('fileuploadfail', function (e, data) {
    	    	var fieldName = data.formData[0].value;
    	    	updateErrorBox( 'Une erreur est survenue lors de l\'upload du fichier', fieldName );
    	    	$(' #progress_' + fieldName).hide();
    	    }).prop('disabled', !$.support.fileInput)
    	        .parent().addClass($.support.fileInput ? undefined : 'disabled');
    	this.parentNode.className=this.parentNode.className + ' fileinput-button';
    	
    	var jsonData = {"fieldname":this.name, "asynchronousupload.handler":"${handler_name}"};
    	
    	$.getJSON('${base_url}jsp/site/plugins/asynchronousupload/DoRemoveFile.jsp', jsonData,
    			function(json) {
    				formDisplayUploadedFiles${fieldname}(json, null, '${checkBoxPrefix}');
    			}
    		);
    });
    
    $('[name^="${submitPrefix}"]').click(function(event) {
		event.preventDefault( );
	});

    // prevent user from quitting the page before his upload ended.    
    $(document).on('click','[name^="${deletePrefix}"]', {} ,function() {
        var fieldName = this.name.match("${deletePrefix}(.*)")[1];
    	removeFile${checkBoxPrefix}(fieldName, '${handler_name}', '${base_url}');
    	event.preventDefault( );
    });
    
});

/**
 * Sets the files list
 * @param jsonData data
 */
function formDisplayUploadedFiles${fieldname}( jsonData, files, cbPrefix )
{
	// create the div
	var fieldName = jsonData.field_name;
	
	updateErrorBox(jsonData.form_error, fieldName);
	
	if ( fieldName != null )
	{
		if ( jsonData.fileCount == 0 ){
			// no file uploaded, hiding content
//			$("#_file_deletion_" + fieldName ).hide(  );
			$("#_file_deletion_label_" + fieldName ).hide(  );
//			$("#_file_deletion_button_" + fieldName ).hide(  );
		} else {

			var strContent = "";
			var checkboxPrefix = cbPrefix + fieldName;
			
			var baseUrl;
			var currentUrl = window.location.href;
			if(currentUrl.indexOf("jsp/site/Portal.jsp?page=") > -1){
				baseUrl = "jsp/site/Portal.jsp?page=" + $.urlParam('page') + "&";
			}
			
			// jsonData.uploadedFiles.length is str length when file count is 1 so using fileCount instead.
			// so if jsonData.fileCount == 1, the index should not be used
			for ( var index = 0; index < jsonData.fileCount; index++ )
			{

//				if ( jsonData.files[index].is_new )
//				{
					strContent = strContent + "<div class=\"spec-file\" id=\"_file_uploaded_" + fieldName + index +"\">"+
					"<span class=\"filename\">" + ( (jsonData.fileCount == 1) ? "<a	href=\"" + baseUrl + "action=download&fieldName="+fieldName+"\">"+jsonData.files.name+"</a>" : jsonData.files[index].name )+ "</span>"+
                   "<span class=\"filesize\">"+ " ("+ ( (jsonData.fileCount == 1) ? formatBytes(jsonData.files.size) : formatBytes(jsonData.files[index].size) )+ ")" + "</span>"+
                    "<a class=\"erase\"  href=\"javascript:removeFile('"+fieldName+"','"+index+"');\"><img src=\"images/image-DMR/erase.png\" alt=\"supprimer la photo\">"+
                    "</a></div>";
//				}
//				else if ( jsonData.files[index].is_removed )
//				{
//					$('#_file_uploaded_' + fieldName + index).remove();
//				}
			}

			$("#_file_deletion_" + fieldName ).html( strContent );
			// show the hidden div (if not already)
//			$("#_file_deletion_" + fieldName ).show(  );
			$("#_file_deletion_label_" + fieldName ).show(  );
//			$("#_file_deletion_button_" + fieldName ).show(  );
		}
	}
}

$.urlParam = function(name){
    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
    return results[1] || 0;
}

function formatBytes(bytes,decimals) {
	   if(bytes == 0) return '0 Octet';
	   var k = 1000;
	   var dm = decimals + 1 || 0;
	   var sizes = ['Octets', 'Ko', 'Mo', 'Go', 'To', 'Po', 'Eo', 'Zo', 'Yo'];
	   var i = Math.floor(Math.log(bytes) / Math.log(k));
	   return parseFloat((bytes / Math.pow(k, i)).toFixed(dm)) + ' ' + sizes[i];
	}


/**
 * Removes a file
 * @param action the action button name
 */
function removeFile${checkBoxPrefix}( fieldName, handlerName, baseUrl ) {
	// build indexes to remove
	var strIndexes = '';
	
	var indexesCount = 0;
	var checkboxPrefix = '${checkBoxPrefix}' + fieldName;
	$('[name^="' + checkboxPrefix + '"]:checked' ).each( function() {
		if (this.checked)
		{
			if ( indexesCount > 0 )
			{
				strIndexes = strIndexes + ",";
			}
			indexesCount++;
			var index = this.name.match( checkboxPrefix + "(\\d+)")[1];
			strIndexes = strIndexes + index;
		}
	});
	
	if ( !indexesCount )
	{
		return;
	}
	
	removeFiles( fieldName, handlerName, baseUrl, strIndexes );
}

function removeFiles( fieldName, handlerName, baseUrl, strIndexes ) {
	var jsonData = {"fieldname":fieldName, "asynchronousupload.handler":handlerName, "field_index": strIndexes};
	
	$.getJSON(baseUrl + 'jsp/site/plugins/asynchronousupload/DoRemoveFile.jsp', jsonData,
		function(json) {
			formDisplayUploadedFiles${fieldname}(json, null, '${checkBoxPrefix}');
		}
	);
}
function removeFile( fieldName, strIndex ) {
	removeFiles( fieldName,'${handler_name}', '${base_url}', strIndex );
}

function updateErrorBox( errorMessage, fieldName )
{
	if ( errorMessage != null && errorMessage != '' )
	{
		var strContent = '<span class="text-danger">' + errorMessage + '</span>'
		$( '#_file_error_box_' + fieldName ).html( strContent );
		$( '#_file_error_box_' + fieldName ).show( );
	}
	else
	{
		$( '#_file_error_box_' + fieldName ).hide( );
	}
}
