package kr.bit.model;

import java.sql.*;
import java.util.ArrayList;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	//데이터베이스 연결객체 생성(Connection)
	public void getConnect() {
		String URL="jdbc:mysql://localhost:3306/test?characterEncoding=UTF-8&serverTimeZone=UTC";
		String user="root";
		String password="admin12345";
		//MySQL Driver Loading
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(URL, user, password);
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int memberInsert(MemberVO vo) {
		String SQL = "insert into member(id, pass, name, age, email, phone) "
				+ " values(?,?,?,?,?,?)";
		getConnect();
		int cnt = -1;
		//SQL문장을 전송하는 객체 생성
		try {
			ps = conn.prepareStatement(SQL);//미리 컴파일을 시킨다.
			ps.setString(1, vo.getId());
			ps.setString(2, vo.getPass());
			ps.setString(3, vo.getName());
			ps.setInt(4, vo.getAge());
			ps.setString(5, vo.getEmail());
			ps.setString(6, vo.getPhone());
			
			cnt = ps.executeUpdate();//전송(실행)
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			dbClose();
		}
		return cnt;
	}
	
	public ArrayList<MemberVO> memberList() {
		String SQL = "SELECT * FROM member";
		getConnect();
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		try {
			ps = conn.prepareStatement(SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				int num = rs.getInt("num");
				String id = rs.getString("id");
				String pass = rs.getString("pass");
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				MemberVO vo = new MemberVO(num, id, pass, name, age, email, phone);
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			dbClose();
		}
		return list;
	}
	
	public void dbClose() {
		try {
			if(rs!=null) rs.close();
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	public int memberDelete(int num) {
		String SQL = "DELETE FROM member where num=?";
		getConnect();
		int cnt = -1;
		try {
			ps = conn.prepareStatement(SQL);
			ps.setInt(1, num);
			cnt = ps.executeUpdate();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			dbClose();
		}
		return cnt;
	}
	
	public MemberVO memberContent(int num) {
		String SQL = "SELECT * FROM member where num=?";
		getConnect();
		MemberVO vo=null;
		try {
			ps = conn.prepareStatement(SQL);
			ps.setInt(1, num);
			rs = ps.executeQuery();
			if(rs.next()) {
				String id = rs.getString("id");
				String pass = rs.getString("pass");
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				vo = new MemberVO(num, id, pass, name, age, email, phone);
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			dbClose();
		}
		return vo;
	}
	
	public int memberUpdate(MemberVO vo) {
		String SQL = "UPDATE member SET age=?, email=?, phone=? "
				+ " WHERE num=?";
		getConnect();
		int cnt=-1;
		try {
			ps = conn.prepareStatement(SQL);
			ps.setInt(1, vo.getAge());
			ps.setString(2, vo.getEmail());
			ps.setString(3, vo.getPhone());
			ps.setInt(4, vo.getNum());
			cnt=ps.executeUpdate();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			dbClose();
		}
		return cnt;
	}
}
