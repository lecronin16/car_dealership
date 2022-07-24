INSERT INTO salesperson(salesperson_name,email)
VALUES('Judy Gemstone','judy@gemstone.com'),('Baby Billy Freeman', 'babybilly@freeman.com');

INSERT INTO parts(parts_cost,part_description)
VALUES(250,'Muffler'),(150,'belt of some kind');

INSERT INTO mechanic(mechanic_name)
VALUES('Eli Gemstone'),('Jesse Gemstone');

INSERT INTO customer(customer_name)
VALUES ('Kelvin Gemstone'), ('Levi'),('Lindy Lissons');

INSERT INTO car(sales_date,car_condition,car_cost)
VALUES ('2020-03-14','used',20000.00),('2022-01-01','new',35000.00);

INSERT INTO invoice(car_id,salesperson_id,customer_id,total_cost)
VALUES(1,2,1,35000),(2,1,2,20000);

INSERT INTO service_ticket(service_type,service_cost,car_id,mechanic_id,parts_id,service_date,customer_id)
VALUES('oil change',150,1,1,2,'2016-02-03',2),('fix of some kind',250,2,2,1,'2020-04-05',1)

CREATE OR REPLACE FUNCTION add_a_new_customer(
    customer INTEGER,
    cust_name VARCHAR(50)
)
RETURNS VOID
LANGUAGE plpgsql
AS
$MAIN$
BEGIN

    INSERT INTO customer(
        customer_id,
        customer_name
    )VALUES(
        customer,
        cust_name
    );

END
$MAIN$

SELECT add_a_new_customer(5, 'Keefe Chambers');
SELECT add_a_new_customer(4, 'Thaniel Block');

SELECT * FROM customer