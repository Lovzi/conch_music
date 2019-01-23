from django.urls import path
from . import views

app_name = 'accounts'
urlpatterns = [
    path(r'login/', views.do_login, name='login'),
    path(r'register/', views.do_register, name='register'),
    # path(r'logout/', views.do_logout, name='logout')
]