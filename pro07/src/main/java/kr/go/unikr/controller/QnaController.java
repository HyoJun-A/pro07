package kr.go.unikr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.go.unikr.DTO.QnaDTO;
import kr.go.unikr.service.QnaService;

@Controller
@RequestMapping("/qna/*")
public class QnaController {

	@Autowired
	QnaService qnaService;
	
	@GetMapping("list.do")
	public String qnaList(Model model) throws Exception {
		List<QnaDTO> list = qnaService.qnaList();
		model.addAttribute("list", list);
		return "qna/qnaList";
	}
	
	@GetMapping("detail.do")
	public String qnaDetail(@RequestParam("qno") int qno, Model model) throws Exception{
		QnaDTO dto = qnaService.qnaDetail(qno);
		model.addAttribute("dto", dto);
		return "qna/qnaDetail";
	}
}