from django.db import models


class Copyright(models.Model):
    copyright = models.CharField(max_length=128, default='Copyright 2077', null=True, blank=True)

