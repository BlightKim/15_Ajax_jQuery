package com.mystudy.model.dao;

import com.mystudy.ajax.vo.MemberVO;
import com.mystudy.mybatis.DBService;
import java.util.List;
import org.apache.ibatis.session.SqlSession;

public class MemberDAO {
  public static List<MemberVO> getList() {
    SqlSession sqlSession = DBService.getFactory().openSession();
    List<MemberVO> list = sqlSession.selectList("members.all");
    sqlSession.close();
    return list;
  }

  public static List<MemberVO> getListByName(String name) {
    SqlSession sqlSession = DBService.getFactory().openSession();
    List<MemberVO> list = sqlSession.selectList("members.findByName", name);
    sqlSession.close();
    return list;
  }
}
