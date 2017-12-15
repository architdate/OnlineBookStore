create database bookstore;
use bookstore;

create table Books (
		ISBN13 char(17),
    title char(50),
    authors char(50),
    publisher char(50),
    year_of_publication integer,
    inventory_qty integer,
    price numeric(6,2),
    format char(9) check (format = 'hardcover' or format = 'softcover'),
    keywords char(20),
    subject char(20),
    primary key (ISBN13));

create table Customers (
		login_name char(20),
    password char(20),
    first_name char(20),
    last_name char(20),
    credit_card char(20),
    address char(50),
    phone_number char(20),
    primary key (login_name));

create table Feedback (
		ISBN13 char(17),
		login_name char(20),
    score integer,
    short_text char (100),
    feedback_date date,
    primary key (ISBN13, login_name),
    foreign key (ISBN13) references Books(ISBN13),
    foreign key (login_name) references Customers(login_name));

create table Rate (
		login_name char(20),
    ISBN13 char(17),
		customer_rating char(20),
    rating integer check (rating = 0 or rating = 1 or rating = 2),
		CONSTRAINT chk_same CHECK (login_name <> customer_rating),
    primary key (ISBN13,login_name,customer_rating),
    foreign key (customer_rating) references Customers(login_name),
    foreign key (login_name,ISBN13) references Feedback(login_name, ISBN13));

create table Ordered_books (
		orderid integer,
    customer char(20) not null,
    order_date date,
    order_status char(10),
    primary key (orderid),
    foreign key (customer) references Customers(login_name));

create table Orders (
		orderid integer,
		ISBN13 char(17),
		order_qty integer,
		primary key (orderid,ISBN13),
		foreign key (orderid) references Ordered_books(orderid),
		foreign key (ISBN13) references Books(ISBN13));
		
#Create trigger 
#On new entry in Orders subtract number of copies oredered from book inventory qty
CREATE TRIGGER updateOrders AFTER INSERT ON Orders
FOR EACH ROW
UPDATE Books SET Books.inventory_qty = Books.inventory_qty - NEW.order_qty WHERE Books.ISBN13 = NEW.ISBN13;


DROP TRIGGER updateOrders;

#Test 
INSERT INTO orders (orderid, ISBN13, order_qty) VALUES ('2', '978-0312510787', '3');
SELECT inventory_qty from Books where ISBN13 = '978-0312510787';

