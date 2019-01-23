$(function () {
    $('.search_type li a').click(function () {
        let type = $(this).data('type');
        let search = $(this).data('search');
        let isAjax = 1;
        $.get('/search/', {'type':type, 'search':search, 'is_ajax':isAjax}, function (response, status, xhr) {
            $('.search-content').html(response);
        })
    })
})