package kr.go.unikr;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RestService {
	
	@Autowired
	RestDAO restDAO;

	public Map<String, String> getTest4(String id, String pw){
		Map<String, String> res = new HashMap<>();
		res.put(id, pw);
		return res;
	}
	
	public List<String> getTest5(String id){
		List<String> lst = new ArrayList<String>();
		for(int i=0; i<5; i++) {
			lst.add(id+i);
		}
		return lst;
	}
}
