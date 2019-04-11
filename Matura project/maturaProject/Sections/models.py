from django.db import models

# Create your models here.
class Sections(models.Model):
    section_name = models.CharField(max_length=128)
    section_desc = models.CharField(max_length=128)
