package kr.go.unikr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.unikr.DTO.SampleDTO;
import kr.go.unikr.model.SampleDAO;

@Service
public class SampleServiceImpl implements SampleService {
	
	@Autowired
	SampleDAO sampleDAO;

	@Override
	public List<SampleDTO> sampleList() throws Exception {
		return sampleDAO.sampleList();
	}
	
	

}
