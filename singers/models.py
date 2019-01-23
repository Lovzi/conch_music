from django.db import models

# Create your models here.


class Singer(models.Model):
    singer_id = models.AutoField(primary_key=True)
    singer_name = models.CharField(max_length=30)
    picture = models.CharField(max_length=264, default="")
    introduce = models.TextField(default='')
    fanNo = models.IntegerField(default=0)

    class Meta:
        db_table = 'singer'
