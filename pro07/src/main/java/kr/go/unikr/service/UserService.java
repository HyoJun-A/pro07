package kr.go.unikr.service;

import kr.go.unikr.DTO.UserDTO;

public interface UserService {
	public UserDTO userLogin(UserDTO dto) throws Exception;
	public void signUp(UserDTO dto) throws Exception;
}
