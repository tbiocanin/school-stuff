# Generated by Django 2.1.5 on 2019-04-15 10:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('NewsPage', '0003_auto_20190411_2039'),
    ]

    operations = [
        migrations.AlterField(
            model_name='news',
            name='text',
            field=models.TextField(max_length=10000000),
        ),
    ]