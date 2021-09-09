create table "departments" (
    "dept_no" varchar(30)   not NULL,
    "dept_name" varchar(30)   not NULL,
    constraint "pk_departments" primary key (
        "dept_no"
     )
);

create table "dept_emp" (
    "emp_no" int   not NULL,
    "dept_no" varchar(30)   not NULL,
    constraint "pk_dept_emp" primary key (
        "emp_no","dept_no"
     )
);

create table "dept_manager" (
    "dept_no" varchar(30)   not NULL,
    "emp_no" int   not NULL,
    constraint "pk_dept_manager" primary key (
        "dept_no","emp_no"
     )
);

create table "employees" (
    "emp_no" int   not NULL,
    "emp_title_id" varchar(30)   not NULL,
    "birth_date" date   not NULL,
    "first_name" varchar(30)   not NULL,
    "last_name" varchar(30)   not NULL,
    "sex" varchar(30)   not NULL,
    "hire_date" date   not NULL,
    constraint "pk_employees" primary key (
        "emp_no"
     )
);

create table "salaries" (
    "emp_no" int   not NULL,
    "salary" int   not NULL,
    constraint "pk_salaries" primary key (
        "emp_no"
     )
);

create table "titles" (
    "title_id" varchar(30)   not NULL,
    "title" varchar(30)   not NULL,
    constraint "pk_titles" primary key (
        "title_id"
     )
);

alter table "dept_emp" add constraint "fk_dept_emp_emp_no" foreign key("emp_no")
references "employees" ("emp_no");

alter table "dept_emp" add constraint "fk_dept_emp_dept_no" foreign key("dept_no")
references "departments" ("dept_no");

alter table "dept_manager_2" add constraint "fk_dept_manager_dept_no" foreign key("dept_no")
references "departments" ("dept_no");

alter table "dept_manager_2" add constraint "fk_dept_manager_emp_no" foreign key("emp_no")
references "employees" ("emp_no");

alter table "employees" add constraint "fk_employees_emp_title_id" foreign key ("emp_title_id")
references "titles" ("title_id");

alter table "salaries" add constraint "fk_salaries_emp_no" foreign key("emp_no")
references "employees" ("emp_no");