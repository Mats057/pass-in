create table check_ins(
    id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    attendee_id varchar(255) not null,
    constraint  check_ins_attendee_id_fkey foreign key (attendee_id) references attendees (id) on delete restrict on update cascade
);