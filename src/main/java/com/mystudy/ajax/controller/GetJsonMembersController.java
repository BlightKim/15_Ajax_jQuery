package com.mystudy.ajax.controller;

import com.mystudy.ajax.vo.MemberVO;
import com.mystudy.model.dao.MemberDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/getJsonMembers")
public class GetJsonMembersController extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    System.out.println(">> getJsonMembersController doGet() 실행 ~");
    String name = URLDecoder.decode(request.getParameter("name"), "UTF-8");
    List<MemberVO> list = null;
    if (name != null) {
      list = MemberDAO.getListByName(name);
    } else {
      list = MemberDAO.getList();
    }
    response.setContentType("text/html; charset=UTF-8");

    System.out.println(list);

    PrintWriter pw = response.getWriter();
    pw.print(makeJson(list));

  }

  private String makeJson(List<MemberVO> list) {

    return "{ \"list\" : " + list.toString() + "}";
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    System.out.println(">> getJsonMembersController doPost() 실행 ~");
    request.setCharacterEncoding("UTF-8");
    doGet(request, response);

  }
}
