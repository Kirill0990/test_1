from django.db import models


class Post(models.Model):
    title = models.CharField(max_length=100)
    description = models.TextField()
    pub_date = models.DateTimeField()
    image = models.ImageField(
            'картинка',
            upload_to='images/',
            blank=True
            )
