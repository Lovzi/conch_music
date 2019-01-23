"""conch_music URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import include
from django.contrib import admin
from django.urls import path

from discover import views
from my_music import views as music_views
urlpatterns = [
    path(r'', views.index, name='index'),
    path(r'search/', views.search, name='search'),
    path(r'add_to_sheet/', music_views.add_to_sheet),
    # url(r'^user/(?P<user_id>\d+)/$', views.user, name='user'),
    path(r'discover/', include('discover.urls', namespace='discover')),
    path(r'my_music/', include('my_music.urls', namespace='my_music')),
    path(r'player/', include('player.urls', namespace='player')),
    path(r'admin/', admin.site.urls)
]
