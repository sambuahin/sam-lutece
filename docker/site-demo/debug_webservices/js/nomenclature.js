var NomenclatureUtil = {};

NomenclatureUtil.jsonResponse = null;
NomenclatureUtil.pageToParentId = new Array();
NomenclatureUtil.pageToParentId[1] = 0;// la page 1 correspond au parentId 0

/**
 * Download the JSON file
 */
NomenclatureUtil.download = function(downloadDoneFunction, doneFunction)
{
    if (NomenclatureUtil.jsonResponse == null) {
        var objRequest = JSON.parse('[{"request":"getCategories","curVersion":"-1"}]');
        AuthUtil.addAuthField(objRequest);
        var objHeaders = Network.getHeaders(PRIVATE_KEY, objRequest);
        Network.send(POST_URL, objRequest, objHeaders, function(jsonResponse)
        {
        	downloadDoneFunction();
            NomenclatureUtil.jsonResponse = jsonResponse[0].answer;
            NomenclatureUtil.populate(doneFunction);
        });
    } else {
        NomenclatureUtil.populate(doneFunction);
    }
}

NomenclatureUtil.getPageNumber = function()
{
    var str = "#chooseType";
    var pageNum = 1;
    var tmp = location.hash.indexOf(str);
    if (location.hash.indexOf(str) >= 0) {
        pageNum = eval(location.hash.split(str)[1]);
    }
    return pageNum;
}

/**
 * Build the DOM according to the JSON file
 */
NomenclatureUtil.populate = function(doneFunction)
{
    function getChildren(code)
    {
        var arr = new Array();
        if(NomenclatureUtil.jsonResponse != null) {
            var categories = NomenclatureUtil.jsonResponse.categories;
            for ( var i in categories) {
                var categorie = categories[i];
                if (categorie.parent_id === code) {
                    categorie.id = i;
                    arr.push(categorie);
                }
            }
        }
        return arr;
    }

    var parentId = NomenclatureUtil.pageToParentId[NomenclatureUtil.getPageNumber()];

    var levelArray = getChildren(parentId);

    $(".chooseType #list").empty();
    $.each(levelArray, function(i, item)
    {
        var strHref = "#chooseType" + eval(NomenclatureUtil.getPageNumber() + 1);
        if (typeof (item.children_id) == 'undefined') {
            strHref = "#choosePlace";
        }
        $(location.hash + " #list").append("<li id='" + item.id + "'><a href='" + strHref + "'>" + item.name + "</a></li>");
        $(location.hash + " #" + item.id).click(function()
        {
            doneFunction(item.id);
            NomenclatureUtil.pageToParentId[NomenclatureUtil.getPageNumber() + 1] = eval(item.id);
        });
    });

    $(location.hash + " #list").append("<li id='back'><a href='#'><b>Retour</b></a></li>");
    $(location.hash + " #back").click(function()
    {
        history.back();
    });
    $(location.hash + " ul").listview("refresh");
}