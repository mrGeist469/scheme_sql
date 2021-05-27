create table if not exists Styles (
    id serial primary key,
    name varchar(20) not null unique
);

create table if not exists Executors (
    id serial primary key,
    styles_id integer references Styles (id),
    executors_name varchar (80) not null unique
);

create table if not exists Albums (
    id serial primary key,
    executors_id integer references Executors (id),
    albums_name varchar (80) not null
    release_year date not null
);

create table if not exists Track_names (
    id serial primary key,
    albums_id integer references Albums (id),
    track_name varchar (80) not null
    track_duration time not null
);
