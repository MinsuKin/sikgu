jQuery(document).ready(function($){
	//on mobile - open/close primary navigation clicking/tapping the menu icon

	//upload videos if not on mobile
	uploadVideo($('.post-content'));

	function uploadVideo(container) {
		container.find('.cd-bg-video-wrapper').each(function(){
			var videoWrapper = $(this);
			if( videoWrapper.is(':visible') ) {
				// if visible - we are not on a mobile device 
				var	videoUrl = videoWrapper.data('video'),
					video = $('<video loop><source src="'+videoUrl+'.mp4" type="video/mp4" /><source src="'+videoUrl+'.webm" type="video/webm" /></video>');
				video.appendTo(videoWrapper);
				// play video if first slide
				if(videoWrapper.parents('.post-image-wrapper.selected').length > 0) video.get(0).play();
			}
		});
	}

	function checkVideo(hiddenSlide, container, n) {
		//check if a video outside the viewport is playing - if yes, pause it
		if( hiddenSlide.find('video').length > 0 ) hiddenSlide.find('video').get(0).pause();

		//check if the select slide contains a video element - if yes, play the video
		if( container.children('li').eq(n).find('video').length > 0 ) container.children('li').eq(n).find('video').get(0).play();
	}


});