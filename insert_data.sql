INSERT INTO school (school_id, name, minimum_age, available_spots) VALUES (1, 'Soundgood Music School', 13, 75);

INSERT INTO administration (admin_id, school_id) VALUES (1, 1);

INSERT INTO personal_data (personal_data_id, social_security_number, first_name, last_name, age, phone_number, email, street, city, zip) VALUES 
(1, '19980223-0000', 'Magnus', 'Berg', '24',  '070-12345678', 'mkberg@kth.se', 'gatan', 'staden', '12345'),
(2, '19920223-0000', 'Person', 'Personen', '23',  '070-12345078', 'mkerg@kth.se', 'gatan', 'staden', '12345'),
(3, '19780223-0000', 'Förnamn', 'Efternamn', '22',  '070-10345678', 'mkrg@kth.se', 'gatan', 'staden', '12345');

INSERT INTO application (application_id, personal_data_id, accepted) VALUES (1, 1, 'true');

INSERT INTO student (student_id, personal_data_id, reached_item_quota_for_rental) VALUES (1, 1, 1);
INSERT INTO student (student_id, personal_data_id, reached_item_quota_for_rental) VALUES (2, 2, 2);

INSERT INTO guardian_of_student (guardian_id, personal_data_id, phone_number, email) VALUES (1, 1, '070-33333333', 'email@kth.se');

INSERT INTO sibling (student_id_1, student_id_2) VALUES (1, 2);

INSERT INTO available_time_slot (available_time_slot_id, available_time_slot) VALUES (1, '2022-12-26 21:46:00');

INSERT INTO skill_level (skill_level_id, skill_level) VALUES ('1', 'beginner');

INSERT INTO price (price_id, skill_level_id, day_of_week, amount) VALUES (1, '1', 'monday', '100');

INSERT INTO instrument (instrument_id) VALUES (1);

INSERT INTO instructor (instructor_id, personal_data_id) VALUES (1, 3);

INSERT INTO booked_lesson (booked_lesson_id, maximum_enrollments, minimum_enrollments, date, instructor_id, admin_id, price_id) VALUES (1, 10, 1, '2022-12-26 21:46:00', 1, 1, 1);

INSERT INTO ensemble (ensemble_id, booked_lesson_id, genre) values (1, 1, 'classic');

INSERT INTO ensemble_instrument (instrument_id, ensemble_id) VALUES (1, 1);

INSERT INTO group_lesson (group_lesson_id, booked_lesson_id) values (1, 1);

INSERT INTO  group_lesson_instrument (instrument_id, group_lesson_id) VALUES ('1', 1);

INSERT INTO individual_lesson (individual_lesson_id, booked_lesson_id, instrument_id) values (1, 1, '1');

INSERT INTO instructor_available_time_slot (instructor_id, available_time_slot_id) VALUES (1, '1');

INSERT INTO instructor_instrument_skill (instrument_id, instructor_id) VALUES ('1', 1);

INSERT INTO salary (salary_id, amount, month) VALUES (1, '1', 'december');

INSERT INTO instructor_monthly_salary (instructor_id, salary_id) VALUES (1, 1);

INSERT INTO rental_instrument (rental_instrument_id, instrument_id, brand, quantity, price) VALUES (1, '1', 'theBrand', 1, '100');

INSERT INTO rental (rental_id, rental_instrument_id, lease_period, terminated_rental) VALUES (1, 1, '2022-12-26 21:46:00', '2022-12-28 21:46:00');

INSERT INTO student_booked_lesson (student_id, booked_lesson_id) VALUES (1, 1);

INSERT INTO student_in_line (personal_data_id, admin_id) VALUES (1, 1);

INSERT INTO student_monthly_fee (student_id, amount, extra_charge, sibling_discount) VALUES (1, 100, 0, 0.1);

INSERT INTO student_rental (student_id, rental_id, delivery) VALUES (1, 1, '222');