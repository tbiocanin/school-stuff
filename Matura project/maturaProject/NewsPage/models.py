from django.db import models

# Create your models here.
class News(models.Model):
    news_heading = models.CharField(max_length=128)
    date = models.CharField(max_length=128)
    text = models.CharField(max_length=10000)
