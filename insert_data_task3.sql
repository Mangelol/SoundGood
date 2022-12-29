INSERT INTO school (school_id, name, minimum_age, available_spots) VALUES (1, 'Soundgood Music School', 13, 75);

INSERT INTO administration (admin_id, school_id) VALUES (1, 1);

INSERT INTO personal_data (personal_data_id, social_security_number, first_name, last_name, age, phone_number, email, street, city, zip) VALUES 
(1, '19980223-0000', 'Magnus', 'Berg', '24',  '070-12345678', 'mkberg@kth.se', 'gatan', 'staden', '12344'),
(2, '19920223-0000', 'Person', 'Personen', '23',  '070-13245078', 'mkerg@kth.se', 'gatan', 'staden', '12342'),
(3, '19780223-0000', 'Förnamn', 'Efternamn', '14',  '070-10345678', 'mkrg@kth.se', 'gtaan', 'staden', '12341'),
(4, '19098223-0000', 'Meliton', 'Angus', '15',  '070-13264578', 'mbekrg@kth.se', 'atgan', 'staden', '12345'),
(5, '19292023-0000', 'Jace', 'Abrahams', '45',  '070-12345078', 'mrgke@kth.se', 'atagn', 'staden', '12344'),
(6, '17802923-0000', 'Lucia', 'Saar', '65',  '070-34567810', 'mrgk@kth.se', 'gaant', 'staden', '12245'),
(7, '12998023-0000', 'Garen', 'Zeng', '32',  '070-45612378', 'bemkrg@kth.se', 'gtaan', 'staden', '12335'),
(8, '12992023-0000', 'Mathilde', 'Winslow', '45',  '070-15023478', 'mrgke@kth.se', 'gtana', 'staden', '12385'),
(9, '19728023-0000', 'Reyna', 'Pitts', '16',  '070-10678345', 'mrkg@kth.se', 'gnata', 'staden', '12395');

INSERT INTO application (application_id, personal_data_id, accepted) VALUES (1, 1, 'true');

INSERT INTO student (student_id, personal_data_id, reached_item_quota_for_rental) VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9);


INSERT INTO guardian_of_student (guardian_id, personal_data_id, phone_number, email) VALUES 
(1, 1, '070-33555333', 'eamil@kth.se'),
(2, 2, '070-33666333', 'eimal@kth.se'),
(3, 3, '070-33777333', 'maiel@kth.se');

INSERT INTO sibling (student_id_1, student_id_2) VALUES (1, 2);
INSERT INTO sibling (student_id_1, student_id_2) VALUES (3, 4);
INSERT INTO sibling (student_id_1, student_id_2) VALUES (5, 6);
INSERT INTO sibling (student_id_1, student_id_2) VALUES (7, 8);
INSERT INTO sibling (student_id_1) VALUES (9);


INSERT INTO available_time_slot (available_time_slot_id, available_time_slot) VALUES (1, '2022-12-26 21:46:00');

INSERT INTO skill_level (skill_level_id, skill_level) VALUES 
('1', 'beginner'),
('2', 'intermediate'),
('3', 'advanced');

INSERT INTO price (price_id, skill_level_id, day_of_week, amount) VALUES 
(1, '1', 'monday', '100'),
(1, '1', 'tuesday', '100'),
(1, '1', 'wednesday', '100'),
(1, '1', 'thursday', '100'),
(2, '1', 'friday', '150'),
(3, '1', 'saturday', '250'),
(3, '1', 'sunday', '250');

INSERT INTO instrument (instrument_id) VALUES 
('guitar'),
('piano'),
('flute'),
('drums'),
('violin');

INSERT INTO instructor (instructor_id, personal_data_id) VALUES 
(1, 5),
(2, 6),
(3, 7),
(4, 8);

INSERT INTO booked_lesson (booked_lesson_id, maximum_enrollments, minimum_enrollments, date, instructor_id, admin_id, price_id) VALUES 
(1, 10, 1, '2022-11-11 21:46:00', 1, 1, 1),
(2, 10, 1, '2022-12-12 21:46:00', 2, 1, 2),
(3, 10, 1, '2022-12-13 21:46:00', 3, 1, 1),
(4, 10, 1, '2022-12-14 21:46:00', 4, 1, 2),
(5, 10, 1, '2022-12-15 21:46:00', 2, 1, 1),
(6, 10, 1, '2022-12-16 21:46:00', 1, 1, 2),
(7, 10, 1, '2022-12-17 21:46:00', 3, 1, 1),
(8, 10, 1, '2022-12-18 21:46:00', 2, 1, 2),
(9, 10, 1, '2022-12-19 21:46:00', 1, 1, 1),
(10, 10, 1, '2022-12-20 21:46:00', 4, 1, 2),
(11, 10, 1, '2022-12-21 21:46:00', 3, 1, 1),
(12, 10, 1, '2022-12-22 21:46:00', 2, 1, 2),
(13, 10, 1, '2022-12-23 21:46:00', 1, 1, 1);

INSERT INTO ensemble (ensemble_id, booked_lesson_id, maximum_enrollments, minimum_enrollments, current_enrollments, date, genre) values 
(1, 1, 10, 1, 5, '2022-11-11 21:46:00', 'classic'),
(2, 2, 10, 1, 9, '2023-01-02 10:00:00','rock'),
(3, 3, 10, 1, 10, '2023-01-04 10:00:00', 'jazz'),
(4, 4, 10, 1, 7, '2023-01-07 10:00:00', 'rock'),
(5, 5, 10, 1, 8, '2023-01-08 10:00:00', 'classic');

INSERT INTO ensemble_instrument (instrument_id, ensemble_id) VALUES 
('guitar', 1),
('piano', 2),
('flute', 3),
('drums', 4),
('violin', 5);

INSERT INTO group_lesson (group_lesson_id, booked_lesson_id) values 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO group_lesson_instrument (instrument_id, group_lesson_id) VALUES 
('guitar', 1),
('piano', 2),
('flute', 3),
('drums', 4),
('violin', 5);

INSERT INTO individual_lesson (individual_lesson_id, booked_lesson_id, instrument_id) values (1, 1, 'guitar');

INSERT INTO instructor_available_time_slot (instructor_id, available_time_slot_id) VALUES (1, '1');

INSERT INTO instructor_instrument_skill (instrument_id, instructor_id) VALUES 
('guitar', 1),
('piano', 2),
('flute', 3),
('violin', 4);


INSERT INTO salary (salary_id, amount, month) VALUES 
(1, '1500', 'october'),
(2, '2700', 'november'),
(3, '1800', 'december'),
(4, '1600', 'december');

INSERT INTO instructor_monthly_salary (instructor_id, salary_id) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4);

INSERT INTO rental_instrument (rental_instrument_id, instrument_id, brand, quantity, price) VALUES 
(1, 'guitar', 'theBrand', 14, '200'),
(2, 'violin', 'theBrand', 12, '100'),
(3, 'flute', 'theBrand', 15, '50'),
(4, 'piano', 'theBrand', 5, '500');

INSERT INTO rental (rental_id, rental_instrument_id, lease_period, terminated_rental) VALUES 
(1, 'guitar', '2022-11-26 21:46:00', '2022-12-28 21:46:00'),
(2, 'violin', '2022-05-26 21:46:00', '2022-09-11 21:46:00'),
(3, 'piano', '2022-09-26 21:46:00', '2022-11-28 21:46:00'),
(4, 'guitar', '2022-10-26 21:46:00', '2022-12-28 21:46:00'),
(5, 'violin', '2022-11-22 21:46:00', '2022-12-28 21:46:00'),
(6, 'flute', '2022-10-11 21:46:00', '2022-12-28 21:46:00'),
(7, 'flute', '2022-12-06 21:46:00', '2022-12-28 21:46:00'),
(8, 'piano', '2022-12-17 21:46:00', '2022-12-28 21:46:00');

INSERT INTO student_booked_lesson (student_id, booked_lesson_id) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4);

INSERT INTO student_in_line (personal_data_id, admin_id) VALUES (1, 1);

INSERT INTO student_monthly_fee (student_id, amount, extra_charge, sibling_discount) VALUES (1, 100, 0, 0.1);

INSERT INTO student_rental (student_id, rental_id, delivery) VALUES (1, 1, '222');