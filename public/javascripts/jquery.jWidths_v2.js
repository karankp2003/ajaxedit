jQuery.fn.jWidths = function(options){
    var opts = $.extend({
        def_margin: 2,
        def_border: 2,
        def_columns: 3,
        ItemSelector: undefined
    }, options);
    var parentWidth = $(this).width();
    var ignoreItem = $(this).children().not(opts.ItemSelector);
    // alert(ignoreItem.length);
    var removeWidth = 0;
    if (opts.ItemSelector !== undefined) {
        if (ignoreItem.length > 1) {
            ignoreItem.each(function(){
                removeWidth = removeWidth + $(this).outerWidth();
            });
        }
        else {
            removeWidth = removeWidth + ignoreItem.outerWidth();
        }
        parentWidth = parentWidth - removeWidth;
    }
    var col_Iwidth = ((parentWidth - 0.5) / (opts.def_columns - ignoreItem.length) - opts.def_margin * 2 - opts.def_border * 2);
	
    $(this).children(opts.ItemSelector).css({
        'width': col_Iwidth + 'px',
        'margin-left': opts.def_margin + 'px',
        'margin-right': opts.def_margin + 'px',
        'border': opts.def_border + 'px' + ' solid ' + '#000',
    });
};
