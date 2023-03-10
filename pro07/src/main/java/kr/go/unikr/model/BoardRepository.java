package kr.go.unikr.model;

import java.util.List;

import kr.go.unikr.DTO.BoardDTO;

public interface BoardRepository {
	public List<BoardDTO> boardList() throws Exception;
	public void vsUp(int bno) throws Exception;
	public BoardDTO boardDetail(int bno) throws Exception;
	public void boardDel(int bno) throws Exception;
	public void boardEdit(BoardDTO dto) throws Exception;
	public void boardAdd(BoardDTO dto) throws Exception;
}
