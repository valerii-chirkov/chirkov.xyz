from django.views.generic import TemplateView
from .models import Copyright


class AboutView(TemplateView):
    template_name = "main.html"
