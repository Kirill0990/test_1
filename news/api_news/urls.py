from rest_framework import routers
from django.urls import include, path
from . import views

from .views import PostViewSet

router_v1 = routers.DefaultRouter()

router_v1.register('news', PostViewSet,  basename='news')

urlpatterns = [
    path('api/', include(router_v1.urls)),
    path('api/export/news/', views.export_to_xlsx),
]
