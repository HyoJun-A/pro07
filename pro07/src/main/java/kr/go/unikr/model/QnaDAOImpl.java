package kr.go.unikr.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
	@Transactional
	public List<QnaDTO> qnaDetail(int pos) throws Exception {
		session.update("qna.visitUp", pos);
		return session.selectList("qna.qnaDetail", pos);
	}

	@Override
	public QnaDTO qDetail(int qno) throws Exception {
		return session.selectOne("qna.qDetail", qno);
	}

	@Override
	public void qnaEdit(QnaDTO dto) throws Exception {
		session.update("qna.qnaEdit", dto);
	}

	@Override
	public void qAdd(QnaDTO dto) throws Exception {
		session.insert("qna.qAdd", dto);
	}

	@Override
	public void aAdd(QnaDTO dto) throws Exception {
		session.insert("qna.aAdd", dto);
	}

	@Override
	public void qnaDel(int qno) throws Exception {
		session.delete("qna.qnaDel", qno);
		
	}

	@Override
	public void visitUp(int qno) throws Exception {
		session.update("qna.visitUp", qno);
	}
	
	
	
}
