from django.shortcuts import render
from NewsPage.models import News
# Create your views here.

def info_Page(request):
    news_list = News.objects.order_by('date')
    news_dict = {'news': news_list}
    return render(request, 'NewsPage/info_Page.html', context=news_dict)

def first_Page(request):
    news_list = News.objects.order_by('date')
    news_dict = {'news': news_list}
    return render(request, 'NewsPage/first_Page.html', context=news_dict)
