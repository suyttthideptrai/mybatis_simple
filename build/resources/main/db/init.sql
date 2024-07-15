CREATE TABLE IF NOT EXISTS "user" (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50)
);

INSERT INTO "user" (id, name, email)
VALUES (1, 'admin', 'ntienthanhn@gmail.com')
ON CONFLICT (id) DO NOTHING;

UPDATE "user"
SET name = 'admin', email = 'ntienthanhn@gmail.com'
WHERE id = 1;
