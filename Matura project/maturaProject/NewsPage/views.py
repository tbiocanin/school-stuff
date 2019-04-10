from django.shortcuts import render
# Create your views here.

def info_Page(request):
    return render(request, 'NewsPage/info_Page.html')

def first_Page(request):
    return render(request, 'NewsPage/first_Page.html')

def sections(request):
    return render(request, 'NewsPage/sections.html')
