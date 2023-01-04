package kr.go.unikr.DTO;

import lombok.Data;

@Data
public class QnaDTO {
	private int qno;
	private String title;
	private String content;
	private String author;
	private String credate;
	private int visited;
	private int lev;
	private int pos;
}
