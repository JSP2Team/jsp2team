function moduleVideoRender(moduleId = '', videoListItem, videoIndex) {    
    let isAutoPlay = videoListItem.find('[name="auto_play"]').prop("checked");
    let isLoop = videoListItem.find('[name="loop"]').prop("checked");
    let isMute = videoListItem.find('[name="mute"]').prop("checked");
    
    let sourceVal = videoListItem.find('.iframe_source').val();    
    let youtubeCode = '';		
    if (sourceVal.match(/v=/)) {
        youtubeCode = sourceVal.split('v=')[1];
    } else {
        youtubeCode = sourceVal.split('https://')[1].split('/')[1];
    }

    let url = youtubeCode;
    if (isAutoPlay || isLoop || isMute) {
        url += '?';        
        
        if (isAutoPlay) {
            url += 'autoplay=1&';
        }
        
        if (isLoop) {
            url += 'loop=1&playlist=' + youtubeCode + '&';
        }
        
        if (isMute) {
            url += 'mute=1&';
        }

        url = url.slice(0, -1);       
    }

    let youtubeThumbUrl = 'https://img.youtube.com/vi/' + youtubeCode + '/0.jpg';
	videoListItem.find( '.videoThumImg' ).attr('src', youtubeThumbUrl);

	let html = '<iframe src="https://www.youtube.com/embed/' + url + '" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>';
    
    let moduleID = targetSelector(moduleId);
	let moduleSelector = $(moduleID);
    moduleSelector.find('.youtube_inner').eq(videoIndex).html(html);
}


