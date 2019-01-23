# Generated by Django 2.1.4 on 2019-01-23 06:35

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='MusicFavourite',
            fields=[
                ('favourite_id', models.AutoField(primary_key=True, serialize=False)),
                ('user_id', models.CharField(max_length=20)),
                ('Fmusic_id', models.CharField(max_length=50)),
            ],
            options={
                'db_table': 'music_favourite',
            },
        ),
        migrations.CreateModel(
            name='MusicList',
            fields=[
                ('list_id', models.AutoField(primary_key=True, serialize=False)),
                ('music_name', models.CharField(max_length=50)),
                ('music_path', models.CharField(max_length=100)),
                ('lrc_path', models.CharField(max_length=100)),
                ('singer', models.CharField(max_length=15)),
                ('length_time', models.CharField(max_length=5)),
                ('music_pic', models.CharField(max_length=100)),
                ('play_No', models.IntegerField(default=0)),
            ],
            options={
                'db_table': 'music_list',
                'ordering': ['list_id'],
            },
        ),
    ]
