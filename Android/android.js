var hist = [];
var startUrl = 'index.html';

$(document).ready(function() {
	loadPage(startUrl);
});

function loadPage(url) {
	$('body').append('<div id="progress">Loading ...</div>');
	
	scrollTo(0, 0);
	
	if (url == startUrl) {
		var element = ' #container';
	} else {
		var element = ' #content';
	}

	$('#container').load(url + ' #container', function() {
		var title = $('h2').html() || 'Hello';
		$('h1').html(title);
		$('h2').remove();
		
		// back button
		$('.leftButton').remove();
		hist.unshift({'url':url, 'title':title});
		if (hist.length > 1) {
			$('#header').append('<div class="leftButton">' + hist[1].title + '</div>');
			$('#header .leftButton').click(function() {
				var thisPage = hist.shift();
				var previousPage = hist.shift();
				loadPage(previousPage.url);
			});
		}
		
		hijackLinks();
	});
}

function hijackLinks() {
	$('#container a').click(function(e) {
		var url = e.target.href;
		if (url.match(/corneliusconcepts.com/)) {
			e.preventDefault();
			loadPage(url);
		}
	});
		
	$('#progress').remove();
}

/******************
if (window.innerWidth && window.innerWidth <= 480) { 
    $(document).ready(function(){
        $('#header ul').addClass('hide'); 
        $('#header').append('<div class="leftButton" onclick="toggleMenu()">Services</div>');
    }); 
    function toggleMenu() {
        $('#header ul').toggleClass('hide'); 
        $('#header .leftButton').toggleClass('pressed');
    }
}
***************/