--user_info : 사용자 정보
INSERT INTO user_info VALUES (1, 'anemone', '시스템관리자', '36E397C2E58EAF3F00FF161C24A222B79ADD9D4F7E454DF4588AA294B241F65C3411C8F209305E925732738EDBE225DF7B37AC12CA6586B29FA4DD8E2B95314B', 'R00', 'gkszm636@gmail.com', to_char(now(), 'yyyymmdd'), '', 'Y');
INSERT INTO user_info VALUES (2, 'admin', '사이트 관리자', '36E397C2E58EAF3F00FF161C24A222B79ADD9D4F7E454DF4588AA294B241F65C3411C8F209305E925732738EDBE225DF7B37AC12CA6586B29FA4DD8E2B95314B', 'R01', 'gkszm636@gmail.com', to_char(now(), 'yyyymmdd'), '', 'Y');

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
