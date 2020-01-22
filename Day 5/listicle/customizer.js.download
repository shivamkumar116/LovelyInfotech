/**
 * File customizer.js.
 */

jQuery.noConflict();
new WOW().init();

jQuery(document).ready(function($) {
	
	"use strict";
	
	function show_sidenavpage(listiclelayout){

		var containerWidth = document.getElementsByClassName("container")[0].clientWidth;
		var extraScreen = (screen.width - containerWidth);
		var extraScreenM = (screen.width - containerWidth)-255;
		var extraScreenHalf = (extraScreen / 2);
		var extraScreenHalfM=(extraScreenM / 2);
		var relativeWidth = screen.width-extraScreenHalf;
		//alert(extraScreen);
/*
		if(extraScreen > 255 ){
			$(".sidenavpage main .relative-container").css("width", relativeWidth+"px");
			$("body.sidenavpage main .relative-container").css("margin-left", extraScreenHalf+"px");
			$("body.sidenavpage main .relative-container").css("margin-right", "-"+extraScreenHalf+"px");
			$("body.sidenavpage.mobile-left main .relative-container").css("margin-left", extraScreenHalfM+"px");
			$("body.sidenavpage.mobile-left main .relative-container").css("margin-right", "-"+extraScreenHalfM+"px");
		} else{
			$("body.sidenavpage.mobile-left main .relative-container").css("margin-left", "0");
			$("body.sidenavpage.mobile-left main .relative-container").css("margin-right", "0");
		}
	*/
	}


	if($('body').hasClass('sidenavpage')){

		if(screen.width < 1440){
			$("body.sidenavpage").toggleClass("mobile-left");
			$("#navbar-menu").toggleClass("show");
			//$(".sidenavpage .sina-nav-header .navbar-toggle").attr("aria-expanded", "true");
		}
		//show_sidenavpage();
		$('.sidenavpage .navbar-toggle').on('click', function () {
			$('body').toggleClass('mobile-left');
			//show_sidenavpage();
		});

	}

/*
	if($('body').hasClass('sidenavpage')){

		$.fn.sinaNav = function () {
			return this.each( function() {
				var getNav		= $(this),
					top 		= getNav.data('top') || getNav.offset().top,
					mdTop 		= getNav.data('md-top') || getNav.offset().top,
					xlTop 		= getNav.data('xl-top') || getNav.offset().top,
					navigation 	= getNav.find('.sina-menu'),
					getWindow 	= $(window).outerWidth(),
					anim 		= getNav.data('animate-prefix') || '',
					getIn 		= navigation.data('in'),
					getOut 		= navigation.data('out');

				var $sidenavcollapse = getNav.find('.navbar-collapse');
				
				if ( getNav.hasClass('navbar-reverse') ) {
					$sidenavcollapse.on('shown.bs.collapse', function() { $('body').addClass('mobile-right'); });
					$sidenavcollapse.on('hide.bs.collapse', function() { $('body').removeClass('mobile-right'); });
					$(window).on('resize', function(){
						$('body').removeClass('mobile-right');
						getNav.find('.navbar-collapse').removeClass('show');
						//getNav.find('.navbar-toggle .fa', this).removeClass('fa-times').addClass('fa-bars');
					});
				}
				else{
					$sidenavcollapse.on('shown.bs.collapse', function() { $('body').addClass('mobile-left'); });
					$sidenavcollapse.on('hide.bs.collapse', function() { $('body').removeClass('mobile-left'); });
					$(window).on('resize', function(){
						$('body').removeClass('mobile-left');
						getNav.find('.navbar-collapse').removeClass('show');
						//getNav.find('.navbar-toggle .fa', this).removeClass('fa-times').addClass('fa-bars');
					});
				}
			});
		}
		$('.sina-nav').sinaNav();

	}
*/



	/*
	 * jquery.repeater.min.js
	 */		
	if( document.getElementById("repeaterForm") ){
		
  		window.id = 0;

  		$('.repeater').repeater( {
    		defaultValues: {
      			'id': window.id 
			},
			show: function () {
				$(this).slideDown();
				console.log($(this).find('input')[1]);
				$('#cat-id').val(window.id);
			},
			hide: function (deleteElement) {
				if (confirm('Are you sure you want to delete this element?')) {
					window.id--;
					$('#cat-id').val(window.id);
					$(this).slideUp(deleteElement);
					console.log($('.repeater').repeaterVal());
				}
			},
			ready: function (setIndexes) {
				/**/
		} });
	
	}
		
	 

/*
	$('.dropdown-toggle').on('click', function () {
		$('.dropdown-toggle').toggleClass('on');
		$('.dropdown-menu').toggleClass('show');
	});
	*/
		

	$('.btn-advance').on('click', function () {
		$('.btn-advance').toggleClass('active');
		$('#advanced-search-box').toggleClass('show');
	});
	
	$('.show-map').on('click', function () {
		$('.show-map').toggleClass('active');
		$('#map-result').toggleClass('show');
	});
	
	
	
	function show_listicle_layout(listiclelayout){
		//alert(listiclelayout);
		var view = '.view-layout a';
		var layout = '.section-layout';
		
		/* Set View Style */
		jQuery(view).removeClass("active");	
		jQuery(view.concat('.'.concat(listiclelayout))).addClass("active");
		 
		/* Set Listicle Box View */
		if(listiclelayout == 'slide-left'){
			
		} else{
			jQuery(layout).removeClass("gridbox-layout");
			jQuery(layout).removeClass("tilesbox-layout");
			jQuery(layout).removeClass("list-layout");
			jQuery(layout).removeClass("grid-layout");
			jQuery(layout).removeClass("tiles-layout");
			jQuery(layout).removeClass("listbox-layout");
			jQuery(layout).addClass(listiclelayout.concat('-layout'));
		}
	}
	
	if( screen.width <= 768 && document.getElementById("section-layout")){
		if( screen.width < 640 || document.getElementById("map-side-listings")){
			show_listicle_layout("gridbox");
			jQuery('.view-layout a').removeClass("grid gridbox tiles tilesbox list listbox").addClass("hide");			
		}
	}
	
	jQuery(document).on( 'click', ".view-layout a", function(){
		 if( ! $(this).hasClass('active')) {
			var listiclelayout = this.className;
			show_listicle_layout(listiclelayout);
		}
				
	});
			
	/* used in Home-04.html */
	if( document.getElementById("sidenavbar") ){
		$('#dismiss').on('click', function () {
			$('#sidenavbar').toggleClass('active');
		});
		 $('#sidenavbarCollapse').on('click', function () {
			$('#sidenavbar').toggleClass('active');
			$('.collapse.in').toggleClass('in');
			$('a[aria-expanded=true]').attr('aria-expanded', 'false');
		});
	}
	
	
	/*
	 * jquery.fancybox.js
	 */
	 if($('a').hasClass('various')){
	
		jQuery(".various").fancybox({
			maxWidth	: 320,
			maxHeight	: 600,
			fitToView	: false,
			width		: '50%',
			height		: '90%',
			autoSize	: false,
			closeClick	: false,
			openEffect	: 'none',
			closeEffect	: 'none'
		});
	 }
	
	
	
	/*
	 * owl.carousel.min.js
	 */
	 if($('div').hasClass('owl-carousel')){
		 
		/* Used in : home-01.html, */
		jQuery('.one-item').owlCarousel({
			margin: 0,
			autoplay:true,
			autoplayHoverPause:true,
			autoplayTimeout:6000,
			nav: true,
			dots: true,
			loop: true,
			responsive: {
				0: { items: 1 }
			}
		});
		
		/* Used in : home-05.html, */
		jQuery('.two-item').owlCarousel({
			margin:30,
			autoplay:true,
			autoplayHoverPause:true,
			autoplayTimeout:6000,
			nav: true,
			dots: true,
			loop: true,
			responsive: {
                768: { items: 2 },
				0: { items: 1 }
			}
		});
		
		/* Used in : home-01.html, */				
		jQuery('.four-item').owlCarousel({
                margin:30,
 				autoplay:true,
				autoplayHoverPause:true,
	    		autoplayTimeout:4000,
				nav: false,
				dots: true,
                loop: true,
                responsive: {
                  0: { items: 1 },
                  420: { items: 2 },
                  768: { items: 3 },
                  992: { items: 4 },
                }
		});
	
		/* Used in : home-01.html, */	
		jQuery('.six-item').owlCarousel({
			margin:30,
			autoplay:true,
			autoplayHoverPause:true,
			autoplayTimeout:4000,
			nav: true,
			dots: true,
			loop: true,
			responsive: {
				0: { items: 1 },
				380: { items: 2 },
				576: { items: 3 },
				768: { items: 4 },
				992: { items: 5 },
				1200: { items: 6 }
			}
		});
		
		/* Used in : home-06.html, */	
		jQuery('.verticle-slider').owlCarousel({
			
		  	loop: false,
			mouseDrag: false,
			touchDrag: false,
			pullDrag: false,
			rewind: true,
			
			margin:0,
			autoplay:true,
			autoplayHoverPause:true,
			autoplayTimeout:4000,
			nav: true,
			dots: true,
			responsive: {
				0: { items: 2 },
				360: { items: 2 },
				480: { items: 3 },
				576: { items: 4 },
				768: { items: 4 },
				992: { items: 5 },
				1200: { items: 6 }
			}
		});	
		
		
		
		/* Used in : listing-detail-02.html, */			
		var bigimage = jQuery("#big");
		var thumbs = jQuery("#thumbs");
		//var totalslides = 10;
		var syncedSecondary = true;
	
	  	bigimage.owlCarousel({
			items: 1,
			slideSpeed: 2000,
			nav: true,
			autoplay: true,
			dots: false,
			loop: true,
			responsiveRefreshRate: 200,
			navText: [
			  '<i class="fa fa-arrow-left" aria-hidden="true"></i>',
			  '<i class="fa fa-arrow-right" aria-hidden="true"></i>'
			]
		}).on("changed.owl.carousel", syncPosition);
	
	  	thumbs.on("initialized.owl.carousel", function() {
			thumbs.find(".owl-item").eq(0).addClass("current");
	    }).owlCarousel({
			items: 7,
			dots: true,
			nav: false,
			smartSpeed: 200,
			slideSpeed: 500,
			slideBy: 7,
			responsiveRefreshRate: 100
	  	}).on("changed.owl.carousel", syncPosition2);
	
	  function syncPosition(el) {
		//if loop is set to false, then you have to uncomment the next line
		//var current = el.item.index;
	
		//to disable loop, comment this block
		var count = el.item.count - 1;
		var current = Math.round(el.item.index - el.item.count / 2 - 0.5);
	
		if (current < 0) {
		  current = count;
		}
		if (current > count) {
		  current = 0;
		}
		//to this
		thumbs.find(".owl-item").removeClass("current").eq(current).addClass("current");
		var onscreen = thumbs.find(".owl-item.active").length - 1;
		var start = thumbs.find(".owl-item.active").first().index();
		var end = thumbs.find(".owl-item.active").last().index();
	
		if (current > end) {
		  thumbs.data("owl.carousel").to(current, 100, true);
		}
		if (current < start) {
		  thumbs.data("owl.carousel").to(current - onscreen, 100, true);
		}
	  }
	
	  function syncPosition2(el) {
		if (syncedSecondary) {
		  var number = el.item.index;
		  bigimage.data("owl.carousel").to(number, 100, true);
		}
	  }
	
	  thumbs.on("click", ".owl-item", function(e) {
		e.preventDefault();
		var number = jQuery(this).index();
		bigimage.data("owl.carousel").to(number, 300, true);
	  });		
		
	
 	}/* $('div').hasClass('owl-carousel') == end */
	
	
	/*
	 * jquery-mTab-min.js
	 * Used in : listing-detail-03.html, listing-detail-04.html, listing-detail-05.html
	 */
	if( document.getElementById("responsiveTabs") ){	
	
		var accordTabScreen = 620;
		if( document.getElementById("payment-settings") ){	
			accordTabScreen = 768;
		}
		/*
		var accordTabScreen = 768;
		if( document.getElementById("has-sidebar") ){	
			accordTabScreen = 992;
			if( screen.width <= 768 ){
				accordTabScreen = 576;
			}  
		}
		*/
		jQuery('.responsiveTabs').mTab({
			 navigation: ".nav-tabs",
			container: ".tab-content",
			activeTab: 1,
			activeClass: "active",
			scrollOffset: false,
			accordScreen: accordTabScreen,
			toggleClose: true,
			animation: false,
			openWithUrl: true,
			callbackonclick:  function() {  },
			callback: function() {  },
		});
		
	}/* responsiveTabs == end */
	
	/*
	 * jQuery-plugin-progressbar.js
	 * used in dashboard.html
	 */
	 if($('div').hasClass('progress-bar-circle')){		
    	$(".progress-bar-circle").loading();
	 }
	 
	if( document.getElementById("counter") ){	
		$(window).scroll(function() {
	
			var hT = $('#counter').offset().top,
				hH = $('#counter').outerHeight(),
				wH = $(window).height(),
				wS = $(this).scrollTop();
		   // console.log((hT - wH), wS);
			if (wS > (hT + hH - wH)) {
				$('.count-up').each(function() {
					$(this).prop('Counter', 0).animate({
						Counter: $(this).text()
					}, {
						duration:8000,
						easing: 'swing',
						step: function(now) {
							$(this).text(Math.ceil(now));
						}
					});
				}); {
					$('.count-up').removeClass('count-up').addClass('counted');
				};
			}
		});
	}
	
});/* document-ready == end*/
	
/* when slider-js set on TOP(above "document-ready" )  conflicts with repeatetorform */	
if( document.getElementById("price") ){
	jQuery("#price").slider({});
}
if( document.getElementById("bedrooms") ){
	jQuery("#bedrooms").slider({});
}
if( document.getElementById("bathrooms") ){
	jQuery("#bathrooms").slider({});
}
if( document.getElementById("garages") ){
	jQuery("#garages").slider({});
}
