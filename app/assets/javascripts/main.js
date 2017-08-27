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
	});

})(jQuery);