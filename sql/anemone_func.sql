DROP FUNCTION IF EXISTS createSeq;

--*********************************************************************
--순번 생성 함수
--사용법 : select createseq(tbl_nm)
--*********************************************************************
CREATE OR REPLACE FUNCTION createSeq(f_tbl_nm varchar(32)) RETURNS bigint AS
$$
DECLARE
    curDay      varchar(8);
    seq_count   int;
    max_code    int;
    f_max_seq   int;
    result      bigint;

    BEGIN
        curDay := to_char(current_date, 'yyyymmdd');

        SELECT COUNT(*) INTO seq_count FROM seq_code WHERE tbl_nm = f_tbl_nm;
        SELECT MAX(seq_code) INTO max_code FROM seq_code;
        max_code := max_code + 1;
        IF seq_count = 0 THEN
            INSERT INTO seq_code VALUES (max_code, 0, f_tbl_nm, to_char(now(), 'yyyymmdd'));
        end if;

        SELECT max_seq INTO f_max_seq from seq_code WHERE tbl_nm = f_tbl_nm;
        f_max_seq := f_max_seq + 1;

        UPDATE seq_code SET max_seq = f_max_seq WHERE tbl_nm = f_tbl_nm;
        result := concat(curDay, max_code, '00000', f_max_seq)::bigint;
        return result;
    END;
$$
LANGUAGE plpgsql;

--*********************************************************************
--태그 생성 함수

--*********************************************************************
CREATE OR REPLACE FUNCTION create_tags() RETURNS TRIGGER AS






