from django.db import models

# Create your models here.

class Friend(models.Model):
    id = models.AutoField(primary_key=True)

    user_id = models.IntegerField()

    follow_id = models.IntegerField()

    class Meta:
        db_table = 'friend'