package kr.go.unikr.model;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.unikr.DTO.CardDTO;

@Repository
public class CardDAOImpl implements CardDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public void cardAdd(CardDTO dto) throws Exception {
		sqlSession.insert("card.cardAdd", dto);
	}
	
	
}
