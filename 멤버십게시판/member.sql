use notice_board;

-- drop table board; 
-- drop table users;

CREATE TABLE users (
  id varchar(50) NOT NULL,
  password varchar(50) NOT NULL,
  enabled tinyint(1) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


create table board(
	num int auto_increment primary key,
    title varchar(200) not null,
    content varchar(2000) not null,
    id varchar(10) not null,
    postdate timestamp default now() not null,
    visitcount int
);

alter table board
add constraint board_mem_fk foreign key (id)
references users (id);


