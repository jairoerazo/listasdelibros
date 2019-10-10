from django.db import models
from apps.autor.models import Autor
from django.conf import settings


# Create your models here.
class Gender(models.Model):
    name = models.CharField(max_length=200)
    description = models.CharField(max_length=500, null=True, blank=True)

    def __str__(self):
        return self.name


class Lists(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField(max_length=500, null=True, blank=True)
    source = models.CharField(max_length=200, null=True, blank=True)
    url = models.URLField(max_length=200, null=True, blank=True)
    gender = models.ForeignKey(Gender, null=True, blank=True, on_delete=models.SET_NULL)
    likes = models.ManyToManyField(settings.AUTH_USER_MODEL, blank= True)

    def get_absolute_url(self):
        return "/list_content/{}/".format(self.id)

    def __str__(self):
        return self.name


class Book(models.Model):
    name = models.CharField(max_length=200)
    description = models.CharField(max_length=500, null=True, blank=True)
    year = models.CharField(max_length=50, null=True, blank=True)
    language = models.CharField(max_length=50, null=True, blank=True)
    gender = models.ForeignKey(Gender, null=True, blank=True, on_delete=models.SET_NULL)
    author = models.ForeignKey(Autor, null=True, blank=True, on_delete=models.SET_NULL)
    list = models.ManyToManyField(Lists)
    # User's list
    userlist = models.ManyToManyField(settings.AUTH_USER_MODEL, blank=True)

    def __str__(self):
        return self.name
