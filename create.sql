create table publisher(
    id integer primary key autoincrement,
    name  text,
    country text
    );

create table books(
    id integer primary key autoincrement,
    title text,
    publisher serial references publisher(id)
    );

create table subjects(
    id integer primary key autoincrement,
    name text
    );

create table books_subjects(
    id integer primary key autoincrement,
    book serial references books(id),
    subject serial references subjects(id)
    );
