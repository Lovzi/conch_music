from django.shortcuts import render, render_to_response
from django.http import  HttpResponse
# Create your views here.
from discover.models import *

def my_music(request):
    # music_list
    user_id = request.GET.get('user', False)
    if user_id:
        user = User.objects.filter(user_id=user_id)[0]
    elif request.session.get('user_id',False):
        user_id = request.session['user_id']
        user = User.objects.filter(user_id=user_id)[0]
    else:
        return render(request, 'my_music/my_music.html', {'this_user': None, 'that_user': None })
    sheet_id = request.GET.get('sheet',None)
    if not sheet_id:
        favourite = MusicFavourite.objects.filter(user_id=user_id)
        music_list = []
        for f in range(len(favourite)):
            music_list.append(MusicList.objects.get(list_id=favourite[f].Fmusic_id))
        return render(request, 'my_music/my_music.html', {'that_user': user,
                                                          'this_user': request.session,
                                                          'sheet_name': '喜欢',
                                                          'music_list': music_list})
    else:
        music_sheet_list = MusicSheet.objects.filter(sheet_id=sheet_id).values('user_id')
        music_list = []
        if music_sheet_list:
            # for music_sheet in music_sheet_list:
            music_list = MusicList.objects.filter(list_id__in=music_sheet_list)
        sheet_name = UserSheet.objects.filter(sheet_id=sheet_id)[0].sheet_name
        return render(request, 'my_music/my_music.html', {'that_user': user,
                                                          'this_user': request.session,
                                                          'sheet_name': sheet_name ,
                                                          'music_list': music_list})


def attention(request, singer_id=None):
    user_id = request.GET.get('user', False)
    if not user_id:
        user_id = request.session.get('user_id', None)
    user = User.objects.filter(user_id=user_id)[0]
    singer_id_list = Friend.objects.filter(user_id = user_id, follow_id__lt=1000000).values('follow_id')
    # singer_list = []
    # for singer_id in singer_id_list:
    singer_list = append(SingerInfo.objects.filter(singer_id=singer_id.follow_id)[0])
    return render(request, 'my_music/focus.html', {'singer_list': singer_list,
                                                   'this_user': request.session,
                                                   'that_user':user})


def focus_user(request):
    user_id = request.GET.get('user', False)
    if not user_id:
        user_id = request.session.get('user_id', None)
    user = User.objects.filter(user_id=user_id)[0]
    user_id_list = Friend.objects.filter(user_id = user_id, follow_id__gt=1000000)
    user_list = []
    for use_id in user_id_list:
        user_list.append(User.objects.filter(user_id = use_id.follow_id)[0])
    return render(request, 'my_music/focus_user.html', {'user_list':user_list,
                                                        'that_user':user,
                                                        'this_user': request.session})


def fans(request):
    user_id = request.GET.get('user', False)
    if not user_id:
        user_id = request.session.get('user_id', None)
    user = User.objects.filter(user_id=user_id)[0]
    fan_id_list= Friend.objects.filter(follow_id=user_id)
    fan_list = []
    for f in fan_id_list:
        fan_list.append(User.objects.filter(user_id=f.user_id)[0])
    return render(request, 'my_music/fans.html', {'list': fan_list,
                                                  'that_user':user,
                                                  'this_user': request.session,})



def my_song_menu(request):
    user_id = request.GET.get('user', False)
    if not user_id:
        user_id = request.session.get('user_id', None)
    user = User.objects.filter(user_id=user_id)[0]
    sheet_list = UserSheet.objects.filter(user_id=user_id)
    like_count = MusicFavourite.objects.filter(user_id=user_id).count()
    return render(request, 'my_music/my_song_menu.html', {'like_count':like_count,
                                                          'sheet_list': sheet_list,
                                                          'that_user':user,
                                                          'this_user': request.session})



def new_sheet(request):
    user_id = request.session.get('user_id', None)
    sheet_name = request.POST.get('sheet_name', None)
    if sheet_name or sheet_name!='null':
        UserSheet.objects.create(sheet_name=sheet_name, user_id=user_id)
    user_list = UserSheet.objects.filter(user_id=user_id)
    return render(request, 'my_music/sheet_list.html', {'sheet_list': user_list})


def del_sheet(request):
    sheet_id = request.POST.get('sheet_id', None)
    user_id = request.session.get('user_id', None)
    if sheet_id:
        UserSheet.objects.filter(sheet_id=sheet_id).delete()
        print('删除成功')
    sheet_list = UserSheet.objects.filter(user_id=user_id)
    return render(request, 'my_music/sheet_list.html', {'sheet_list': sheet_list})


def add_to_sheet(request):
    if request.method == 'GET':
        music_id = request.GET.get('music_id', None)
        user_id = request.session.get('user_id', None)
        if not user_id:
            return HttpResponse('请先登录')
        else:
            sheet_list = UserSheet.objects.filter(user_id=user_id);
            return render_to_response('add_to_sheet.html', {'sheet_list': sheet_list, 'music_id':music_id})
    else:
        music_id = request.POST.get('music_id', None)
        sheet_id = request.POST.get('sheet_id', None)
        if sheet_id and music_id:
            if sheet_id == '0':
                user_id = request.session.get('user_id')
                if user_id and  not MusicFavourite.objects.filter(user_id=user_id, Fmusic_id=music_id):
                    MusicFavourite.objects.create(user_id=user_id, Fmusic_id=music_id)
                return HttpResponse('添加成功')
            elif not MusicSheet.objects.filter(sheet_id=sheet_id, music_id=music_id):
                MusicSheet.objects.create(sheet_id=sheet_id, music_id=music_id)
                sheet = UserSheet.objects.filter(sheet_id=sheet_id)
                sheet_num = sheet[0].sheet_num + 1
                sheet.update(sheet_num=sheet_num)
                return HttpResponse('添加成功')
            return HttpResponse('歌曲已存在')
        else:
            return HttpResponse('收藏失败')

def del_music(request):
    music_id = request.POST.get('music')
    sheet = request.POST.get('sheet')
    music_list = []
    if sheet == '喜欢':
        user_id = request.session.get('user_id')
        MusicFavourite.objects.filter(user_id=user_id,Fmusic_id=music_id).delete()
        favourite_list = MusicFavourite.objects.filter(user_id=user_id)
        for favourite in favourite_list:
            music_list.append(MusicList.objects.filter(list_id=favourite.Fmusic_id)[0])
    else:
        sheet_id = UserSheet.objects.filter(sheet_name=sheet)[0].sheet_id
        MusicSheet.objects.filter(sheet_id=sheet_id, music_id=music_id).delete()
        music_id_list = MusicSheet.objects.filter(sheet_id=sheet_id)
        for music_id in music_id_list:
            music_list.append(MusicList.objects.filter(list_id=music_id.music_id)[0])
    return render_to_response('my_music/music.html', {'music_list': music_list, 'sheet_name': sheet})
