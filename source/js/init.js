Modernizr.load([
	//first test need for polyfill
	{
		test: window.matchMedia,
		nope: "/js/vendor/media.match.min.js"
	},

	//and then load enquire
	"/js/site.js"
]);