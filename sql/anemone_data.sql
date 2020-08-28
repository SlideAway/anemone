--user_info : 사용자 정보
INSERT INTO user_info VALUES (1, 'anemone', '시스템관리자', '$2a$10$5ft5gi7x82mxHhWKl.Mr8OsHc/sY8U5QHp680vNfoEicSJOr2nDkK', 'R00', 'gkszm636@gmail.com', to_char(now(), 'yyyymmddhh24miss'), '', 'Y');
INSERT INTO user_info VALUES (2, 'admin', '사이트 관리자', '$2a$10$5ft5gi7x82mxHhWKl.Mr8OsHc/sY8U5QHp680vNfoEicSJOr2nDkK', 'R01', 'gkszm636@gmail.com', to_char(now(), 'yyyymmddhh24miss'), '', 'Y');

--role_info : 권한 정보
INSERT INTO role_info VALUES('R00', '시스템관리자', '', 0);
INSERT INTO role_info VALUES('R01', '사이트관리자', '', 1);
INSERT INTO role_info VALUES('R99', '일반사용자', '', 99);

--seq_code : 순번 생성 정보
INSERT INTO seq_code VALUES(1, 0, 'user_info', to_char(now(), 'yyyymmddhh24miss'));

--code_info : 코드 정보
INSERT INTO code_info VALUES('T001', 0, 'ROOT', '게시판 타입');
INSERT INTO code_info VALUES('T001', 1, '1', '공지사항');
INSERT INTO code_info VALUES('T001', 2, '2', '자유게시판');
INSERT INTO code_info VALUES('T002', 0, 'ROOT', '메뉴 타입');
INSERT INTO code_info VALUES('T002', 1, '1', 'H');
INSERT INTO code_info VALUES('T002', 2, '2', 'F');
INSERT INTO code_info VALUES('T002', 3, '3', 'L');

--tree_menu : 트리메뉴 정보
INSERT INTO tree_menu VALUES('1', '0', 1, 'H', 'Admin', '', '', 1, to_char(now(), 'yyyymmddhh24miss'), 1, to_char(now(), 'yyyymmddhh24miss'), 1);
INSERT INTO tree_menu VALUES('1000', '0', 1, 'F', 'Manage', 'fas fa-fw fa-cog', '', 1, to_char(now(), 'yyyymmddhh24miss'), 1, to_char(now(), 'yyyymmddhh24miss'), 1);
INSERT INTO tree_menu VALUES('1001', '1000', 1, 'L', 'Dashboard', 'fas fa-fw fa-tachometer-alt', '/MGR001.do', 1, to_char(now(), 'yyyymmddhh24miss'), 1, to_char(now(), 'yyyymmddhh24miss'), 1);
INSERT INTO tree_menu VALUES('1002', '1000', 2, 'L', 'Site Settings', 'fas fa-fw fa-pager', '/MGR002.do', 1, to_char(now(), 'yyyymmddhh24miss'), 1, to_char(now(), 'yyyymmddhh24miss'), 1);
INSERT INTO tree_menu VALUES('1003', '1000', 3, 'L', 'User Settings', 'fas fa-fw fa-users-cog', '/MGR003.do', 1, to_char(now(), 'yyyymmddhh24miss'), 1, to_char(now(), 'yyyymmddhh24miss'), 1);
INSERT INTO tree_menu VALUES('1004', '1000', 4, 'L', 'Treemenu Settings', 'fas fa-fw fa-sitemap', '/MGR004.do', 1, to_char(now(), 'yyyymmddhh24miss'), 1, to_char(now(), 'yyyymmddhh24miss'), 1);
INSERT INTO tree_menu VALUES('1005', '1000', 5, 'L', 'Database Manage', 'fas fa-fw fa-database', '/MGR005.do', 1, to_char(now(), 'yyyymmddhh24miss'), 1, to_char(now(), 'yyyymmddhh24miss'), 1);
INSERT INTO tree_menu VALUES('2', '0', 2, 'H', 'Basic', '', '', 100, to_char(now(), 'yyyymmddhh24miss'), 1, to_char(now(), 'yyyymmddhh24miss'), 1);
INSERT INTO tree_menu VALUES('2000', '0', 2, 'F', 'About', 'fas fa-fw fa-address-card', '', 100, to_char(now(), 'yyyymmddhh24miss'), 1, to_char(now(), 'yyyymmddhh24miss'), 1);
INSERT INTO tree_menu VALUES('2001', '2000', 1, 'L', 'About Me', 'fas fa-fw fa-user-secret', '/ITD001.do', 100, to_char(now(), 'yyyymmddhh24miss'), 1, to_char(now(), 'yyyymmddhh24miss'), 1);
INSERT INTO tree_menu VALUES('2002', '2000', 2, 'L', 'About Site', 'fas fa-fw fa-leaf', '/ITD002.do', 100, to_char(now(), 'yyyymmddhh24miss'), 1, to_char(now(), 'yyyymmddhh24miss'), 1);
INSERT INTO tree_menu VALUES('3000', '0', 3, 'F', 'Board', 'fas fa-fw fa-newspaper', '', 100, to_char(now(), 'yyyymmddhh24miss'), 1, to_char(now(), 'yyyymmddhh24miss'), 1);
INSERT INTO tree_menu VALUES('3001', '3000', 1, 'L', 'Notice Board', 'fas fa-fw fa-user-tie', '/CT001.do', 100, to_char(now(), 'yyyymmddhh24miss'), 1, to_char(now(), 'yyyymmddhh24miss'), 1);
INSERT INTO tree_menu VALUES('3002', '3000', 2, 'L', 'Free Board', 'fas fa-fw fa-users', '/CT002.do', 100, to_char(now(), 'yyyymmddhh24miss'), 1, to_char(now(), 'yyyymmddhh24miss'), 1);







