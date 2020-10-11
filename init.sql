CREATE TABLE users
(
    id SERIAL,
    name TEXT NOT NULL,
    age NUMERIC(10,2) NOT NULL DEFAULT 0.00,
    email TEXT NOT NULL,
    CONSTRAINT users_pkey PRIMARY KEY (id)
);
CREATE TABLE orders
(
    id SERIAL,
    name TEXT NOT NULL,
    amount NUMERIC(10,2) NOT NULL DEFAULT 0.00,
    description TEXT,
    user_id INTEGER  NOT NULL,
    CONSTRAINT orders_pkey PRIMARY KEY (id)
);


