package kr.go.unikr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.unikr.DTO.BoardDTO;
import kr.go.unikr.model.BoardRepository;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardRepository boardRepository;

	@Override
	public List<BoardDTO> boardList() throws Exception {
		return boardRepository.boardList();
	}

	@Override
	public void vsUp(int bno) throws Exception {
		boardRepository.vsUp(bno);
		
	}

	@Override
	public BoardDTO boardDetail(int bno) throws Exception {
		return boardRepository.boardDetail(bno);
	}

	@Override
	public void boardDel(int bno) throws Exception {
		boardRepository.boardDel(bno);
	}

	@Override
	public void boardEdit(BoardDTO dto) throws Exception {
		boardRepository.boardEdit(dto);
	}

	@Override
	public void boardAdd(BoardDTO dto) throws Exception {
		boardRepository.boardAdd(dto);
		
	}
	
	

}
