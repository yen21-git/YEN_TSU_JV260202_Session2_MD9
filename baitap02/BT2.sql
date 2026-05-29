USE  customers_db;
CREATE VIEW view_customer_contact AS
SELECT customer_id,customer_name,email,phone from customer ;
SELECT * FROM view_customer_contact;