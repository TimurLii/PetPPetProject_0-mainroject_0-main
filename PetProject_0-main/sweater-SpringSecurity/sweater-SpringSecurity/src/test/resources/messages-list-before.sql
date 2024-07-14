DELETE FROM message;

INSERT INTO message (id, text, tag, user_id)
VALUES (1, 'first', 'my-tag', 1),
       (2, 'second', 'more', 1),
       (3, 'third', 'my-tag', 1),
       (4, 'fourth', 'another', 2);

-- В MySQL нет прямого эквивалента для `alter sequence hibernate_sequence restart with 10;`
-- Так как MySQL не поддерживает последовательности, но вы можете использовать переменную для имитации поведения последовательности:
SET @next_val := 10;
UPDATE hibernate_sequence SET next_val = @next_val;