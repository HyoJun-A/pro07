package kr.go.unikr.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.unikr.DTO.QnaDTO;

@Repository
public class QnaDAOImpl implements QnaDAO {
	@Autowired
	SqlSession session;

	@Override
	public List<QnaDTO> qnaList() throws Exception {
		return session.selectList("qna.qnaList");
	}

	@Override
	public QnaDTO qnaDetail(int qno) throws Exception {
		return session.selectOne("qna.qnaDetail", qno);
	}
	

}
