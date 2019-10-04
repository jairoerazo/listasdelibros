from django.contrib import admin
from apps.listas.models import Lists, Book, Gender

@admin.register(Book)
class BookAdmin(admin.ModelAdmin):
    list_display = ('name', 'author')
    search_fields = ['name']
    list_per_page = 20  # No of records per page

@admin.register(Lists)
class ListsAdmin(admin.ModelAdmin):
    list_per_page = 20  # No of records per page

@admin.register(Gender)
class GenderAdmin(admin.ModelAdmin):
    list_per_page = 20  # No of records per page
