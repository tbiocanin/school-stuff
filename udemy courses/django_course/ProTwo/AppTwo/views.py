from django.shortcuts import render_to_response
from django.http import HttpResponse
from django.template import Context, loader

# Create your views here.

def index(request):
    # template = loader.get_template('ProTwo/AppTwo/html/index.html')
    # return HttpResponse(template.render())
    return HttpResponse("<em>My Second app</em>")
