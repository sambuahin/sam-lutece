function recomputePadding(){
	var headerSize = $("nav.navbar-fixed-top").height();
	var nbRow = headerSize/50;
	var paddingT = (nbRow-1)*50;
	$("#admin-wrapper").css("padding-top",""+ paddingT + "px");
}
$(document).ready(function(e){
	$("#btFooter").click( function(e){
		if( $('#footer').hasClass("navbar-fixed-bottom") ){
			$("#btFooter > i").removeClass("icon-arrow-down").addClass("icon-arrow-up");
		} else {
			$("#btFooter > i").removeClass("icon-arrow-up").addClass("icon-arrow-down");
		}
		$('#footer').toggleClass("navbar-fixed-bottom");
	});

	$("#admin-wrapper").css("padding-bottom","50px");
	
	recomputePadding();
	$(window).resize(function(){
		recomputePadding();
	});
	
	
});
$(window).load(function(e){
	recomputePadding();
});
</script>
