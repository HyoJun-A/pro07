package kr.go.unikr.model;

import java.util.List;

import kr.go.unikr.DTO.QnaDTO;

public interface QnaDAO {
	public List<QnaDTO> qnaList() throws Exception;
	public List<QnaDTO> qnaDetail(int pos) throws Exception;
	public QnaDTO qDetail(int qno) throws Exception;
	public void qnaEdit(QnaDTO dto) throws Exception;
	public void qAdd(QnaDTO dto) throws Exception;
	public void aAdd(QnaDTO dto) throws Exception;
	public void qnaDel(int qno) throws Exception;
	public void visitUp(int pos) throws Exception;
}
