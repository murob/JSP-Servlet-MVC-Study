package kr.bit.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.bit.model.MyCalc;

@WebServlet("/calc.do")
public class CalcController extends HttpServlet {
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int su1 = Integer.parseInt(req.getParameter("su1"));
		int su2 = Integer.parseInt(req.getParameter("su2"));
		
		MyCalc my = new MyCalc();
		int sum = my.hap(su1, su2);
		 
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<table border='1'>");
		out.println("<tr>");
		out.println("<td>Total</td>");
		out.println("<td>");		
		out.println(sum);
		out.println("</td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("</body>");
		out.println("</html>");
//		out.println("total="+sum);
	}

}
