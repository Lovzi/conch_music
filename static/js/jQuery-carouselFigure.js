/*
 说明： 在引入该文件前面必须先引入jQuery。在div中进行调用。$('#id').carouselFigure(imgs,status,time)
  imgs : 代表轮播的图片的相对地址。
  status： 是否显示左右按钮。默认不显示。传入 true 则显示。
  time： 代表轮播替换的时间。默认4000（4s）.
*/
;(function ($, window) {
    $.fn.carouselFigure = function(imgs,state,time) {
        $(this).append(' <div class="h-img-tab"><ul id="h-img-list"><li class="tab-con" style="opacity: 1"><span class="pic"><a href="#" style="background-image: url(' + imgs[0] + ')"></a></span></li>');
        for(var i = 1; i< imgs.length; i++){
            var str = '<li class="tab-con" style="opacity: 0"><span class="pic"><a href="#" style="background-image: url(' + imgs[i] + ')"></a></span></li>';
            $(this).find('#h-img-list').append(str);
        }
        $(this).find($('.h-img-tab')).append('</ul><div id="h-gb-tab" class="h-gb-tab"><a href="javascript:;" class="item2"></a>');
        for(var i = 1; i < imgs.length; i++){
            $(this).find($('.h-gb-tab')).append('<a href="javascript:;" class="item">')
        }
        var list = $('#h-img-list .tab-con');
        var container = $('.h-img-tab');
        var index = 1;
        var timer;
        var buttons = $('#h-gb-tab a');
        var total = imgs.length;
        var switchTime = time || 4000;
        container.mouseover(function () {
            stop();
        });
        container.mouseout(function () {
            play();
        });
        for (var i = 0; i < buttons.length; i++) {
            (function (i) {
                buttons[i].onclick = function () {
                    index = i + 1;
                    imgShow();
                    buttonsShow();
                }
            })(i)
        }
        if(state){
            $(this).find($('.h-img-tab')).append('</div><a href="javascript:;" id="prev" class="arrow">&lt;</a><a href="javascript:;" id="next" class="arrow">&gt;</a></div>');
            var prev = $('#prev');
            var next = $('#next');
            var stateNext = true;
            var statePrev = true;
            prev.click(function () {
                if (statePrev) {
                    index -= 1;
                    if (index < 1) {
                        index = total;
                    }
                    imgShow();
                    buttonsShow();
                    statePrev = false;
                    setTimeout(function () {
                        statePrev = true;
                    }, 500)
                }
            });
            next.click(function () {
                if (stateNext) {
                    index += 1;
                    if (index > total) {
                        index = 1
                    }
                    imgShow();
                    buttonsShow();
                    stateNext = false;
                    setTimeout(function () {
                        stateNext = true
                    }, 500)
                }
            });
        }
        play = function () {
            timer = setInterval(function () {
                index += 1;
                if (index > total) {
                    index = 1
                }
                imgShow();
                buttonsShow();
            }, switchTime)
        };
        stop = function () {
            clearInterval(timer);
        };
        imgShow = function () {
            for (var i = 0; i < list.length; i++) {
                if (list.eq(i).css('opacity') == 1) {
                    list.eq(i).fadeTo(1000, 0);
                }
            }
            list.eq(index - 1).fadeTo(1000, 1);
        };
        buttonsShow = function() {
            for (var i = 0; i < buttons.length; i++) {
                if (buttons[i].className == "item2") {
                    buttons[i].className = "item";
                }
            }
            buttons[index - 1].className = "item2";
        };
        play();
    }
}(jQuery, window));


//
// window.onload = function(){
//     alert('hello word')
// // }