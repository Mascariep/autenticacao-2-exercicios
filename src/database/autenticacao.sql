-- Active: 1676478893250@@127.0.0.1@3306
CREATE TABLE users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    role TEXT NOT NULL,
    created_at TEXT DEFAULT (DATETIME()) NOT NULL
);

INSERT INTO users (id, name, email, password, role)
VALUES
	-- ("u001", "Fulano", "fulano@email.com", "fulano123", "NORMAL"),
	-- ("u002", "Beltrana", "beltrana@email.com", "beltrana00", "NORMAL"),
	-- ("u003", "Astrodev", "astrodev@email.com", "astrodev99", "ADMIN");
    ("u001", "Fulano", "fulano@email.com", "$2y$12$CPAhYAV4iw10KgOqh.MnwOps6ADbWlqA/20eJ2L.ZTClwNhiQgqi2", "NORMAL"),
	("u002", "Beltrana", "beltrana@email.com", "$2y$12$swzYA2HACTptC0F.jTjNLuw6riTSBuGp.dmNEM28Xkjz2RFu7JDe2", "NORMAL"),
	("u003", "Astrodev", "astrodev@email.com", "$2y$12$83p07pXDpfVybJuzEdGo9u0qc/rlGGkAZ0y4b3rk47DFFnu4tV6k2", "ADMIN");

SELECT * FROM users;

DROP TABLE users;
