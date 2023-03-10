package kr.go.unikr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.go.unikr.DTO.BoardDTO;
import kr.go.unikr.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Autowired
	BoardService boardService;
	
	@GetMapping("list.do")
	public String boardList(Model model) throws Exception{
		List<BoardDTO> list = boardService.boardList();
		model.addAttribute("list", list);
		return "board/boardList";
	}
	
	@GetMapping("detail.do")
	public String boardDetail(@RequestParam("bno") int bno, Model model) throws Exception{
		boardService.vsUp(bno);
		BoardDTO dto = boardService.boardDetail(bno);
		model.addAttribute("dto", dto);
		return "board/boardDetail";
	}
	
	@GetMapping("del.do")
	public String boardDel(@RequestParam("bno") int bno) throws Exception{
		boardService.boardDel(bno);
		return "redirect:list.do";
	}
	
	@GetMapping("editForm.do")
	public String boardEditForm(@RequestParam("bno") int bno, Model model) throws Exception{
		BoardDTO dto = boardService.boardDetail(bno);
		model.addAttribute("dto", dto);
		return "board/boardEdit";
	}
	
	@PostMapping("edit.do")
	public String boardEdit(BoardDTO dto, Model model) throws Exception{
		boardService.boardEdit(dto);
		return "redirect:list.do";
	}

	@GetMapping("addForm.do")
	public String boardForm() {
		return "board/boardAdd";
	}
	
	@PostMapping("add.do")
	public String boardAdd(BoardDTO dto, Model model) throws Exception{
		boardService.boardAdd(dto);
		return "redirect:list.do";
	}
}
