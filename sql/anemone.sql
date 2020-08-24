--DROP Statement
DROP TABLE IF EXISTS user_info      CASCADE;
DROP TABLE IF EXISTS role_info      CASCADE;
DROP TABLE IF EXISTS code_info      CASCADE;
DROP TABLE IF EXISTS board_info     CASCADE;
DROP TABLE IF EXISTS seq_code       CASCADE;
DROP TABLE IF EXISTS tree_menu      CASCADE;
DROP TABLE IF EXISTS user_conn_his  CASCADE;
DROP TABLE IF EXISTS about_me       CASCADE;

--Create Statement
--사용자 정보 테이블
CREATE TABLE user_info (
    user_seq  BIGINT        NOT NULL,   --사용자 순번
    user_id   VARCHAR(12)   NOT NULL,   --사용자 ID
    user_nm   VARCHAR(10)   NOT NULL,   --사용자 이름
    user_pwd  TEXT          NOT NULL,   --사용자 비밀번호
    user_role VARCHAR(10)   NOT NULL,   --사용자 권한
    email     VARCHAR(64)   NOT NULL,   --사용자 이메일
    reg_date  VARCHAR(14)   NOT NULL,   --사용자 가입 날짜
    exit_date VARCHAR(14)           ,   --사용자 탈퇴 날짜
    thumb     TEXT                  ,   --사용자 프로필 사진
    use_yn    VARCHAR(1)    NOT NULL,   --탈퇴 여부
    PRIMARY KEY(user_seq)
);

--사용자 권한 테이블
CREATE TABLE role_info (
    role_cd VARCHAR(10)  NOT NULL,      --권한 코드
    role_nm VARCHAR(10)  NOT NULL,      --권한 이름
    comment VARCHAR(255)         ,      --권한 설명
    auth    INT          NOT NULL,      --spring security에서 인식하는 권한코드
    PRIMARY KEY(role_cd)
);

--사용자 접속 이력 테이블
CREATE TABLE user_conn_his (
    user_seq    BIGINT      NOT NULL,   --사용자 순번
    conn_seq    BIGINT      NOT NULL,   --접속 순번
    ipAddr      VARCHAR(15) NOT NULL,   --ip주소
    block_yn    VARCHAR(1)  NOT NULL,   --로그인 실패 여부
    try_date    VARCHAR(14) NOT NULL,   --시도날짜
    exit_date   VARCHAR(14) NOT NULL,   --종료날짜
    block_info  TEXT                ,   --로그인 실패 사유
    PRIMARY KEY (conn_seq)
);

-- 코드 테이블
CREATE TABLE code_info (
    basecode    VARCHAR(5)  NOT NULL,   --베이스코드
    sort_seq    INT         NOT NULL,   --해당 베이스코드에 대한 순번
    code        VARCHAR(5)  NOT NULL,   --코드
    code_nm     VARCHAR(10) NOT NULL,   --코드 이름
    PRIMARY KEY (basecode, sort_seq)
);


--게시판 테이블
CREATE TABLE board_info (
    board_type     VARCHAR(2)     NOT NULL, --게시판 타입(T001)
    board_seq      BIGINT         NOT NULL, --글 순번
    title          VARCHAR(30)    NOT NULL, --제목
    content        TEXT           NOT NULL, --내용
    hits           INT            NOT NULL, --조회수
    always_on_top  VARCHAR(1)     NOT NULL, --공지사항 여부
    writer         BIGINT         NOT NULL, --작성자
    edit_date      VARCHAR(10)    NOT NULL, --수정일
    reg_date       VARCHAR(10)    NOT NULL, --작성일
    PRIMARY KEY (board_type, board_seq)
);

--각 테이블 순번 코드 테이블
CREATE TABLE seq_code (
    seq_code    INT             NOT NULL,   --순번 고유번호
    max_seq     INT             NOT NULL,   --순번 최대값
    tbl_nm      VARCHAR(15)     NOT NULL,   --고유번호를 사용하는 테이블
    reg_date    VARCHAR(14)     NOT NULL,   --등록날짜
    PRIMARY KEY(seq_code)
);

--메시지 알림 테이블
CREATE TABLE mesg_noti (
    mesg_seq    BIGINT          NOT NULL,   --메시지 고유번호
    src_seq     BIGINT          NOT NULL,   --송신자 순번
    dest_seq    BIGINT          NOT NULL,   --수신자 순번
    contents    TEXT            NOT NULL,   --내용
    read_yn     varchar(1)      NOT NULL    --열람 여부
);

--경고 알림 테이블
/*
CREATE TABLE alert_noti (
    alert_seq   BIGINT          NOT NULL,

)*/

--좌측 트리메뉴
CREATE TABLE tree_menu (
    menu_code   VARCHAR(5)      NOT NULL,   --메뉴 코드
    parent_code VARCHAR(5)      NOT NULL,   --부모 메뉴 코드
    sort_seq    INT             NOT NULL,   --정렬 순번
    menu_type   VARCHAR(1)      NOT NULL,   --메뉴 종류
    menu_nm     VARCHAR(20)     NOT NULL,   --메뉴 이름
    menu_icon   TEXT            NOT NULL,   --메뉴 아이콘
    menu_url    VARCHAR(10)     NOT NULL,   --메뉴 URL
    menu_permit INT             NOT NULL,   --메뉴 최소 접근권한
    reg_date    VARCHAR(14)     NOT NULL,   --등록일
    reg_user    BIGINT          NOT NULL,   --등록자
    upd_date    VARCHAR(14)     NOT NULL,   --수정일
    upd_user    BIGINT          NOT NULL    --수정자
);

--개발자 기술 스택 테이블
CREATE TABLE about_me(
    skill_seq     BIGINT          NOT NULL,
    skill_nm      VARCHAR(20)     NOT NULL,
    skill_level   VARCHAR(5)      NOT NULL,
    skill_link    text            NOT NULL
);

