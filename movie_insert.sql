insert into customers (
	customer_id,
	last_name,
	first_name,
	billing_info
) values (
	1,
	'Smith',
	'Steve',
	'Visa 5555'
);

insert into movie (
	movie_id,
	movie_name,
	screen_num,
	run_time,
	upc
) values (
	1,
	'Star Wars',
	1,
	120,
	1
);

insert into tickets (
	ticket_id,
	amount,
	customer_id,
	movie_id
) values (
	1,
	5.99,
	1,
	1
);

insert into inventory (
	upc,
	product_amount 
) values (
	1,
	5.99
);

insert into order_ (
	order_id,
	customer_id,
	total_price
) values (
	1,
	1,
	10.99
);

insert into concession (
	concession_id,
	conces_name,
	amount,
	upc
) values (
	1,
	'Soda',
	5.99,
	1
);

