package common;

public class MemberDAO extends DBConnPool {
	
	public MemberDAO() {
		super(); //DB 연결 
	}
	
	//1. 회원 정보 조회(로그인)
	public MemberDTO getMemberDTO(String uid, String upass) {
		MemberDTO dto = new MemberDTO();
		
		//id password 가 일치하는 데이터의 값 조회.
		
		String query = "SELECT * FROM MEMBER WHERE id = ? AND password = ?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, uid);
			psmt.setString(2, upass);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPassword(rs.getString("password"));
				dto.setName(rs.getString("name"));
				dto.setRegidate(rs.getString("regidate"));
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return dto;
	}
	//2. 회원 정보 조회 (수정 전)
	public MemberDTO getMemberById(String uid) {
		MemberDTO dto = new MemberDTO();
		String query = "SELECT id, password, name FROM MEMBER WHERE id = ?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, uid);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPassword(rs.getString("password"));
				dto.setName(rs.getString("name"));
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return dto;
	}
	//3. 회원 정보 수정
	public int updateMember(String id, String password, String name) {
		int result = 0;
		String query = "Update member SET password = ?, name = ? WHERE id = ? ";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, password);
			psmt.setString(2, name);
			psmt.setString(3,id);
			
			
			result = psmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}
	
	//4. 회원 탈퇴
	public int deleteMember(String id) {
		int result = 0;
		
		String query = "DELETE FROM MEMBER WHERE id = ?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, id);
			result = psmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}

}