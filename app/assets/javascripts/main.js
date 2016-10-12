'use strict';

$(document).ready(function() {
	svg4everybody();

	FastClick.attach(document.body);

	// Here insert modules scripts
	// Browsehappy
	(function() {
		$('.browsehappy').click(function() {
			$(this).slideUp();
		});
	})();
	
	
	// Parallax on main
	$(function(){
		if (document.documentElement.clientWidth > 800) {
			$('.fixed-bg-section_big').parallax({
				imageSrc: 'images/content/fixed-bg/1.jpg',
				bleed: 35,
				zIndex: 1
			});
	
			$('.fixed-bg-section_small').parallax({
				imageSrc: 'images/content/fixed-bg/2.jpg',
				bleed: 35,
				zIndex: 1
			});
		}
	});
	
	
	// Header
	(function() {
		var $header    = $('.header');
		var $headerTop = $header.find('.header__top');
		var $window    = $(window);
		var classAdded = false;
		function header() {
			if ($window.scrollTop() > 0) {
				if (classAdded === false) {
					$header.addClass('header_fixed');
				}
				classAdded = true;
			}
			else {
				$header.removeClass('header_fixed');
				classAdded = false;
			}
		}
	
		header();
	
		$window.scroll(header);
	})();
	
	
	// Massonry
	var $massonryContainer = $('.image-list__list');
	
	$massonryContainer.imagesLoaded( function() {
		$massonryContainer.masonry({
			itemSelector: '.image-list__item',
			columnWidth: '.image-list__item',
			percentPosition: true,
			gutter: 20
		});
	});
	
	// Lightgallery
	lightGallery(document.getElementById('lightgallery'));
	
	
	// Mobile menu
	(function() {
		$(".header__mobile-menu-trigger").click(function(){
			$(".page").toggleClass("page_menu_open");
		});
	
		$('.page__cover, .mobile-menu__close').on('click', function(event) {
			event.preventDefault();
			$('.page').removeClass('page_menu_open');
		});
	
	})();
	
	
	// Page slider
	var bottomPadding = $('.page-slider-item__info-block').height();
	
	if (screen.width <= '1020') {
		$('.page-slider-item__title-wrapper, .page-slider__counter').css({
			bottom: bottomPadding + 15
		});
	}
	
	var sliderClass = '.page-slider__slides';
	
	$(sliderClass).slick({
		arrows: true,
		autoplay: false,
		autoplaySpeed: 3000,
		pauseOnDotsHover: true,
		infinite: true,
		pauseOnHover: true,
		appendArrows: $('.page-slider__controls'),
		prevArrow: '<button type="button" data-role="none" class="page-slider__arrow page-slider__arrow_prev" aria-label="previous">Previous</button>',
		nextArrow: '<button type="button" data-role="none" class="page-slider__arrow page-slider__arrow_next" aria-label="next">Next</button>',
		responsive: [
			{
				breakpoint: 1020,
				settings: {
					arrows: false,
				}
			},
		]
	});
	
	var $slick = $(sliderClass).slick('getSlick');
	var slickCurrentSlide = 1;
	var slickSlideCount = $slick.slideCount;
	
	var $current = $('.page-slider-counter_current');
	var $total = $('.page-slider-counter_total');
	
	$(sliderClass).on('afterChange', function(event, slick, currentSlide, nextSlide){
		slickCurrentSlide = $slick.currentSlide + 1;
		slickSlideCount = $slick.slideCount;
	
		$current.text(slickCurrentSlide);
		$total.text(slickSlideCount);
	});
	

});
