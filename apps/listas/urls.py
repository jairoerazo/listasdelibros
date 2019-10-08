from django.urls import path
from . import views
from apps.listas.views import (
    IndexLists,
    ListContent,
    ListGender,
    LikeList,
    AddBook
    )

urlpatterns = [
    path('', IndexLists.as_view()),
    path('lists', IndexLists.as_view(), name='lists'),
    path('list_content/<id_list>/', ListContent.as_view(), name='list_content'),
    path('list_gender/<gender>/', ListGender.as_view(), name='list_gender'),
    path('list_gender/', ListGender.as_view()),
    path('list_content/<id_list>/like/', LikeList.as_view(), name='like'),
    path('add_book/<id_book>/', AddBook.as_view(), name='add_book')
]
