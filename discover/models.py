from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.

sex_choices = (
    ('男', '男'),
    ('女', '女'),
    ('保密', '保密')
)


class User(models.Model):
    user_id = models.AutoField(primary_key=True)

    user_phone = models.CharField(max_length=11, unique=True)

    user_nickname = models.CharField(max_length=20, unique=True)

    pwd = models.CharField(max_length=16)

    sex = models.CharField(
        max_length=2, choices=sex_choices, default=sex_choices[2][1])

    birthday = models.CharField(max_length=30, default='1770-01-01')

    email = models.CharField(max_length=30, default='')

    attention = models.IntegerField(default=0)

    Fan = models.IntegerField(default=0)

    image = models.CharField(max_length=50, default='user_pic/default/user.jpg')

    class Meta:
        db_table = 'user'


class Friend(models.Model):
    id = models.AutoField(primary_key=True)

    user_id = models.IntegerField()

    follow_id = models.IntegerField()

    class Meta:
        db_table = 'friend'


class MusicFavourite(models.Model):
    favourite_id = models.AutoField(primary_key=True)

    user_id = models.CharField(max_length=20)

    Fmusic_id = models.CharField(max_length=50)

    class Meta:
        db_table = 'music_favourite'


class MusicHistory(models.Model):
    history_id = models.AutoField(primary_key=True)

    user_id = models.CharField(max_length=20)

    Hmusic_id = models.CharField(max_length=50)

    class Meta:
        db_table = 'music_history'


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


class SingerInfo(models.Model):
    singer_id = models.AutoField(primary_key=True)

    singer_name = models.CharField(max_length=15)

    singer_pic = models.CharField(max_length=50)

    singer_text = models.TextField()

    # fanNo = models.IntegerField()

    class Meta:
        db_table = 'singer_info'


class UserSheet(models.Model):
    sheet_id = models.AutoField(primary_key=True)

    sheet_name = models.CharField(max_length=20)

    user_id = models.IntegerField()

    # sheet_num = models.IntegerField(default=0)

    # sheet_pic = models.CharField(max_length=100, default='/images/default_music_pic.png')

    class Meta:
        db_table = 'user_sheet'


class MusicSheet(models.Model):
    id = models.AutoField(primary_key=True)

    sheet_id = models.IntegerField()

    music_id = models.IntegerField()


    class Meta:
        db_table = 'music_sheet'
