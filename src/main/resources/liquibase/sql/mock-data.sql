INSERT INTO semester (year, type, created_date, status)
VALUES
    (2025, 'SPRING', NOW(), 1),
    (2025, 'FALL', NOW(), 1),
    (2025, 'SUMMER', NOW(), 1),
    (2024, 'SPRING', NOW(), 1),
    (2024, 'FALL', NOW(), 1),
    (2024, 'SUMMER', NOW(), 1),
    (2023, 'SPRING', NOW(), 1),
    (2023, 'FALL', NOW(), 1),
    (2023, 'SUMMER', NOW(), 1),
    (2022, 'SPRING', NOW(), 1);


INSERT INTO faculty (title, created_date, status)
VALUES
    ('Engineering', NOW(), 1),
    ('Science', NOW(), 1),
    ('Arts', NOW(), 1),
    ('Business Administration', NOW(), 1),
    ('Law', NOW(), 1),
    ('Medicine', NOW(), 1),
    ('Education', NOW(), 1),
    ('Architecture', NOW(), 1),
    ('Computer Science', NOW(), 1),
    ('Social Sciences', NOW(), 1),
    ('Philosophy', NOW(), 1),
    ('Mathematics', NOW(), 1);


INSERT INTO subject (title, description, created_date, status)
VALUES
    ('Mathematics 101', 'Introduction to basic mathematics concepts', NOW(), 1),
    ('Physics 101', 'Fundamentals of classical mechanics and thermodynamics', NOW(), 1),
    ('Computer Science 101', 'Introduction to programming and computer systems', NOW(), 1),
    ('History 101', 'Overview of world history from ancient to modern times', NOW(), 1),
    ('Chemistry 101', 'Basic concepts in chemistry including atomic structure and reactions', NOW(), 1),
    ('Biology 101', 'Introduction to biology and life sciences', NOW(), 1),
    ('Literature 101', 'Exploration of classic literature and literary analysis', NOW(), 1),
    ('Economics 101', 'Introduction to microeconomics and macroeconomics principles', NOW(), 1),
    ('Philosophy 101', 'Fundamentals of philosophical thought and logic', NOW(), 1),
    ('Art History 101', 'Introduction to the history of art and artistic movements', NOW(), 1);


INSERT INTO student_group (title, created_date, status)
VALUES
    ('A232-1', NOW(), 1),
    ('A6221', NOW(), 1),
    ('B2211', NOW(), 1),
    ('C1150', NOW(), 1),
    ('D4302', NOW(), 1),
    ('E7813', NOW(), 1),
    ('F6098', NOW(), 1),
    ('G3132', NOW(), 1),
    ('H2720', NOW(), 1),
    ('I5106', NOW(), 1);


INSERT INTO `user` (firstname, lastname, patronymic, password, username, email, phone, admission_year, birthday, role, created_date, status, faculty_id, group_id, is_account_non_expired, is_account_non_locked, is_credentials_non_expired, is_enabled)
VALUES
    ('John', 'Doe', 'Smith', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'john.doe1', 'john.doe1@email.com', '555-0101', 2020, '1998-04-01', 'TEACHER', NOW(), 1, 1, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Alice', 'Brown', 'Johnson', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'alice.brown1', 'alice.brown1@email.com', '555-0102', 2021, '1997-06-15', 'TEACHER', NOW(), 1, 2, NULL, TRUE, TRUE, TRUE, TRUE),
    ('David', 'Wilson', 'Martin', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'david.wilson1', 'david.wilson1@email.com', '555-0103', 2022, '1995-11-20', 'TEACHER', NOW(), 1, 3, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Emma', 'Taylor', 'Lee', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'emma.taylor1', 'emma.taylor1@email.com', '555-0104', 2019, '1996-01-12', 'TEACHER', NOW(), 1, 4, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Sophia', 'Anderson', 'Lopez', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'sophia.anderson1', 'sophia.anderson1@email.com', '555-0105', 2020, '1998-09-18', 'TEACHER', NOW(), 1, 5, NULL, TRUE, TRUE, TRUE, TRUE),
    ('James', 'Wilson', 'Moore', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'james.moore1', 'james.moore1@email.com', '555-0106', 2018, '1993-10-12', 'TEACHER', NOW(), 1, 1, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Olivia', 'Martinez', 'Garcia', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'olivia.martinez1', 'olivia.martinez1@email.com', '555-0107', 2017, '1994-02-10', 'TEACHER', NOW(), 1, 2, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Mason', 'Brown', 'Lee', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'mason.brown1', 'mason.brown1@email.com', '555-0108', 2019, '1996-05-03', 'TEACHER', NOW(), 1, 3, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Isabella', 'Davis', 'Smith', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'isabella.davis1', 'isabella.davis1@email.com', '555-0109', 2020, '1998-12-25', 'TEACHER', NOW(), 1, 4, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Liam', 'Garcia', 'Martinez', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'liam.garcia1', 'liam.garcia1@email.com', '555-0110', 2021, '1997-08-19', 'TEACHER', NOW(), 1, 5, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Charlotte', 'Hernandez', 'Lopez', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'charlotte.hernandez1', 'charlotte.hernandez1@email.com', '555-0111', 2020, '1998-07-13', 'TEACHER', NOW(), 1, 1, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Ethan', 'Miller', 'Scott', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'ethan.miller1', 'ethan.miller1@email.com', '555-0112', 2018, '1995-02-25', 'TEACHER', NOW(), 1, 2, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Mia', 'Moore', 'Taylor', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'mia.moore1', 'mia.moore1@email.com', '555-0113', 2022, '1996-11-10', 'TEACHER', NOW(), 1, 3, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Lucas', 'Rodriguez', 'King', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'lucas.rodriguez1', 'lucas.rodriguez1@email.com', '555-0114', 2021, '1994-09-04', 'TEACHER', NOW(), 1, 4, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Amelia', 'Gonzalez', 'Martinez', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'amelia.gonzalez1', 'amelia.gonzalez1@email.com', '555-0115', 2017, '1995-12-12', 'TEACHER', NOW(), 1, 5, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Jack', 'Perez', 'Williams', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'jack.perez1', 'jack.perez1@email.com', '555-0116', 2020, '1997-05-21', 'TEACHER', NOW(), 1, 1, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Harper', 'Wright', 'Moore', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'harper.wright1', 'harper.wright1@email.com', '555-0117', 2022, '1999-01-10', 'TEACHER', NOW(), 1, 2, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Benjamin', 'Walker', 'Rodriguez', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'benjamin.walker1', 'benjamin.walker1@email.com', '555-0118', 2021, '1996-07-14', 'TEACHER', NOW(), 1, 3, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Ella', 'Lopez', 'Parker', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'ella.lopez1', 'ella.lopez1@email.com', '555-0119', 2021, '1997-03-09', 'TEACHER', NOW(), 1, 4, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Logan', 'Hernandez', 'Collins', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'logan.hernandez1', 'logan.hernandez1@email.com', '555-0120', 2020, '1998-06-30', 'TEACHER', NOW(), 1, 5, NULL, TRUE, TRUE, TRUE, TRUE);

INSERT INTO `user` (firstname, lastname, patronymic, password, username, email, phone, admission_year, birthday, role, created_date, status, faculty_id, group_id, is_account_non_expired, is_account_non_locked, is_credentials_non_expired, is_enabled)
VALUES
    ('Michael', 'Miller', 'Jackson', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'michael.miller1', 'michael.miller1@email.com', '555-0106', 2018, '1994-12-22', 'MODERATOR', NOW(), 1, 1, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Linda', 'Davis', 'Martinez', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'linda.davis1', 'linda.davis1@email.com', '555-0107', 2017, '1994-02-10', 'MODERATOR', NOW(), 1, 2, NULL, TRUE, TRUE, TRUE, TRUE),
    ('John', 'Wilson', 'Garcia', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'john.wilson1', 'john.wilson1@email.com', '555-0108', 2019, '1997-03-05', 'MODERATOR', NOW(), 1, 3, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Olivia', 'Lopez', 'Hernandez', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'olivia.lopez1', 'olivia.lopez1@email.com', '555-0109', 2020, '1998-08-10', 'MODERATOR', NOW(), 1, 4, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Ethan', 'Brown', 'Lopez', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'ethan.brown1', 'ethan.brown1@email.com', '555-0110', 2021, '1997-04-15', 'MODERATOR', NOW(), 1, 5, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Chloe', 'Martinez', 'Clark', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'chloe.martinez1', 'chloe.martinez1@email.com', '555-0111', 2020, '1998-01-22', 'MODERATOR', NOW(), 1, 1, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Jack', 'Wright', 'Davis', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'jack.wright1', 'jack.wright1@email.com', '555-0112', 2019, '1996-10-19', 'MODERATOR', NOW(), 1, 2, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Grace', 'Parker', 'Miller', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'grace.parker1', 'grace.parker1@email.com', '555-0113', 2020, '1997-12-10', 'MODERATOR', NOW(), 1, 3, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Aiden', 'Walker', 'Williams', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'aiden.walker1', 'aiden.walker1@email.com', '555-0114', 2018, '1995-11-05', 'MODERATOR', NOW(), 1, 4, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Charlotte', 'Adams', 'Moore', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'charlotte.adams1', 'charlotte.adams1@email.com', '555-0115', 2021, '1996-03-22', 'MODERATOR', NOW(), 1, 5, NULL, TRUE, TRUE, TRUE, TRUE);


INSERT INTO `user` (firstname, lastname, patronymic, password, username, email, phone, admission_year, birthday, role, created_date, status, faculty_id, group_id, is_account_non_expired, is_account_non_locked, is_credentials_non_expired, is_enabled)
VALUES
    ('James', 'Smith', 'Johnson', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'admin', 'admin@email.com', '555-0116', 2020, '1985-07-10', 'ADMIN', NOW(), 1, 1, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Charlotte', 'Evans', 'Martin', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'charlotte.evans1', 'charlotte.evans1@email.com', '555-0117', 2021, '1992-05-05', 'ADMIN', NOW(), 1, 2, NULL, TRUE, TRUE, TRUE, TRUE),
    ('William', 'Moore', 'Taylor', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'william.moore1', 'william.moore1@email.com', '555-0118', 2019, '1990-11-30', 'ADMIN', NOW(), 1, 3, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Amelia', 'Clark', 'Jackson', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'amelia.clark1', 'amelia.clark1@email.com', '555-0119', 2020, '1995-03-20', 'ADMIN', NOW(), 1, 4, NULL, TRUE, TRUE, TRUE, TRUE);

INSERT INTO `user` (firstname, lastname, patronymic, password, username, email, phone, admission_year, birthday, role, created_date, status, faculty_id, group_id, is_account_non_expired, is_account_non_locked, is_credentials_non_expired, is_enabled)
VALUES
    ('David', 'King', 'Wilson', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'david.king1', 'david.king1@email.com', '555-0120', 2021, '1998-02-02', 'USER', NOW(), 1, 1, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Liam', 'Young', 'Brown', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'liam.young1', 'liam.young1@email.com', '555-0121', 2020, '1997-07-12', 'USER', NOW(), 1, 2, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Mia', 'Scott', 'Miller', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'mia.scott1', 'mia.scott1@email.com', '555-0122', 2021, '1995-11-20', 'USER', NOW(), 1, 3, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Oliver', 'Lee', 'Taylor', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'oliver.lee1', 'oliver.lee1@email.com', '555-0123', 2019, '1994-09-10', 'USER', NOW(), 1, 4, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Sophia', 'Adams', 'Clark', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'sophia.adams1', 'sophia.adams1@email.com', '555-0124', 2020, '1996-03-18', 'USER', NOW(), 1, 5, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Ethan', 'Nelson', 'Davis', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'ethan.nelson1', 'ethan.nelson1@email.com', '555-0125', 2018, '1992-12-25', 'USER', NOW(), 1, 1, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Isabella', 'Wright', 'Roberts', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'isabella.wright1', 'isabella.wright1@email.com', '555-0126', 2020, '1995-05-16', 'USER', NOW(), 1, 2, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Lucas', 'Harris', 'Walker', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'lucas.harris1', 'lucas.harris1@email.com', '555-0127', 2019, '1996-08-08', 'USER', NOW(), 1, 3, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Ava', 'Martinez', 'Gonzalez', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'ava.martinez1', 'ava.martinez1@email.com', '555-0128', 2021, '1997-02-14', 'USER', NOW(), 1, 4, NULL, TRUE, TRUE, TRUE, TRUE),
    ('Charlotte', 'Hughes', 'Morris', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'charlotte.hughes1', 'charlotte.hughes1@email.com', '555-0129', 2020, '1998-01-09', 'USER', NOW(), 1, 5, NULL, TRUE, TRUE, TRUE, TRUE);

INSERT INTO `user` (firstname, lastname, patronymic, password, username, email, phone, admission_year, birthday, role, created_date, status, faculty_id, group_id, is_account_non_expired, is_account_non_locked, is_credentials_non_expired, is_enabled)
VALUES
    ('Jacob', 'Smith', 'Taylor', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'jacob.smith1', 'jacob.smith1@email.com', '555-0101', 2021, '1999-05-03', 'STUDENT', NOW(), 1, 1, 1, TRUE, TRUE, TRUE, TRUE),
    ('Emily', 'Johnson', 'Williams', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'emily.johnson1', 'emily.johnson1@email.com', '555-0102', 2020, '2000-02-25', 'STUDENT', NOW(), 1, 2, 2, TRUE, TRUE, TRUE, TRUE),
    ('Benjamin', 'Davis', 'Brown', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'benjamin.davis1', 'benjamin.davis1@email.com', '555-0103', 2021, '1998-12-10', 'STUDENT', NOW(), 1, 3, 3, TRUE, TRUE, TRUE, TRUE),
    ('Sophia', 'Miller', 'Martinez', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'sophia.miller1', 'sophia.miller1@email.com', '555-0104', 2019, '1999-11-17', 'STUDENT', NOW(), 1, 4, 4, TRUE, TRUE, TRUE, TRUE),
    ('Lucas', 'Wilson', 'Hernandez', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'lucas.wilson1', 'lucas.wilson1@email.com', '555-0105', 2020, '1997-06-30', 'STUDENT', NOW(), 1, 5, 5, TRUE, TRUE, TRUE, TRUE),
    ('Ava', 'Moore', 'Lopez', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'ava.moore1', 'ava.moore1@email.com', '555-0106', 2021, '1998-08-24', 'STUDENT', NOW(), 1, 6, 6, TRUE, TRUE, TRUE, TRUE),
    ('Elijah', 'Taylor', 'Gonzalez', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'elijah.taylor1', 'elijah.taylor1@email.com', '555-0107', 2020, '1995-01-15', 'STUDENT', NOW(), 1, 7, 7, TRUE, TRUE, TRUE, TRUE),
    ('Mia', 'Anderson', 'Roberts', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'mia.anderson1', 'mia.anderson1@email.com', '555-0108', 2021, '1999-03-07', 'STUDENT', NOW(), 1, 8, 8, TRUE, TRUE, TRUE, TRUE),
    ('William', 'Taylor', 'Clark', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'william.taylor1', 'william.taylor1@email.com', '555-0109', 2021, '2000-01-12', 'STUDENT', NOW(), 1, 9, 9, TRUE, TRUE, TRUE, TRUE),
    ('Isabella', 'Lopez', 'Walker', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'isabella.lopez1', 'isabella.lopez1@email.com', '555-0110', 2020, '1998-07-22', 'STUDENT', NOW(), 1, 10, 10, TRUE, TRUE, TRUE, TRUE);

INSERT INTO `user` (firstname, lastname, patronymic, password, username, email, phone, admission_year, birthday, role, created_date, status, faculty_id, group_id, is_account_non_expired, is_account_non_locked, is_credentials_non_expired, is_enabled)
VALUES
    ('Ethan', 'King', 'Young', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'ethan.king1', 'ethan.king1@email.com', '555-0111', 2021, '2000-04-15', 'STUDENT', NOW(), 1, 1, 1, TRUE, TRUE, TRUE, TRUE),
    ('Charlotte', 'White', 'Scott', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'charlotte.white1', 'charlotte.white1@email.com', '555-0112', 2020, '1999-06-21', 'STUDENT', NOW(), 1, 2, 2, TRUE, TRUE, TRUE, TRUE),
    ('James', 'Green', 'Harris', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'james.green1', 'james.green1@email.com', '555-0113', 2021, '1998-02-11', 'STUDENT', NOW(), 1, 3, 3, TRUE, TRUE, TRUE, TRUE),
    ('Amelia', 'Brown', 'Lee', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'amelia.brown1', 'amelia.brown1@email.com', '555-0114', 2020, '1997-09-30', 'STUDENT', NOW(), 1, 4, 4, TRUE, TRUE, TRUE, TRUE),
    ('Sebastian', 'Martinez', 'Adams', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'sebastian.martinez1', 'sebastian.martinez1@email.com', '555-0115', 2019, '1996-08-18', 'STUDENT', NOW(), 1, 5, 5, TRUE, TRUE, TRUE, TRUE),
    ('Harper', 'Clark', 'Nelson', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'harper.clark1', 'harper.clark1@email.com', '555-0116', 2021, '2000-11-05', 'STUDENT', NOW(), 1, 6, 6, TRUE, TRUE, TRUE, TRUE),
    ('Daniel', 'Lewis', 'Baker', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'daniel.lewis1', 'daniel.lewis1@email.com', '555-0117', 2020, '1999-03-08', 'STUDENT', NOW(), 1, 7, 7, TRUE, TRUE, TRUE, TRUE),
    ('Madison', 'Walker', 'Gonzalez', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'madison.walker1', 'madison.walker1@email.com', '555-0118', 2021, '1998-07-16', 'STUDENT', NOW(), 1, 8, 8, TRUE, TRUE, TRUE, TRUE),
    ('Logan', 'Allen', 'Perez', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'logan.allen1', 'logan.allen1@email.com', '555-0119', 2019, '1997-10-22', 'STUDENT', NOW(), 1, 9, 9, TRUE, TRUE, TRUE, TRUE),
    ('Ella', 'Young', 'Roberts', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'ella.young1', 'ella.young1@email.com', '555-0120', 2020, '1996-12-01', 'STUDENT', NOW(), 1, 10, 10, TRUE, TRUE, TRUE, TRUE),
    ('Mason', 'King', 'Hall', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'mason.king1', 'mason.king1@email.com', '555-0121', 2021, '2000-06-17', 'STUDENT', NOW(), 1, 1, 1, TRUE, TRUE, TRUE, TRUE),
    ('Scarlett', 'Scott', 'Evans', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'scarlett.scott1', 'scarlett.scott1@email.com', '555-0122', 2020, '1999-05-25', 'STUDENT', NOW(), 1, 2, 2, TRUE, TRUE, TRUE, TRUE),
    ('Luke', 'Harris', 'Carter', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'luke.harris1', 'luke.harris1@email.com', '555-0123', 2021, '1998-04-30', 'STUDENT', NOW(), 1, 3, 3, TRUE, TRUE, TRUE, TRUE),
    ('Aria', 'Lee', 'Cooper', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'aria.lee1', 'aria.lee1@email.com', '555-0124', 2019, '1997-07-14', 'STUDENT', NOW(), 1, 4, 4, TRUE, TRUE, TRUE, TRUE),
    ('Henry', 'Adams', 'Ward', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'henry.adams1', 'henry.adams1@email.com', '555-0125', 2020, '1996-03-28', 'STUDENT', NOW(), 1, 5, 5, TRUE, TRUE, TRUE, TRUE);

INSERT INTO `user` (firstname, lastname, patronymic, password, username, email, phone, admission_year, birthday, role, created_date, status, faculty_id, group_id, is_account_non_expired, is_account_non_locked, is_credentials_non_expired, is_enabled)
VALUES
    ('Oliver', 'Scott', 'Bennett', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'oliver.scott1', 'oliver.scott1@email.com', '555-0131', 2020, '1998-01-25', 'STUDENT', NOW(), 1, 1, 2, TRUE, TRUE, TRUE, TRUE),
    ('Emma', 'Baker', 'Hughes', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'emma.baker1', 'emma.baker1@email.com', '555-0132', 2019, '1999-04-14', 'STUDENT', NOW(), 1, 2, 3, TRUE, TRUE, TRUE, TRUE),
    ('Lucas', 'Carter', 'Fisher', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'lucas.carter1', 'lucas.carter1@email.com', '555-0133', 2021, '1997-07-09', 'STUDENT', NOW(), 1, 3, 4, TRUE, TRUE, TRUE, TRUE),
    ('Mia', 'Nelson', 'Graham', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'mia.nelson1', 'mia.nelson1@email.com', '555-0134', 2020, '1996-10-30', 'STUDENT', NOW(), 1, 4, 5, TRUE, TRUE, TRUE, TRUE),
    ('Benjamin', 'Reed', 'Sullivan', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'benjamin.reed1', 'benjamin.reed1@email.com', '555-0135', 2019, '1998-06-22', 'STUDENT', NOW(), 1, 5, 6, TRUE, TRUE, TRUE, TRUE),
    ('Sophia', 'Wright', 'Fowler', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'sophia.wright1', 'sophia.wright1@email.com', '555-0136', 2021, '1997-03-05', 'STUDENT', NOW(), 1, 6, 7, TRUE, TRUE, TRUE, TRUE),
    ('Henry', 'Barnes', 'Newman', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'henry.barnes1', 'henry.barnes1@email.com', '555-0137', 2020, '1999-12-11', 'STUDENT', NOW(), 1, 7, 8, TRUE, TRUE, TRUE, TRUE),
    ('Ava', 'Wells', 'Henderson', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'ava.wells1', 'ava.wells1@email.com', '555-0138', 2019, '1998-05-07', 'STUDENT', NOW(), 1, 8, 9, TRUE, TRUE, TRUE, TRUE),
    ('Daniel', 'Bryant', 'Wallace', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'daniel.bryant1', 'daniel.bryant1@email.com', '555-0139', 2021, '1997-11-28', 'STUDENT', NOW(), 1, 9, 10, TRUE, TRUE, TRUE, TRUE),
    ('Ella', 'Griffin', 'Davidson', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'ella.griffin1', 'ella.griffin1@email.com', '555-0140', 2020, '1999-08-18', 'STUDENT', NOW(), 1, 10, 1, TRUE, TRUE, TRUE, TRUE);

INSERT INTO `user` (firstname, lastname, patronymic, password, username, email, phone, admission_year, birthday, role, created_date, status, faculty_id, group_id, is_account_non_expired, is_account_non_locked, is_credentials_non_expired, is_enabled)
VALUES
    ('James', 'Foster', 'Lambert', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'james.foster1', 'james.foster1@email.com', '555-0141', 2021, '1998-07-15', 'STUDENT', NOW(), 1, 1, 2, TRUE, TRUE, TRUE, TRUE),
    ('Charlotte', 'Harrison', 'Wade', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'charlotte.harrison1', 'charlotte.harrison1@email.com', '555-0142', 2020, '1997-09-02', 'STUDENT', NOW(), 1, 2, 3, TRUE, TRUE, TRUE, TRUE),
    ('William', 'Perry', 'Caldwell', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'william.perry1', 'william.perry1@email.com', '555-0143', 2019, '1996-11-27', 'STUDENT', NOW(), 1, 3, 4, TRUE, TRUE, TRUE, TRUE),
    ('Amelia', 'Lawson', 'Hanson', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'amelia.lawson1', 'amelia.lawson1@email.com', '555-0144', 2021, '1999-02-10', 'STUDENT', NOW(), 1, 4, 5, TRUE, TRUE, TRUE, TRUE),
    ('Ethan', 'Murray', 'Franklin', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'ethan.murray1', 'ethan.murray1@email.com', '555-0145', 2020, '1997-04-23', 'STUDENT', NOW(), 1, 5, 6, TRUE, TRUE, TRUE, TRUE),
    ('Harper', 'Dean', 'Hawkins', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'harper.dean1', 'harper.dean1@email.com', '555-0146', 2019, '1996-08-05', 'STUDENT', NOW(), 1, 6, 7, TRUE, TRUE, TRUE, TRUE),
    ('Alexander', 'Jacobs', 'Bush', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'alexander.jacobs1', 'alexander.jacobs1@email.com', '555-0147', 2021, '1998-12-30', 'STUDENT', NOW(), 1, 7, 8, TRUE, TRUE, TRUE, TRUE),
    ('Evelyn', 'Bowman', 'Fleming', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'evelyn.bowman1', 'evelyn.bowman1@email.com', '555-0148', 2020, '1999-06-18', 'STUDENT', NOW(), 1, 8, 9, TRUE, TRUE, TRUE, TRUE),
    ('Michael', 'Austin', 'McGuire', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'michael.austin1', 'michael.austin1@email.com', '555-0149', 2019, '1996-10-01', 'STUDENT', NOW(), 1, 9, 10, TRUE, TRUE, TRUE, TRUE),
    ('Grace', 'Simpson', 'Baxter', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'grace.simpson1', 'grace.simpson1@email.com', '555-0150', 2021, '1998-09-11', 'STUDENT', NOW(), 1, 10, 1, TRUE, TRUE, TRUE, TRUE),
    ('Daniel', 'Wallace', 'Holmes', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'daniel.wallace1', 'daniel.wallace1@email.com', '555-0151', 2020, '1999-07-22', 'STUDENT', NOW(), 1, 1, 2, TRUE, TRUE, TRUE, TRUE),
    ('Lily', 'Ford', 'Morrison', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'lily.ford1', 'lily.ford1@email.com', '555-0152', 2019, '1996-03-19', 'STUDENT', NOW(), 1, 2, 3, TRUE, TRUE, TRUE, TRUE),
    ('Matthew', 'Russell', 'Thornton', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'matthew.russell1', 'matthew.russell1@email.com', '555-0153', 2021, '1997-11-05', 'STUDENT', NOW(), 1, 3, 4, TRUE, TRUE, TRUE, TRUE),
    ('Hannah', 'Simmons', 'Brock', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'hannah.simmons1', 'hannah.simmons1@email.com', '555-0154', 2020, '1998-01-14', 'STUDENT', NOW(), 1, 4, 5, TRUE, TRUE, TRUE, TRUE),
    ('Samuel', 'Coleman', 'Briggs', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'samuel.coleman1', 'samuel.coleman1@email.com', '555-0155', 2019, '1996-06-29', 'STUDENT', NOW(), 1, 5, 6, TRUE, TRUE, TRUE, TRUE),
    ('Zoe', 'Fletcher', 'Hutchinson', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'zoe.fletcher1', 'zoe.fletcher1@email.com', '555-0156', 2021, '1997-09-08', 'STUDENT', NOW(), 1, 6, 7, TRUE, TRUE, TRUE, TRUE),
    ('Jackson', 'Hunter', 'Middleton', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'jackson.hunter1', 'jackson.hunter1@email.com', '555-0157', 2020, '1999-02-17', 'STUDENT', NOW(), 1, 7, 8, TRUE, TRUE, TRUE, TRUE);

INSERT INTO `user` (firstname, lastname, patronymic, password, username, email, phone, admission_year, birthday, role, created_date, status, faculty_id, group_id, is_account_non_expired, is_account_non_locked, is_credentials_non_expired, is_enabled)
VALUES
    ('Logan', 'Mitchell', 'Pierce', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'logan.mitchell1', 'logan.mitchell1@email.com', '555-0158', 2019, '1996-12-25', 'STUDENT', NOW(), 1, 8, 9, TRUE, TRUE, TRUE, TRUE),
    ('Avery', 'Howard', 'Stevens', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'avery.howard1', 'avery.howard1@email.com', '555-0159', 2021, '1998-07-13', 'STUDENT', NOW(), 1, 9, 10, TRUE, TRUE, TRUE, TRUE),
    ('Benjamin', 'Ward', 'Fitzgerald', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'benjamin.ward1', 'benjamin.ward1@email.com', '555-0160', 2020, '1999-04-22', 'STUDENT', NOW(), 1, 10, 1, TRUE, TRUE, TRUE, TRUE),
    ('Madison', 'Hayes', 'Dawson', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'madison.hayes1', 'madison.hayes1@email.com', '555-0161', 2019, '1997-05-18', 'STUDENT', NOW(), 1, 1, 2, TRUE, TRUE, TRUE, TRUE),
    ('Christopher', 'Burns', 'Gordon', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'christopher.burns1', 'christopher.burns1@email.com', '555-0162', 2021, '1998-09-30', 'STUDENT', NOW(), 1, 2, 3, TRUE, TRUE, TRUE, TRUE),
    ('Scarlett', 'Wheeler', 'Hampton', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'scarlett.wheeler1', 'scarlett.wheeler1@email.com', '555-0163', 2020, '1997-11-14', 'STUDENT', NOW(), 1, 3, 4, TRUE, TRUE, TRUE, TRUE),
    ('Henry', 'Chapman', 'Graves', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'henry.chapman1', 'henry.chapman1@email.com', '555-0164', 2019, '1996-10-07', 'STUDENT', NOW(), 1, 4, 5, TRUE, TRUE, TRUE, TRUE),
    ('Natalie', 'Parker', 'Baldwin', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'natalie.parker1', 'natalie.parker1@email.com', '555-0165', 2021, '1999-03-11', 'STUDENT', NOW(), 1, 5, 6, TRUE, TRUE, TRUE, TRUE),
    ('Sebastian', 'Henderson', 'Patrick', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'sebastian.henderson1', 'sebastian.henderson1@email.com', '555-0166', 2020, '1998-01-27', 'STUDENT', NOW(), 1, 6, 7, TRUE, TRUE, TRUE, TRUE),
    ('Victoria', 'Reynolds', 'Summers', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'victoria.reynolds1', 'victoria.reynolds1@email.com', '555-0167', 2019, '1997-06-09', 'STUDENT', NOW(), 1, 7, 8, TRUE, TRUE, TRUE, TRUE),
    ('Jackson', 'Garrett', 'Dalton', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'jackson.garrett1', 'jackson.garrett1@email.com', '555-0168', 2021, '1996-08-20', 'STUDENT', NOW(), 1, 8, 9, TRUE, TRUE, TRUE, TRUE),
    ('Samantha', 'Cole', 'Rhodes', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'samantha.cole1', 'samantha.cole1@email.com', '555-0169', 2020, '1999-04-04', 'STUDENT', NOW(), 1, 9, 10, TRUE, TRUE, TRUE, TRUE),
    ('Owen', 'Newton', 'Brady', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'owen.newton1', 'owen.newton1@email.com', '555-0170', 2019, '1997-05-29', 'STUDENT', NOW(), 1, 10, 1, TRUE, TRUE, TRUE, TRUE),
    ('Ella', 'Hogan', 'Avery', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'ella.hogan1', 'ella.hogan1@email.com', '555-0171', 2021, '1998-09-17', 'STUDENT', NOW(), 1, 1, 2, TRUE, TRUE, TRUE, TRUE),
    ('Luke', 'Brock', 'Calhoun', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'luke.brock1', 'luke.brock1@email.com', '555-0172', 2020, '1999-02-03', 'STUDENT', NOW(), 1, 2, 3, TRUE, TRUE, TRUE, TRUE),
    ('Lillian', 'Lambert', 'May', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'lillian.lambert1', 'lillian.lambert1@email.com', '555-0173', 2019, '1997-11-22', 'STUDENT', NOW(), 1, 3, 4, TRUE, TRUE, TRUE, TRUE),
    ('Gabriel', 'Fuller', 'Mann', '$2a$12$s1brueBkR8rZ5lZpoZjCc.0c3s0kzM/RFJG1ohFiWLsB5scBDa.ZG', 'gabriel.fuller1', 'gabriel.fuller1@email.com', '555-0174', 2021, '1996-10-14', 'STUDENT', NOW(), 1, 4, 5, TRUE, TRUE, TRUE, TRUE);


INSERT INTO `subject_assign` (semester_id, subject_id, hour, credit, created_date, status)
VALUES
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1),
    (FLOOR(1 + (RAND() * 10)), FLOOR(1 + (RAND() * 10)), FLOOR(30 + (RAND() * 31)), FLOOR(2 + (RAND() * 11)), NOW(), 1);


INSERT INTO `subject_assign_x_user` (subject_assign_id, user_id)
SELECT sa.id, u.id
FROM `subject_assign` sa
         JOIN `user` u ON u.id BETWEEN 1 AND 20 OR u.id BETWEEN 45 AND 113
ORDER BY RAND()
    LIMIT 10000;


INSERT INTO `exam_score` (user_id, subject_assign_id, score, created_date, status)
SELECT
    CASE
        WHEN RAND() < 0.5 THEN FLOOR(1 + (RAND() * 20))  -- 50% chance to get user_id from 1-20
        ELSE FLOOR(45 + (RAND() * 69))  -- 50% chance to get user_id from 45-113
        END AS user_id,
    FLOOR(1 + (RAND() * 10)) AS subject_assign_id,  -- Random subject_assign_id from 1-10
    FLOOR(1 + (RAND() * 100)) AS score,   -- Random score between 1-100
    NOW() AS created_date,
    1 AS status
FROM
    `subject_assign` sa
ORDER BY
    RAND()
    LIMIT 10000;
