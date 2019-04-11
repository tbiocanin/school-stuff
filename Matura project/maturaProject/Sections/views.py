from django.shortcuts import render
from Sections.models import Sections
# Create your views here.
def sections(request):
     sections_list = Sections.objects.all()
     sections_dict = {'sections': sections_list}
     return render(request, 'Sections/sections.html', context=sections_dict)
