create table quiz(
	quiz_id serial primary key,
	question varchar(250) not null,
	opt_a varchar(100) not null,
	opt_b varchar(100) not null,
	opt_c varchar(100) not null,
	opt_d varchar(100) not null,
	answer varchar(10) not null
);
create table student(
	stu_id serial primary key,
	roll_no int,
	name varchar(50) not null,
	stu_time timestamp default current_timestamp
);
create table report(
	report_id serial primary key,
	stu_id int not null references student(stu_id),
	marks int,
	rep_time timestamp default current_timestamp
);
create table response(
	res_id serial primary key,
	report_id int references report(report_id),
	stu_id int not null references student(stu_id),
	quiz_id int not null references quiz(quiz_id),
	ans varchar(10) not null,
	res_time timestamp default current_timestamp
);
