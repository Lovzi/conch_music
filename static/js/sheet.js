$(function () {
    $('.new-sheet').click(function () {
        let this_user = $(this).data('this_user');
        let that_user = $(this).data('that_user');
        if(that_user !== this_user){
            let myWindow = $('.windows');
            myWindow.find('span').html('只有主人才能创建歌单哦');
            myWindow.css('display', 'block');
            setTimeout(function () {
                myWindow.css('display', 'none');
            },1000)
        }
        else{
            let sheetName = prompt();
            if(sheetName && sheetName.replace(' ', '')){
            userId = $(this).data('user_id');
            $.post('/my_music/new_sheet/', {'sheet_name':sheetName, 'user':userId} ,function(response,status,xhr) {
                $('.sheet-list').html(response);
            })
            }
        }

    });
});
