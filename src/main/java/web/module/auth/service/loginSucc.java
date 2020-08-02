package web.module.auth.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import web.module.auth.domain.MemberVO;
import web.module.auth.dao.MemberMapper;



public class loginSucc {

    @Autowired
    private MemberMapper dao;

    @Transactional
    public int logUserHis(MemberVO vo) {
        return dao.logUserHis(vo);
    }

}
