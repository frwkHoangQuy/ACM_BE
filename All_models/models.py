from django.db import models


class Employee(models.Model):

    class Meta:
        db_table = 'Employee'

    id = models.CharField(primary_key=True, max_length=100)
    image = models.ImageField(upload_to='employee_images/')
    name = models.CharField(max_length=255)
    citizen_id = models.CharField(max_length=100)
    birthdate = models.DateTimeField()
    position = models.CharField(max_length=255)
    appointment_date = models.DateTimeField()


class User(models.Model):

    class Meta:
        db_table = 'User'

    id = models.CharField(primary_key=True, max_length=100)
    username = models.CharField(max_length=255)
    password = models.CharField(max_length=255)
    role = models.CharField(max_length=100)
    employee = models.ForeignKey(Employee, on_delete=models.CASCADE, related_name='user')


class Room(models.Model):

    class Meta:
        db_table = 'Room'

    id = models.CharField(primary_key=True, max_length=100)
    name = models.CharField(max_length=255)


class BookingRoom(models.Model):

    class Meta:
        db_table = 'BookingRoom'

    id = models.CharField(primary_key=True, max_length=100)
    employee = models.ForeignKey(Employee, on_delete=models.CASCADE)
    room = models.ForeignKey(Room, on_delete=models.CASCADE)
    timeslot = models.IntegerField()
    phone = models.CharField(max_length=20)
    date = models.DateTimeField()


class Notification(models.Model):

    class Meta:
        db_table = 'Notification'

    id = models.CharField(primary_key=True, max_length=100)
    content = models.TextField()
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()


class EmployeeNotification(models.Model):

    class Meta:
        db_table = 'EmployeeNotification'
        unique_together = ('employee', 'notification')

    employee = models.ForeignKey(Employee, on_delete=models.CASCADE)
    notification = models.ForeignKey(Notification, on_delete=models.CASCADE)


