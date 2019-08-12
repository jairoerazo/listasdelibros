from django.contrib import admin
from apps.listas.models import Lists, Book, Gender

# Register your models here.
admin.site.register(Lists)
admin.site.register(Book)
admin.site.register(Gender)
