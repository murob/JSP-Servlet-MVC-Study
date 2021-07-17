package kr.bit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.bit.model.MemberDAO;
import kr.bit.model.MemberVO;

@WebServlet("/memberList.do")
public class MemberListController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAO dao = new MemberDAO();
		ArrayList<MemberVO> list = dao.memberList();
		//System.out.println(list);
		response.setContentType("text/html;charset=utf-8");//MIME-TYPE
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<table border='1'>");
	    out.println("<tr>");
	    out.println("<th>번호</th>");
	    out.println("<th>아이디</th>");
	    out.println("<th>비밀번호</th>");
	    out.println("<th>이름</th>");
	    out.println("<th>나이</th>");
	    out.println("<th>이메일</th>");
	    out.println("<th>전화번호</th>");
	    out.println("<th>삭제</th>");
	    out.println("</tr>");
	    for(MemberVO vo : list) {
	    	out.println("<tr>");
	    	out.println("<td>"+vo.getNum()+"</td>");
	    	out.println("<td><a href='/MVC01/memberContent.do?num="+vo.getNum()+"'>"+vo.getId()+"</a></td>");
	    	out.println("<td>"+vo.getPass()+"</td>");
	    	out.println("<td>"+vo.getName()+"</td>");
	    	out.println("<td>"+vo.getAge()+"</td>");
	    	out.println("<td>"+vo.getEmail()+"</td>");
	    	out.println("<td>"+vo.getPhone()+"</td>");
	    	out.println("<td><a href='/MVC01/memberDelete.do?num="+vo.getNum()+"'>삭제</a></td>");
	    	out.println("</tr>");
	    }
	    out.println("<tr>");
	    out.println("<td colspan='8'>");
	    out.println("<a href='/MVC01/member/memberRegister.html'>");
	    out.println("회원가입");
	    out.println("</a>");
	    out.println("</td>");
	    out.println("</tr>");
		out.println("</table>");
		out.println("</body>");
		out.println("</html>");
	}
}
