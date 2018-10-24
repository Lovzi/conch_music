from django import forms

class LoginForm(forms.Form):
    user_phone   = forms.CharField(label='手机号',  widget=forms.TextInput(
        attrs={'id':'username', "placeholder": "Username", "required": "required",}),
        max_length=50,error_messages={"required": "username不能为空",})
    pwd = forms.CharField(label='密码', widget=forms.PasswordInput(
        attrs={'id':'password', "placeholder": "Password", "required": "required",}),
        max_length=20,error_messages={"required": "password不能为空",})

class RegisterForm(forms.Form):
    user_phone = forms.CharField(widget=forms.TextInput(
        attrs={"placeholder": "Username", "required": "required",
               'id': 'username', 'name': 'username'}),
        max_length=50,error_messages={"required": "username不能为空",}, label='手机号')
    pwd = forms.CharField(widget=forms.PasswordInput(
        attrs={"placeholder": "Password", "required": "required",
               'id': 'password', 'name': 'password'}),
        max_length=16,error_messages={"required": "password不能为空"}, label='密码')
    re_pwd = forms.CharField(widget=forms.PasswordInput(
        attrs={'id': 're_password', 'name': 're_password',
               'placeholder': 'Re_Password', 'required': 'required'}),
        max_length=16, error_messages={"required": "re_password不能为空",}, label='确认密码')

class SearchForm(forms.Form):
    music = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'search music'}))


class UserForm(forms.Form):
    image = forms.FileField()

