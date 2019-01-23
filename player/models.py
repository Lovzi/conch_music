from django.db import models

# Create your models here.

class MusicHistory(models.Model):
    history_id = models.AutoField(primary_key=True)

    user_id = models.CharField(max_length=20)

    Hmusic_id = models.CharField(max_length=50)

    class Meta:
        db_table = 'music_history'