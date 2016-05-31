package com.springmvc.mapper;

import java.util.List;

import com.springmvc.entity.RoleFormMap;
import com.springmvc.mapper.base.BaseMapper;

public interface RoleMapper extends BaseMapper{
	public List<RoleFormMap> seletUserRole(RoleFormMap map);
	
	public void deleteById(RoleFormMap map);
}
