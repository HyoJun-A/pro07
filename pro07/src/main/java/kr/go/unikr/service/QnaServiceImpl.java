package kr.go.unikr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.unikr.DTO.QnaDTO;
import kr.go.unikr.model.QnaDAO;

@Service
public class QnaServiceImpl implements QnaService {
	@Autowired
	QnaDAO qnaDAO;

	@Override
	public List<QnaDTO> qnaList() throws Exception {
		return qnaDAO.qnaList();
	}

	@Override
	public List<QnaDTO> qnaDetail(int pos) throws Exception {
		return qnaDAO.qnaDetail(pos);
	}

	@Override
	public QnaDTO qDetail(int qno) throws Exception {
		return qnaDAO.qDetail(qno);
	}

	@Override
	public void qnaEdit(QnaDTO dto) throws Exception {
		qnaDAO.qnaEdit(dto);
	}

	@Override
	public void qAdd(QnaDTO dto) throws Exception {
		qnaDAO.qAdd(dto);
	}

	@Override
	public void aAdd(QnaDTO dto) throws Exception {
		qnaDAO.aAdd(dto);
	}

	@Override
	public void qnaDel(int qno) throws Exception {
		qnaDAO.qnaDel(qno);
	}

}
