var buscador = '<form class="form-search"><span class="input-icon"><input type="text" id="search" class="nav-search-input" name="search" autocomplete="off" placeholder="Buscar..." /><i class="icon-search nav-search-icon"></i></span><button type="submit" id="LoadRecordsButton" class="hide"></button></form>';
jQuery(function($) {'use strict',

	//#main-slider
	$(function(){
		$('#main-slider.carousel').carousel({
			interval: 8000
		});
	});


	// accordian
	$('.accordion-toggle').on('click', function(){
		$(this).closest('.panel-group').children().each(function(){
		$(this).find('>.panel-heading').removeClass('active');
		 });

	 	$(this).closest('.panel-heading').toggleClass('active');
	});

	//Initiat WOW JS
	new WOW().init();

	// portfolio filter
	$(window).load(function(){'use strict';
		var $portfolio_selectors = $('.portfolio-filter >li>a');
		var $portfolio = $('.portfolio-items');
		$portfolio.isotope({
			itemSelector : '.portfolio-item',
			layoutMode : 'fitRows'
		});
		
		$portfolio_selectors.on('click', function(){
			$portfolio_selectors.removeClass('active');
			$(this).addClass('active');
			var selector = $(this).attr('data-filter');
			$portfolio.isotope({ filter: selector });
			return false;
		});
	});

	// Contact form
	var form = $('#main-contact-form');
	form.submit(function(event){
		event.preventDefault();
		var form_status = $('<div class="form_status"></div>');
		$.ajax({
			url: $(this).attr('action'),

			beforeSend: function(){
				form.prepend( form_status.html('<p><i class="fa fa-spinner fa-spin"></i> Email is sending...</p>').fadeIn() );
			}
		}).done(function(data){
			form_status.html('<p class="text-success">' + data.message + '</p>').delay(3000).fadeOut();
		});
	});

	
	//goto top
	$('.gototop').click(function(event) {
		event.preventDefault();
		$('html, body').animate({
			scrollTop: $("body").offset().top
		}, 500);
	});	

	//Pretty Photo
	$("a[rel^='prettyPhoto']").prettyPhoto({
		social_tools: false
	});	
});

var jtableCreate=function(title,table,option){
$('#TableContainer').jtable({
            title: title,
            paging: true,
        	sorting: true,
            actions: {
                listAction: table+'/allForTable',
                deleteAction: table+'/eliminar',
                createAction: table+'/nuevo',
                updateAction: table+'/actualizar'
                //deleteAction: '/GettingStarted/DeletePerson'
            },
            
        toolbar: {
            items:[
                {
                    cssClass: 'buscador',
                    text: buscador
                }
               ]
        },
            fields: option
        });
 $('#LoadRecordsButton').click(function (e) {
        e.preventDefault();
        $('#TableContainer').jtable('load', {
            search: $('#search').val()
        });
    });

    $('#LoadRecordsButton').click();

 }
  $('.input-mask-date').mask('99/99/9999');
  $('.input-mask-phone').mask('(999) 999-999');

  $('#editor2').css({'height':'200px'}).ace_wysiwyg({
		toolbar_place: function(toolbar) {
			return $(this).closest('.widget-box')
			       .find('.widget-header').prepend(toolbar)
				   .find('.wysiwyg-toolbar').addClass('inline');
		},
		toolbar:
		[
			'bold',
			{name:'italic' , title:'Change Title!', icon: 'ace-icon fa fa-leaf'},
			'strikethrough',
			null,
			'insertunorderedlist',
			'insertorderedlist',
			null,
			'justifyleft',
			'justifycenter',
			'justifyright'
		],
		speech_button: false
	});