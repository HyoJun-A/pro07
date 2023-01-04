package kr.go.unikr.service;

import java.util.List;

import kr.go.unikr.DTO.QnaDTO;

public interface QnaService {
	public List<QnaDTO> qnaList() throws Exception;
	public QnaDTO qnaDetail(int qno) throws Exception;
}
