CREATE TABLE customers (
  customer_id SERIAL,
  last_name VARCHAR(100),
  first_name VARCHAR(100),
  billing_info VARCHAR(150),
  PRIMARY KEY (customer_id)
);

CREATE TABLE movie (
  movie_id SERIAL,
  movie_name VARCHAR(100),
  screen_num integer,
  run_time integer,
  upc integer,
  PRIMARY KEY (movie_id)
);

CREATE TABLE tickets (
  ticket_id SERIAL,
  amount NUMERIC(5,2),
  customer_id integer,
  movie_id integer,
  PRIMARY KEY (ticket_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  foreign key (movie_id) references movie(movie_id)
);

CREATE TABLE inventory (
  upc SERIAL,
  product_amount integer,
  PRIMARY KEY (upc)
);

CREATE TABLE order_ (
  order_id SERIAL,
  customer_id integer,
  total_price NUMERIC(8,2),
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) references customers(customer_id)
);

CREATE TABLE concession (
  concession_id SERIAL,
  conces_name VARCHAR(100),
  amount integer,
  upc integer,
  PRIMARY KEY (concession_id)
);