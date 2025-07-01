package board;

import common.DBConnPool;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO extends DBConnPool {
    public BoardDAO() {
        super();
    }

    // 1. 게시물 목록 조회
    public List<BoardDTO> getBoardList() {
        List<BoardDTO> boardList = new ArrayList<>();
        
        try {
            String sql = "SELECT * FROM board ORDER BY id DESC";
            psmt = con.prepareStatement(sql);
            ResultSet rs = psmt.executeQuery();

            while (rs.next()) {
                BoardDTO board = new BoardDTO();
                board.setId(rs.getInt("id"));
                board.setTitle(rs.getString("title"));
                board.setContent(rs.getString("content"));
                board.setWriter(rs.getString("writer"));
                board.setRegdate(rs.getDate("regdate"));
                boardList.add(board);
                
            }
            rs.close();
            psmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return boardList;
    }

    // 2. 게시글 작성
    public int insertBoard(BoardDTO dto) {
        int result = 0;
        String sql = "INSERT INTO board (id, title, content, writer, regdate) VALUES (board_seq.NEXTVAL, ?, ?, ?, SYSDATE)";

        try {
            psmt = con.prepareStatement(sql);
            psmt.setString(1, dto.getTitle());
            psmt.setString(2, dto.getContent());
            psmt.setString(3, dto.getWriter());
            result = psmt.executeUpdate();
            psmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    // 3. 게시글 상세 조회
    public BoardDTO getBoardById(int id) {
        String sql = "SELECT * FROM board WHERE id = ?";
        BoardDTO board = null;

        try {
            psmt = con.prepareStatement(sql);
            psmt.setInt(1, id);
            ResultSet rs = psmt.executeQuery();

            if (rs.next()) {
                board = new BoardDTO();
                board.setId(rs.getInt("id"));
                board.setTitle(rs.getString("title"));
                board.setWriter(rs.getString("writer"));
                board.setContent(rs.getString("content"));
                board.setRegdate(rs.getDate("regdate"));
            }
            rs.close();
            psmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return board;
    }

    // 4. 게시글 수정
    public boolean updateBoard(int id, String title, String content, String writer) {
        boolean isUpdated = false;
        String sql = "UPDATE board SET title = ?, content = ?, writer = ? WHERE id = ?";
      
        try {
            psmt = con.prepareStatement(sql);
            psmt.setString(1, title);
            psmt.setString(2, content);
            psmt.setString(3, writer);
            psmt.setInt(4, id);

            int rows = psmt.executeUpdate();
            if (rows > 0) {
                isUpdated = true;
            }
            psmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isUpdated;
    }
    
    //5.상시페이지에서 게시글 삭제하는 메서드
	public boolean deleteBoard(int id) {
		// TODO Auto-generated method stub
		
		boolean isDelete = false;
    	
    	try {
			String sql ="DELETE FROM board WHERE id = ?";
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, id);
			
			int row = psmt.executeUpdate();
			
			if(row > 0) {
				isDelete = true;
			}
			psmt.close();
			con.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    	return isDelete;
    }

}
