package kr.go.unikr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.unikr.DTO.CardDTO;
import kr.go.unikr.model.CardDAO;

@Service
public class CardServiceImpl implements CardService {
	
	@Autowired
	CardDAO cardDAO;

	@Override
	public void cardAdd(CardDTO dto) throws Exception {
		// TODO Auto-generated method stub
		
	} 
	
	

}
