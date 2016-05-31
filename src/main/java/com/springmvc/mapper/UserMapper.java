package com.springmvc.mapper;

import java.util.List;

import com.springmvc.entity.UserFormMap;
import com.springmvc.mapper.base.BaseMapper;


public interface UserMapper extends BaseMapper{

	public List<UserFormMap> findUserPage(UserFormMap userFormMap);
	
}
