package kr.go.unikr.DTO;

import lombok.Data;

@Data
public class BoardDTO {
	private int bno;
	private String title;
	private String content;
	private String credate;
	private int visited;
}
