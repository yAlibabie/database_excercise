create table person (
    person_id int primary key auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    national_id varchar(10) unique not null
);

create table student (
    student_id int primary key auto_increment,
    student_number varchar(8) unique not null,
    major varchar(50) not null,
    person_id int not null,
    foreign key (person_id) references person (person_id) on delete cascade
);

create table professors (
    professor_id int primary key auto_increment,
    person_id int not null,
    employee_number varchar(20) unique null,
    department varchar(50) not null ,
    academic_rank varchar(10) not null ,
    foreign key (person_id) references person (person_id) on delete cascade
);

create table food (
    food_id int primary key auto_increment,
    food_name varchar(100) not null ,
    price decimal not null
);


create table daily_menu (
    menu_id int primary key auto_increment,
    menu_date date not null,
    food_one varchar(50) not null ,
    food_one_id int not null,
    price_one decimal not null ,
    food_two varchar(50) not null ,
    food_two_id int not null,
    price_two decimal not null ,
    foreign key (food_one_id) references food (food_id) on delete cascade,
    foreign key (food_two_id) references food (food_id) on delete cascade
);

create table orders (
    order_id int primary key auto_increment,
    person_id int not null,
    menu_id int not null,
    food_id_one int ,
    quantity_one int,
    food_id_two int,
    quantity_two int,
    foreign key (person_id) references person (person_id) on delete cascade,
    foreign key (food_id_one) references food (food_id) on delete cascade,
    foreign key (food_id_two) references food (food_id) on delete cascade
);

