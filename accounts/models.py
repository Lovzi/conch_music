from django.db import models

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