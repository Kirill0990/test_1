from rest_framework import routers
from django.urls import include, path


from .views import PostViewSet

router_v1 = routers.DefaultRouter()

router_v1.register('news', PostViewSet,  basename='news')

urlpatterns = [
    path('api/v1/', include(router_v1.urls)),
]
