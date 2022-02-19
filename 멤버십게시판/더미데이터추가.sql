use notice_board;

insert into users (id, password, enabled) 
values ("mikel", "{noop}1234", 1),
("alice", "{noop}1234", 1),
("peter", "{noop}test1234", 1),
("mary", "{noop}test1234", 1);

insert into board(title, content, id, postdate, visitcount)
values("제목", "내용", "mikel", now(), 0);