-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public.departments
(
    dept_no character varying COLLATE pg_catalog."default" NOT NULL,
    dept_name character varying COLLATE pg_catalog."default",
    CONSTRAINT "department number" PRIMARY KEY (dept_no)
);

CREATE TABLE IF NOT EXISTS public.dept_employ
(
    emp_no integer,
    dept_no character varying COLLATE pg_catalog."default"
);

CREATE TABLE IF NOT EXISTS public.dept_mgmt
(
    dept_no character varying COLLATE pg_catalog."default",
    emp_no integer
);

CREATE TABLE IF NOT EXISTS public.employees
(
    emp_no integer NOT NULL,
    emp_title character varying COLLATE pg_catalog."default",
    birth_date date,
    first_name character varying COLLATE pg_catalog."default",
    last_name character varying COLLATE pg_catalog."default",
    "sex " character varying COLLATE pg_catalog."default",
    hire_date date,
    CONSTRAINT "employee number" PRIMARY KEY (emp_no)
);

CREATE TABLE IF NOT EXISTS public.salaries
(
    emp_no integer,
    salary integer
);

CREATE TABLE IF NOT EXISTS public.titles
(
    emp_title character varying COLLATE pg_catalog."default" NOT NULL,
    title character varying COLLATE pg_catalog."default",
    CONSTRAINT "employee title" PRIMARY KEY (emp_title)
);

ALTER TABLE IF EXISTS public.dept_employ
    ADD CONSTRAINT "department number" FOREIGN KEY (dept_no)
    REFERENCES public.departments (dept_no) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
CREATE INDEX IF NOT EXISTS "fki_department number"
    ON public.dept_employ(dept_no);


ALTER TABLE IF EXISTS public.dept_employ
    ADD CONSTRAINT "employee number" FOREIGN KEY (emp_no)
    REFERENCES public.employees (emp_no) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
CREATE INDEX IF NOT EXISTS "fki_employee number"
    ON public.dept_employ(emp_no);


ALTER TABLE IF EXISTS public.dept_mgmt
    ADD CONSTRAINT "department number" FOREIGN KEY (dept_no)
    REFERENCES public.departments (dept_no) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.dept_mgmt
    ADD CONSTRAINT "employee number" FOREIGN KEY (emp_no)
    REFERENCES public.employees (emp_no) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.employees
    ADD CONSTRAINT "employee title" FOREIGN KEY (emp_title)
    REFERENCES public.titles (emp_title) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
CREATE INDEX IF NOT EXISTS "fki_employee title"
    ON public.employees(emp_title);


ALTER TABLE IF EXISTS public.salaries
    ADD CONSTRAINT "employee number" FOREIGN KEY (emp_no)
    REFERENCES public.employees (emp_no) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;