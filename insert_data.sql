select * from person;

insert into person (first_name, last_name, national_id)
values
    ('میثم', 'علی بابایی' , '11112222'),
    ('سارا', 'علی بابایی' , '33334444'),
    ('مصطفی', 'علی بابایی' , '55556666'),
    ('زهرا', 'علی بابایی' , '77778888'),
    ('یاسمین', 'علی بابایی' , '99990000');

select * from person;

select * from student;

insert into student (student_number, major, person_id)
values
    ( '12345' ,'علوم کامپیوتر' , 5),
    ( '23456' , 'هنر' , 2),
    ( '34567' , 'مهدسی برق' , 1);

select * from student;

select * from food;

insert into food (food_name, price)
values
    ('ماکارانی' , 12000 ),
    ('جوجه کباب' , 15000),
    ('قرمه سبزی' , 15000 ),
    ('الویه' , 12000),
    ('فلافل' , 12000),
    ('قیمه' ,  15000 );

select * from food;

select * from daily_menu;

insert into daily_menu (menu_date, food_one, food_one_id, price_one, food_two, food_two_id, price_two)
values
    ('2024-03-16' ,'ماکارانی' , 1 , 12000 , 'الویه' , 4 , 12000),
    ('2024-03-17' ,'جوجه کباب' , 2 , 15000 , 'فلافل' , 5 , 12000);


select * from daily_menu;

select * from professors;

insert into professors (person_id, employee_number, department, academic_rank)
values
    (3 , '0101' ,'مهندسی کامپیوتر' , '12b'),
    (4 , '0202' , 'زبان های خارجه' , '12a');

select * from professors;

SELECT * from orders;

insert into orders (person_id, menu_id, food_id_one, quantity_one, food_id_two, quantity_two)
values
    (1 , 1 , 1 , 67 , 4 , null ),
    (4 , 2 , 2 , null , 5 , 100);

SELECT * from orders;
