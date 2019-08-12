from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse, HttpResponseRedirect
from django.views.generic import ListView, RedirectView
from apps.listas.models import Lists, Book, Gender
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import authentication, permissions
from django.contrib.auth.models import User
from django.db.models import Count
# Create your views here.

class IndexLists(ListView):
    #List for home
    #List popular y latest lists
    context_object_name = 'lists'
    model = Lists
    template_name = 'listas/index.html'
    def get_queryset(self):
        #queryset 1 count likes for list  and order it
        #queryset 2 shows latest 4 lists
        queryset = {
            'popular_lists': Lists.objects.all().annotate(rating=Count('likes')).order_by('-rating')[:4],
            'latest_lists': Lists.objects.all().order_by('-id')[:4]
        }
        return queryset

class ListContent(ListView):
    #shows books into a list
    context_object_name = 'list_content'
    template_name = 'listas/list_content.html'

    def get_queryset(self, **kwargs):
        #queryset 1 list name
        #queryset 2 books of a list
        queryset = {
            'list': Lists.objects.all().filter(id=self.kwargs['id_list']),
            'books': Book.objects.filter(list__id=self.kwargs['id_list'])
        }
        return queryset

class ListGender(ListView):
    #shows lists for gender
    context_object_name = 'list_gender'
    template_name = 'listas/list_gender.html'

    def get_queryset(self, **kwargs):
        if len(self.kwargs) > 0:
            #queryset 1 list data
            #queryset 2 lists of a gender
            queryset = {
                'lists': Lists.objects.values('name','source','id').filter(gender=self.kwargs['gender']),
                'gender': Gender.objects.values('name').filter(id=self.kwargs['gender'])
            }
        else:
            queryset = Lists.objects.values('name','source','id')
        return queryset

#Next version
class LikeAPIList(APIView):
    authentication_classes = [authentication.SessionAuthentication]
    permission_classes = [permissions.IsAuthenticated]

    def get(self, request, format=None):
        slug =  self.kwargs.get("id_list")
        obj = get_object_or_404(Lists, id=slug)
        user = self.request.user
        if user.is_authenticated:
            if user in obj.likes.all():
                obj.likes.remove(user)
            else:
                obj.likes.add(user)
        else:
            print("Ir a register user")
        return Response(usernames)

class LikeList(RedirectView):
    def get_redirect_url(self, *args, **kwargs):
        slug =  self.kwargs.get("id_list")
        obj = get_object_or_404(Lists, id=slug)
        user = self.request.user
        if user.is_authenticated:
            if user in obj.likes.all():
                obj.likes.remove(user)
            else:
                obj.likes.add(user)
        else:
            print("Ir a register user")
        return obj.get_absolute_url()
