package kr.go.unikr.model;

import java.util.List;


import kr.go.unikr.DTO.SampleDTO;

public interface SampleDAO {
	public List<SampleDTO> sampleList() throws Exception;

}
