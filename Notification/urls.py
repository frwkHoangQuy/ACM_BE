from django.urls import path
from .views import GetNotificationViews


urlpatterns = [
    path('notification/', GetNotificationViews.as_view(), name='get_notification'),
]