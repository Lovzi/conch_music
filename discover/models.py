from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.





class MusicFavourite(models.Model):
    favourite_id = models.AutoField(primary_key=True)

    user_id = models.CharField(max_length=20)

    Fmusic_id = models.CharField(max_length=50)

    class Meta:
        db_table = 'music_favourite'



class MusicList(models.Model):
    list_id = models.AutoField(primary_key=True)

    music_name = models.CharField(max_length=50)

    music_path = models.CharField(max_length=100)

    lrc_path = models.CharField(max_length=100)

    singer = models.CharField(max_length=15)

    length_time = models.CharField(max_length=5)

    music_pic = models.CharField(max_length=100)

    play_No = models.IntegerField(default=0)

    class Meta:
        db_table = 'music_list'

        ordering = ['list_id']




