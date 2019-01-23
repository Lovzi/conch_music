from django.shortcuts import render, redirect
from django.urls import reverse
from rest_framework.renderers import JSONRenderer
from rest_framework.parsers import JSONParser
from django.views.decorators.csrf import csrf_exempt
from . import forms
from .models import User
from .serializers import  UserSerializer
from rest_framework.decorators import api_view

# Create your views here.


def do_login(request):
    if request.method == 'POST':
        login_form = forms.LoginForm(request.POST)
        if login_form.is_valid():
            user_phone = login_form.cleaned_data['user_phone']
            pwd = login_form.cleaned_data['pwd']
            # user = authenticate(user_phone=username, pwd=password)
            # if user is not None:
            #     return redirect(reverse('user', args=[user.user_id]))
            # else:
            #     return HttpResponse('登录失败')
            user = User.objects.filter(user_phone=user_phone, pwd=pwd)
            if user:
                request.session['user_id'] = user[0].user_id
                request.session['user_nickname'] = user[0].user_nickname
                request.session['image'] = user[0].image
                request.session['attention'] = user[0].attention
                request.session['Fan'] = user[0].Fan
                if request.session.get('previous_page', '/')[-10:] == '/register/':
                    return redirect('/')
                return redirect(request.session.get('previous_page','/'))
            else:
                return render(request, 'accounts/login.html', {'login_form':login_form, 'error': '用户名密码不一致'})
        else:
            error_message = login_form.errors
            return render(request, 'accounts/login.html', {'login_form': login_form, 'error': error_message})
    else:
        form = forms.LoginForm()
        request.session['previous_page'] = request.META.get('HTTP_REFERER', '/')
        return render(request, 'accounts/login.html', {'login_form': form})


# def do_register(request):
#     if request.method == 'POST':
#         register = forms.RegisterForm(request.POST)
#         if register.is_valid():
#             user_phone = register.cleaned_data['user_phone']
#             password = register.cleaned_data['pwd']
#             re_password = register.cleaned_data['re_pwd']
#             if password != re_password:
#                 error = '两次输入密码不一致'
#                 login_form = forms.LoginForm()
#                 return render(request, 'accounts/register.html', {'register_form': register , 'error':error})
#             # user = authenticate(user_phone=username, pwd=password)
#             else:
#                 User.objects.create(user_phone=user_phone, pwd=password, user_nickname=user_phone)
#                 return redirect(reverse('login'))
#         else:
#             return render(request, 'accounts/register.html', {'register_form': register})
#     else:
#         register = forms.RegisterForm()
#         return render(request, 'accounts/register.html', {'register_form': register})


@csrf_exempt
@api_view(['GET', 'POST'])
def do_register(request):
    if request.method == 'GET':
        register = forms.RegisterForm()
        return render(request, 'accounts/register.html', {'register_form': register})
    else:
        serialzer = UserSerializer(data=request.data)
        if serialzer.is_valid():
            serialzer.save()
            return redirect(reverse('accounts:login'))
        else:
            register = forms.RegisterForm(request.data)
            return render(request, 'accounts/register.html', {'register_form': register , 'error':serialzer.errors})

def do_logout(request):
    # del request.session['user_nickname']
    request.session.flush()
    return redirect('/')
