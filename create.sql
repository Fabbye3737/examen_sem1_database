-- SQL syntax for create

CREATE TABLE IF NOT EXISTS gym(
    id serial not null,
    name varchar(100) not null,
    address varchar(100) not null,
    year integer not null,
    website varchar(100) null,
    contact_number integer null,
    primary key(id)
);
CREATE TABLE IF NOT EXISTS trainer(
    id serial not null,
    name varchar(100) not null,
    age integer not null,
    experience_years integer not null,
    email varchar(100) not null,
    contact_number integer null,
    primary key(id)
);
CREATE TABLE IF NOT EXISTS gym_trainer(
    id serial not null,
    gym_id integer not null,
    trainer_id integer not null,
    primary key(id),
    foreign key(gym_id) references gym(id),
    foreign key(trainer_id) references trainer(id)
);
CREATE TABLE IF NOT EXISTS members(
    id serial not null,
    name varchar(100) not null,
    age integer not null,
    email varchar(100) not null,
    contact_number integer null,
    join_date date not null,
    primary key(id)
);
CREATE TABLE IF NOT EXISTS classes(
    id serial not null,
    trainer_id integer not null,
    name varchar(100) not null,
    schedule varchar(100) not null,
    capacity integer not null,
    primary key(id),
    foreign key(trainer_id) references trainer(id)
);
CREATE TABLE IF NOT EXISTS gym_classes(
    id serial not null,
    gym_id integer not null,
    classes_id integer not null,
    primary key(id),
    foreign key(gym_id) references gym(id),
    foreign key(classes_id) references classes(id)
);
CREATE TABLE IF NOT EXISTS gym_members(
    id serial not null,
    gym_id integer not null,
    member_id integer not null,
    primary key(id),
    foreign key(gym_id) references gym(id),
    foreign key(member_id) references members(id)
);
CREATE TABLE IF NOT EXISTS equipment(
    id serial not null,
    name varchar(100) not null,
    quantity integer not null,
    condition char(20) not null,
    primary key(id)
);
CREATE TABLE IF NOT EXISTS gym_equipment(
    id serial not null,
    gym_id integer not null,
    equipment_id integer not null,
    primary key(id),
    foreign key(gym_id) references gym(id),
	foreign key(equipment_id) references equipment(id)
);
CREATE TABLE IF NOT EXISTS workout_plans(
    id serial not null,
    member_id integer not null unique,
    name varchar(100) not null,
    primary key(id),
    foreign key(member_id) references members(id)
);
CREATE TABLE IF NOT EXISTS members_classes(
    id serial not null,
    classes_id integer not null,
    member_id integer not null,
    primary key(id),
    foreign key(classes_id) references classes(id),
    foreign key(member_id) references members(id)
);
CREATE TABLE IF NOT EXISTS feedback(
    id serial not null,
    member_id integer not null UNIQUE,
    trainer_id integer not null UNIQUE,
    classes_id integer not null UNIQUE,
    rating smallint not null,
    feedback_date date not null,
    primary key(id),
    foreign key(member_id) references members(id),
    foreign key(trainer_id) references trainer(id),
    foreign key(classes_id) references classes(id)
);
CREATE TABLE IF NOT EXISTS subscriptions(
    id serial not null,
    gym_id integer not null,
    member_id integer not null,
    issue_date date not null,
	end_date date not null,
	active bool not null,
    amount_ron integer not null,
    primary key(id),
    foreign key(gym_id) references gym(id),
    foreign key(member_id) references members(id)
);
CREATE TABLE IF NOT EXISTS facilities(
    id serial not null,
    facilities_type varchar(100) not null,
    primary key(id)
);
CREATE TABLE IF NOT EXISTS gym_facilities(
    id serial not null,
    gym_id integer not null,
    facility_id integer not null,
    primary key(id),
    foreign key(gym_id) references gym(id),
    foreign key(facility_id) references facilities(id)
);
CREATE TABLE IF NOT EXISTS members_goals(
    id serial not null,
    member_id integer not null,
    goal_name varchar(200) not null,
    primary key(id),
    foreign key(member_id) references members(id)
);