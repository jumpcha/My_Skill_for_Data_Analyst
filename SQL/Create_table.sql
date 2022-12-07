# Manu Table
create table Manu (
    ManuId int unique,
    Manu text,
    Price real,
    primary key (ManuId)
);

insert into Manu values
    (1, "papaya salad", 120),
    (2, "grilled chicken", 200),
    (3, "spicy soup", 150),
    (4, "sausage", 80),
    (5, "beefsteak", 250),
    (6, "beef salad", 120),
    (7, "omelet", 60),
    (8, "dried beef", 100),
    (9, "fried chicken", 150),
    (10, "sticky rice", 20);

# staff table
create table staff (
    id int unique,
    name text,
    salary real,
    primary key (id)
);

insert into staff values
    (1, "Harry", 10000),
    (2, "Tom", 10000),
    (3, "Ferd", 10000);

# Customers Table
create table customers (
    customerId int unique,
    name text,
    primary key (customerId)
);

insert into customers values
    (1, "Jame"),
    (2, "Nick"),
    (3, "Hang"),
    (4, "Fank"),
    (5, "Bew");

# Bill Table
create table Bills (
    Bill_id int unique,
    customer_id int,
    Date text,
    Income real,
    primary key (Bill_id),
    foreign key (customer_id) references customers(customerId)
);

insert into Bills values
    (1, 2, "2022-04-01", 490),
    (2, 1, "2022-04-01", 340),
    (3, 5, "2022-04-01", 390),
    (4, 3, "2022-04-02", 430),
    (5, 1, "2022-04-02", 500),
    (6, 2, "2022-04-03", 530),
    (7, 4, "2022-04-04", 460),
    (8, 2, "2022-04-04", 470),
    (9, 1, "2022-04-04", 690),
    (10, 1, "2022-04-05", 600);

# Order Table
create table Orders (
    OrderId int unique,
    ManuId int,
    received_by int,
    Bill_id int,
    primary key (OrderId),
    foreign key (ManuId) references Manu(ManuID),
    foreign key (received_by) references staff(id),
    foreign key (Bill_id) references Bills(Bill_id)
);

insert into Orders values
    (1, 1, 1, 1),
    (2, 3, 1, 1),
    (3, 10, 1, 1),
    (4, 2, 1, 1),
    (5, 1, 3, 2),
    (6, 2, 3, 2),
    (7, 10, 3, 2),
    (8, 1, 2, 3),
    (9, 5, 2, 3),
    (10, 10, 2, 3),
    (11, 5, 1, 4),
    (12, 4, 1, 4),
    (13, 8, 1, 4),
    (14, 9, 2, 5),
    (15, 7, 2, 5),
    (16, 3, 2, 5),
    (17, 10, 3, 5),
    (18, 1, 3, 5),
    (19, 4, 3, 6),
    (20, 5, 3, 6),
    (21, 2, 3, 6),
    (22, 10, 1, 7),
    (23, 6, 1, 7),
    (24, 1, 1, 7),
    (25, 2, 2, 7),
    (26, 1, 2, 8),
    (27, 2, 2, 8),
    (28, 3, 2, 8),
    (29, 6, 1, 9),
    (30, 1, 1, 9),
    (31, 2, 1, 9),
    (32, 5, 1, 9),
    (33, 1, 2, 10),
    (34, 2, 2, 10),
    (35, 6, 2, 10),
    (36, 7, 1, 10),
    (37, 8, 1, 10);

alter table Bills
rename column Income to Total;
