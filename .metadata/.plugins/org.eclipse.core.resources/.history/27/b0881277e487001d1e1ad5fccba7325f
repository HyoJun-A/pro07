package kr.go.unikr.service;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;


import kr.go.unikr.DTO.UserDTO;
import kr.go.unikr.model.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserRepository userRepository;
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;

	@Override
	public UserDTO userLogin(UserDTO dto) throws Exception {
		return userRepository.userLogin(dto);
	}

	@Override
	public void signUp(UserDTO dto) throws Exception {
		userRepository.signUp(dto);
	}
	
	

}
