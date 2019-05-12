# Generated by Django 2.2 on 2019-05-12 10:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user', '0002_user'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='email',
            field=models.EmailField(default='', max_length=254),
        ),
        migrations.AlterField(
            model_name='user',
            name='id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
    ]