package kr.go.unikr.DTO;

import lombok.Data;

@Data
public class CardDTO {
	private int cno;
	private String title;
	private String file;
	private String path;
	private String regdate;
	private int visited;

}
