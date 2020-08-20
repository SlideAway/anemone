--user_info : 사용자 정보
INSERT INTO user_info VALUES (1, 'anemone', '시스템관리자', '$2a$10$5ft5gi7x82mxHhWKl.Mr8OsHc/sY8U5QHp680vNfoEicSJOr2nDkK', 'R00', 'gkszm636@gmail.com', to_char(now(), 'yyyymmdd'), '', 'Y');
INSERT INTO user_info VALUES (2, 'admin', '사이트 관리자', '$2a$10$5ft5gi7x82mxHhWKl.Mr8OsHc/sY8U5QHp680vNfoEicSJOr2nDkK', 'R01', 'gkszm636@gmail.com', to_char(now(), 'yyyymmdd'), '', 'Y');

--role_info : 권한 정보
INSERT INTO role_info VALUES('R00', '시스템관리자', '', 'R00');
INSERT INTO role_info VALUES('R01', '사이트관리자', '', 'R01');
INSERT INTO role_info VALUES('R99', '일반사용자', '', 'R99');

--seq_code : 순번 생성 정보
INSERT INTO seq_code VALUES(1, 0, 'user_info', to_char(now(), 'yyyymmdd'));

--code_info : 코드 정보
INSERT INTO code_info VALUES('T001', 0, 'ROOT', '게시판 타입');
INSERT INTO code_info VALUES('T001', 1, '1', '공지사항');
INSERT INTO code_info VALUES('T001', 2, '2', '자유게시판');
