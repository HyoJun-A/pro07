package kr.go.unikr.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.unikr.DTO.BoardDTO;

@Repository
public class BoardRepositoryImpl implements BoardRepository {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<BoardDTO> boardList() throws Exception {
		return sqlSession.selectList("board.boardList");
	}

	@Override
	public void vsUp(int bno) throws Exception {
		sqlSession.update("board.vsUp", bno);
		
	}

	@Override
	public BoardDTO boardDetail(int bno) throws Exception {
		return sqlSession.selectOne("board.boardDetail", bno);
	}

	@Override
	public void boardDel(int bno) throws Exception {
		sqlSession.delete("board.boardDel", bno);
	}

	@Override
	public void boardEdit(BoardDTO dto) throws Exception {
		sqlSession.update("board.boardEdit", dto);
	}

	@Override
	public void boardAdd(BoardDTO dto) throws Exception {
		sqlSession.insert("board.boardAdd", dto);
		
	}
	
	
}
