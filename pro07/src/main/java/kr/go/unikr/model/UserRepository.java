package kr.go.unikr.model;

import java.util.List;

import kr.go.unikr.DTO.UserDTO;

public interface UserRepository {
	public UserDTO userLogin(UserDTO dto) throws Exception;
	public void signUp(UserDTO dto) throws Exception;
	
	
}
