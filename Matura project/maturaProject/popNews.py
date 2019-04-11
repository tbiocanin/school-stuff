import os
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'maturaProject.settings')

import django
django.setup()

import random
from NewsPage.models import News
from faker import Faker

fakegen = Faker()
topics = ['Razmene', 'Takmicejna ucenika', 'Posete osnovnim skolama', 'Obavestenja za ucenike!']

# def add_topics():
#     t = News.objects.get_or_create(top_name=random.choice(topics))[0]
#     t.save()
#     return t

def populate(N=5):

    for entry in range(N):
        fake_title = fakegen.text()
        fake_date = fakegen.date()
        fake_text = fakegen.text()

        news = News.objects.get_or_create(news_heading=fake_title,
                                          date=fake_date,
                                          text=fake_text)[0]
if __name__ == '__main__':
    print("POPULATING THE DATABASES...PLEASE WAIT")
    populate(20)
    print("Populating Complete!")
