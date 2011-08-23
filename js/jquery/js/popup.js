$(document).ready(function() {				   
	// Now define one more function which is used to fadeout the 
	// fade layer and popup window as soon as we click on fade layer
	$('#fade').click(function() {

	// Add markup ids of all custom popup box here 						  
	$('#fade , #popup').fadeOut()
	return false;
	});
});

view = function(id){
		// popup will fadein
		var popupcontent = $("#q_"+id).html();
		var popup = "#popup";
		$(popup).html(popupcontent);
		$("#popup .detail").hide();
		$("#popup .DAAnswer").show();
		$(popup).fadeIn();	

		// append div with id fade into the bottom of body tag
		// and we allready styled it in our step 2 : CSS
		//$('body').append('<div id="fade"></div>');
		$('#fade').css({'filter' : 'alpha(opacity=80)'}).fadeIn();

		// Now here we need to have our popup box in center of 
		// webpage when its fadein. so we add 10px to height and width 
		var popuptopmargin = ($(popup).height() + 10) / 2;
		var popupleftmargin = ($(popup).width() + 10) / 2;


		// Then using .css function style our popup box for center allignment
		/*$(popup).css({
			'margin-top' : -popuptopmargin,
			'margin-right' : -popupleftmargin
		});*/
		
	};