package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBManager;
import vo.BoardVO;	

public class BoardDAO {
	
	 Connection conn = null;
	 PreparedStatement psmt = null;
	 ResultSet rs = null;
	
	public ArrayList<BoardVO> list(){
		
		 ArrayList<BoardVO> alist = new ArrayList<BoardVO>();
		
		 try {
			 conn = DBManager.getConnection();
			 String sql = "select * from board";
			 psmt = conn.prepareStatement(sql);
			 rs = psmt.executeQuery();
			 
			 while(rs.next()) { 
				 BoardVO vo = new BoardVO();
				 vo.setBidx(rs.getInt("bidx"));   
				 vo.setSubject(rs.getString("subject")); 
				 vo.setWriter(rs.getString("writer"));
				 alist.add(vo);
			 }
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 }finally {
			 DBManager.close(psmt, conn, rs);
		 }
		 
		 return alist;
	}
	
	public BoardVO view(String bidx) {
		BoardVO vo = new BoardVO();
				
	try {
		conn = DBManager.getConnection();
		String sql = "select * from board where bidx="+bidx;
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		if(rs.next()) { 
			vo.setBidx(rs.getInt("bidx"));
			vo.setSubject(rs.getString("subject"));
			vo.setWriter(rs.getString("writer"));
			vo.setContent(rs.getString("content"));
			vo.setWriteday(rs.getString("writeday"));
		}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(psmt, conn, rs);
		}
							
	return vo;		
				
	}
	
	
	
}
