from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

def index(request):
    my_dict = {'insert_me': "Now I am coming from basic_app/index.html!"}
    return render(request, 'basic_app/index.html', context=my_dict)
