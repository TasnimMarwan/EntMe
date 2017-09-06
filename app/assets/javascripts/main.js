(function($){

	$(document).ready(function() {


		 var winWidth = $(window).width();
		 $(window).resize(function() {
		 	winWidth = $(window).width();
		 });

		 $('#search-form').on('click', '.search-btn.toggle', function(e) {
		 	$(this).addClass('close-search').find('.fa').toggleClass('fa-search fa-times').closest('#search-form').addClass('active');
		 	$('.search-form').focus();
		 });

		 $('#search-form').on('click', '.search-btn.toggle.close-search', function(e) {
	 		$(this).removeClass('close-search').find('.fa').removeClass('fa-times').addClass('fa-search').closest('#search-form').removeClass('active');
		 });



		$(document).on('click', '.page-items-controller a', function() {
			$(this).addClass('active').html('<i class="fa fa-refresh fa-spin"></i>').siblings().removeClass('active');
		});

		var $input = $("#txtAcrescimo");
		$input.val(1);
		$(".quantity-btn").click(function(){
    	if ($(this).hasClass('plus'))
        	$input.val(parseInt($input.val())+1);
    	else if ($input.val()>1)
        	$input.val(parseInt($input.val())-1);
        return false
		});		


		$(".btn-add-cart").on('click', function(){
			$.ajax({
	    		url: '/add_to_cart',
	    		dataType: 'json',
	    		type: 'GET',
	    		data: {product_id: $(this).data("product_id"), quantity: $(this).data("quantity")},
	    		success: function(data) {
	    			$('#navbar-totals .hidden-xs').text($.parseJSON(data.counter));
	        		alert("Successful");
	      		},
	      		failure: function() {
	        		alert("Unsuccessful");
	      		}
    		});
		});

		$("#rateYo").rateYo({
			starWidth: "40px",
			fullStar: true,
			onSet: function (rating, rateYoInstance) {
      			alert("Rating is set to: " + rating);	
      			$("#rate_field").val(rating);
    		}

		});
		$(".rateYo").each(function(){
            rate = $(this).data("rate");
            $(this).rateYo({
            	rating: rate,
               	fullStar: true
            });
		});

		$('#signin_form').submit(function() {
    		var valid = true,
        	message = '';
        	$('#user_email').removeClass('is-invalid');
        	$('#user_password').removeClass('is-invalid');
        	var filter = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    		if($('#user_email').val() == '' || !filter.test($('#user_email').val())){
            	valid = false;
            	message += 'Please enter a valid EMAIL' + '\n';
            	$('#user_email').addClass('is-invalid');
            }
            if($('#user_password').val() == '' || $('#user_password').val().length>20 || $('#user_password').val().length<6){
            	valid = false;
            	message += 'Please enter a valid PASSWORD' + '\n';
        	$('#user_password').addClass('is-invalid');

            }
    		if(!valid) {
        		alert(message);
        		return false;
    		}
		});
           
	});

})(jQuery);


