from rest_framework import serializers

from All_models.models import EmployeeTypeNotification


class EmployeeTypeNotificationSerializer(serializers.ModelSerializer):
    class Meta:
        model = EmployeeTypeNotification
        fields = '__all__'
