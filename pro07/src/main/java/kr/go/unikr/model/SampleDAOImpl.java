package kr.go.unikr.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.unikr.DTO.SampleDTO;

@Repository
public class SampleDAOImpl implements SampleDAO{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<SampleDTO> sampleList() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("sample.sampleList");
	}
	
}
