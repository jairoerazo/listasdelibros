from django.shortcuts import render
from apps.accounts.forms import SingUpForm
from django.views.generic import CreateView
from django.urls import reverse_lazy
from django.contrib.auth.models import User

# Create your views here.
class SignUp(CreateView):
    model = User
    template_name = 'registration/signup.html'
    success_url = reverse_lazy('login')
    form_class = SingUpForm
