from django.db import models

# Create your models here.
class Autor(models.Model):
    name = models.CharField(max_length=50)
    surname = models.CharField(max_length=50)
    birthdate = models.DateField(null=True, blank=True)
    country = models.CharField(max_length=50, null=True, blank=True)
    man = models.BooleanField()
    nobel = models.BooleanField()

    def __str__(self):
        return f"{self.surname}, {self.name}"
