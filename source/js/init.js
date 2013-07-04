Modernizr.load([
    //first test need for polyfill
    {
        test: window.matchMedia,
        nope: "/javascripts/vendor/media.match.min.js"
    },

    //and then load enquire
    //"/javascripts/site.js"
]);