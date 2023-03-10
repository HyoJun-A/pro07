package kr.go.unikr.model;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.unikr.DTO.UserDTO;

@Repository
public class UserRepositoryImpl implements UserRepository {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public UserDTO userLogin(UserDTO dto) throws Exception {
		return sqlSession.selectOne("user.userLogin", dto);
	}

	@Override
	public void signUp(UserDTO dto) throws Exception {
		sqlSession.insert("user.signUp", dto);
	}
	
	
	
}
