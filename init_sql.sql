use ACM;

-- Sample data for Position
INSERT INTO Position (id, position) VALUES
('550e8400-e29b-41d4-a716-446655440000', 'Manager'),
('550e8400-e29b-41d4-a716-446655440001', 'Developer'),
('550e8400-e29b-41d4-a716-446655440002', 'Designer');

-- Sample data for Role
INSERT INTO Role (id, role) VALUES
('550e8400-e29b-41d4-a716-446655440003', 'Admin'),
('550e8400-e29b-41d4-a716-446655440004', 'User'),
('550e8400-e29b-41d4-a716-446655440005', 'Guest');

-- Sample data for Employee
INSERT INTO Employee (id, image, name, citizen_id, birthdate, appointment_date) VALUES
('550e8400-e29b-41d4-a716-446655440006', NULL, 'Alice Johnson', 'CIT123456', '1985-06-15 00:00:00', '2020-01-01 09:00:00'),
('550e8400-e29b-41d4-a716-446655440007', NULL, 'Bob Smith', 'CIT654321', '1990-08-25 00:00:00', '2019-05-15 09:00:00'),
('550e8400-e29b-41d4-a716-446655440008', NULL, 'Carol White', 'CIT789012', '1987-03-30 00:00:00', '2021-02-20 09:00:00');

-- Sample data for Users
INSERT INTO Users (id, username, password, role_id) VALUES
('550e8400-e29b-41d4-a716-446655440009', 'alice', 'password123', '550e8400-e29b-41d4-a716-446655440003'),
('550e8400-e29b-41d4-a716-44665544000A', 'bob', 'password456', '550e8400-e29b-41d4-a716-446655440004'),
('550e8400-e29b-41d4-a716-44665544000B', 'carol', 'password789', '550e8400-e29b-41d4-a716-446655440005');

-- Sample data for Room
INSERT INTO Room (id, name) VALUES
('550e8400-e29b-41d4-a716-44665544000C', 'Conference Room A'),
('550e8400-e29b-41d4-a716-44665544000D', 'Meeting Room B'),
('550e8400-e29b-41d4-a716-44665544000E', 'Workshop Room C');

-- Sample data for BookingRoom
INSERT INTO BookingRoom (id, employee_id, room_id, timeslot, phone, date) VALUES
('550e8400-e29b-41d4-a716-44665544000F', '550e8400-e29b-41d4-a716-446655440006',
'550e8400-e29b-41d4-a716-44665544000C', 1, '123-456-7890', '2023-05-01 10:00:00'),
('550e8400-e29b-41d4-a716-446655440010', '550e8400-e29b-41d4-a716-446655440007',
'550e8400-e29b-41d4-a716-44665544000D', 2, '098-765-4321', '2023-05-01 11:00:00'),
('550e8400-e29b-41d4-a716-446655440011', '550e8400-e29b-41d4-a716-446655440008',
'550e8400-e29b-41d4-a716-44665544000E', 3, '555-555-5555', '2023-05-01 12:00:00');

-- Sample data for Notification
INSERT INTO Notification (id, title, content, created_at, updated_at) VALUES
('550e8400-e29b-41d4-a716-446655440012', 'Meeting Reminder', 'Reminder for the meeting scheduled at 10:00 AM', '2023-04-30 08:00:00', '2023-04-30 08:00:00'),
('550e8400-e29b-41d4-a716-446655440013', 'System Update', 'The system will be down for maintenance from 2:00 PM', '2023-04-29 14:00:00', '2023-04-29 14:00:00'),
('550e8400-e29b-41d4-a716-446655440014', 'New Policy', 'Please review the new company policy on remote work', '2023-04-28 09:00:00', '2023-04-28 09:00:00');

INSERT INTO NotificationType (id, name)
VALUES
('07cb5f2c-4b58-4f0d-9331-d8f22d472c07', 'IMPORTANT'), -- important
('1a366e48-d616-4d45-8d82-fc051576c8b8', 'DIRECTIVE'), -- directive
('2984a3a1-ec76-4fe0-a40e-95a1b5e98fcf', 'REMINDER'), -- reminder
('58e0e7ab-7a48-4692-86aa-af89852cc0bb', 'GENERAL'), -- general
('dece0560-1868-4dbd-9209-0f780c7c04e7', 'MEETING'); -- meeting

-- Sample data for EmployeeNotification
INSERT INTO EmployeeTypeNotification (id, employee_id, type_id, notification_id, created_at) VALUES
('550e8400-e29b-41d4-a716-446655440015', '550e8400-e29b-41d4-a716-446655440006', '2984a3a1-ec76-4fe0-a40e-95a1b5e98fcf', '550e8400-e29b-41d4-a716-446655440012', '2023-04-30 09:00:00'),
('550e8400-e29b-41d4-a716-446655440016', '550e8400-e29b-41d4-a716-446655440007', '1a366e48-d616-4d45-8d82-fc051576c8b8', '550e8400-e29b-41d4-a716-446655440013', '2023-04-29 15:00:00'),
('550e8400-e29b-41d4-a716-446655440017', '550e8400-e29b-41d4-a716-446655440008', '58e0e7ab-7a48-4692-86aa-af89852cc0bb', '550e8400-e29b-41d4-a716-446655440014', '2023-04-28 10:00:00');

-- Sample data for EmployeeRolePosition
INSERT INTO EmployeeRolePosition (id, position_id, role_id, employee_id, assigned_at) VALUES
('550e8400-e29b-41d4-a716-446655440018', '550e8400-e29b-41d4-a716-446655440000', '550e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440006', '2020-01-01 09:00:00'),
('550e8400-e29b-41d4-a716-446655440019', '550e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440007', '2019-05-15 09:00:00'),
('550e8400-e29b-41d4-a716-44665544001A', '550e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440008', '2021-02-20 09:00:00');
