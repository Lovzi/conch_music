from django.db import models

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