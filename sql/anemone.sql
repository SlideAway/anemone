--사용자 정보 테이블
create table user_info (
    user_seq  bigint                ,  --사용자 순번
    user_id   varchar(12)   not null,  --사용자 ID
    user_nm   varchar(5)    not null,  --사용자 이름
    user_pwd  text          not null,  --사용자 비밀번호
    user_role varchar(10)   not null,  --사용자 권한
    email     varchar(64)   not null,  --사용자 이메일
    reg_date  varchar(14)   not null,  --사용자 가입 날짜
    exit_date varchar(14)   null,      --사용자 탈퇴 날짜
    use_yn    varchar(1)    not null,  --탈퇴 여부
    primary key(user_seq)
);

--사용자 권한 테이블
create table role_info (
    role_cd varchar(10)  not null,  --권한 코드
    role_nm varchar(10)  not null,  --권한 이름
    comment varchar(255) null,      --권한 설명
    auth    varchar(20)  not null,  --spring security에서 인식하는 권한코드
    primary key(role_cd)
);

-- 코드 테이블
create table code_info (
    basecode    varchar(5)  not null,   --베이스코드
    sort_seq    int(10)     not null,   --해당 베이스코드에 대한 순번
    code        varchar(5)  not null,   --코드
    code_nm     varchar(10) not null,   --코드 이름
    primary key (basecode, sort_seq)
);


--게시판 테이블
create table board_info (
	basecode    varchar(5)  not null,   --베이스코드
	sort_seq    int(10)     not null,   --해당 베이스코드에 대한 순번
	code        varchar(5)  not null,   --코드
	code_nm     varchar(10) not null,   --코드 이름
	primary key (basecode, sort_seq)
);

--각 테이블 순번 코드 테이블
create table seq_code (
    seq_code int                not null,   --순번 고유번호
    table_nm varchar(15)        not null,   --고유번호를 사용하는 테이블
    reg_date varchar(14)        not null,   --등록날짜
    primary key(seq_code)
);

