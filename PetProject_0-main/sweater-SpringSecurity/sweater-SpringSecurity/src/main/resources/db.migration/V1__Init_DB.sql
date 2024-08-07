create table hibernate_sequence
(
    next_val bigint
) engine=InnoDB;


insert into hibernate_sequence values ( 1 );

create table message
(
    id       int not null,
    filename varchar(255),
    tag      varchar(255),
    text     varchar(2048),
    user_id  int,
    primary key (id)
) engine=InnoDB;

create table user_role
(
    user_id int not null,
    roles   varchar(255)
) engine=InnoDB;
create table usr
(
    id              int not null,
    activation_code varchar(255),
    active          bit    not null,
    email           varchar(255),
    password        varchar(255),
    username        varchar(255),
    primary key (id)
) engine=InnoDB;
alter table message
    add constraint message_user_fk foreign key (user_id) references usr (id);
ALTER TABLE user_role ADD CONSTRAINT user_role_user_fk FOREIGN KEY (user_id) REFERENCES usr (id) ON DELETE CASCADE; _id) references usr (id)