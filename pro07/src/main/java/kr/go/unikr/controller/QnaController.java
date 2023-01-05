package kr.go.unikr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	public String qnaDetail(@RequestParam("pos") int pos, Model model) throws Exception{
		List<QnaDTO> list = qnaService.qnaDetail(pos);
		model.addAttribute("list", list);
		return "qna/qnaDetail";
	}
	
	@GetMapping("editForm.do")
	public String qnaEditForm(@RequestParam("qno") int qno, Model model) throws Exception {
		QnaDTO dto = qnaService.qDetail(qno);
		model.addAttribute("dto", dto);
		return "qna/qnaEdit";
	}
	
	@PostMapping("edit.do")
	public String qnaEdit(QnaDTO dto, Model model) throws Exception{
		qnaService.qnaEdit(dto);
		return "redirect:list.do";
	}
	
	@GetMapping("addForm.do")
	public String addForm(@RequestParam("lev") int lev, @RequestParam("pos") int pos, Model model) throws Exception{
		model.addAttribute("lev", lev);
		model.addAttribute("pos", pos);
		return "qna/qnaAdd";
	}
	
	@PostMapping("add.do")
	public String qnaAdd(QnaDTO dto, Model model) throws Exception{
		//Lev : 질문 글, 답변 글 구분 
		if(dto.getLev() == 0) {
			qnaService.qAdd(dto);
		} else {
			qnaService.aAdd(dto);
		}
		return "redirect:list.do";
	}
	
	@GetMapping("del.do")
	public String qnaDel(@RequestParam("qno") int qno) throws Exception{
		qnaService.qnaDel(qno);
		return "redirect:list.do";
	}
}
