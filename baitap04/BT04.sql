DELIMITER //
	create procedure insert_customer(in_customer_name varchar(50) , in_email varchar(100) , in_phone varchar(15), in_address varchar(255))
    begin
		insert into customers (customer_name, email, phone, address) 
        values (in_customer_name , in_email , in_phone ,in_address);
        select "Thêm mới khách hàng thành công !" as message ;
    end ;
    
//
DELIMITER ;

call insert_customer('Nguyễn Công Hưởng','huongcaoha@gmail.com','0988888888','Hà Nội');