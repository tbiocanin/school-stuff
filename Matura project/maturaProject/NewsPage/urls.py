from NewsPage import views
from NewsPage.models import News
from django.conf.urls import url, include
from django.urls import path
urlpatterns = [
    url(r'^', views.info_Page, name="info_Page"),
    url(r'^Procitaj vise', views.news, name="news"),
]
