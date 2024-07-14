DELETE FROM user_role;
DELETE FROM usr;

INSERT INTO usr (id, username, password, active)
VALUES (1, 'dru', '$2a$08$fNUHI3FnO3cbT6VAcClJOOsIq93f2101ud2RAKiZFAh7Y2h.oFRzC', true),
       (2, 'mike', '$2a$08$fNUHI3FnO3cbT6VAcClJOOsIq93f2101ud2RAKiZFAh7Y2h.oFRzC', true);

INSERT INTO user_role (user_id, roles)
VALUES (1, 'ADMIN'),
       (1, 'USER'),
       (2, 'USER');