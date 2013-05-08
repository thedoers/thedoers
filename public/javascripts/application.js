var basicURl = 'javascripts/vendor/'
yepnope([{
load: [ basicURl+'jquery.js',
					basicURl+'jquery.scrollTo.js',
					basicURl+'jquery-ui/ui/jquery.ui.core.js',
					basicURl+'jquery-ui/ui/jquery.ui.widget.js',
					basicURl+'jquery-ui/ui/jquery.ui.accordion.js',
					basicURl+'response.js'],
	complete: function(){
		Response.create({ mode: 'src',  prefix: 'src', breakpoints: [0,980] });
		yepnope([
			{
				test: Modernizr.mq('all and (max-width: 980px)'),
				yep: [basicURl+'toe/dist/toe.min.js','javascripts/320.js'],
				nope: ['javascripts/960.js']
			}	
			]);
		}
},{
	load: basicURl+'enquire/dist/enquire.min.js',
	complete: function(){
		enquire.register("all and (min-width:58.75em)", {
			deferSetup: true,
			match : function() {
				yepnope(['javascripts/960.js']);
			},
			unmatch : function() {
				yepnope([basicURl+'toe/dist/toe.min.js','javascripts/320.js']);
			}
		}).listen(); // note the `true`!
	}
}]);
