from django.contrib import admin
from apps.listas.models import Lists, Book, Gender
from apps.autor.models import Autor


@admin.register(Book)
class BookAdmin(admin.ModelAdmin):
    list_display = ('name', 'author')
    search_fields = ['name']
    list_per_page = 20  # No of records per page

    # Order dropdown alphabetically
    def get_form(self, request, obj=None, **kwargs):
        form = super(BookAdmin, self).get_form(request, obj, **kwargs)
        form.base_fields['author'].queryset = Autor.objects.all().order_by('surname')

        return form


@admin.register(Lists)
class ListsAdmin(admin.ModelAdmin):
    list_per_page = 20  # No of records per page


@admin.register(Gender)
class GenderAdmin(admin.ModelAdmin):
    list_per_page = 20  # No of records per page
