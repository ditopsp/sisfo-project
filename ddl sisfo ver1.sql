create table employee
(
nip char(10) constraint pk_employee primary key,
nama varchar2(100) not null,
gender varchar2(10) not null,
experiences varchar2(500) not null,
additonal_info varchar2(500) not null,
username varchar2(20) not null,
password varchar2(20) not null,
status varchar2(10) not null,
birthdate date,
salary number,
);

create table work 
(
work_id char(4) constraint pk_work primary key,
work_name varchar2(50) not null,
);

create table shift 
(
shift_id char(10) constraint pk_shift primary key,
waktu_awal date,
waktu_akhir date,
);


create table proses
(
nip char(10),
work_id char(4),
shift_id char(10),
gajishift number,
waktu_login date,
waktu_logout date,
constraint fk_proses_employee foreign key (nip) references employee on delete cascade,
constraint fk_proses_work foreign key(work_id) references work on delete cascade
constraint fk_proses_shift foreign key(shift_id) references shift on delete cascade
);
	