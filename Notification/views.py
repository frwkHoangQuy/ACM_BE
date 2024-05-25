from django.shortcuts import render, get_object_or_404, get_list_or_404

from rest_framework import generics, status
from rest_framework.views import APIView
from rest_framework.response import Response

from All_models.models import EmployeeTypeNotification, Notification, Employee, NotificationType
from .serializers import EmployeeTypeNotificationSerializer


class GetNotificationViews(APIView):
    def get(self, request):
        response_data = []
        list_items = EmployeeTypeNotification.objects.all()
        for item in list_items:
            temp = {
                "sender": item.employee.name,
                "notification": item.notification.content,
                "type": item.type.name
            }
            response_data.append(temp)
        return Response(response_data, status=200)