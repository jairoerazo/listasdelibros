from django.contrib import admin
from apps.autor.models import Autor


@admin.register(Autor)
class AutorAdmin(admin.ModelAdmin):
    search_fields = ['name', 'surname']
    list_per_page = 20  # No of records per page
