package com.springmvc.entity;

import com.springmvc.annotation.TableSeg;
import com.springmvc.util.FormMap;



/**
 * 实体表
 */
@TableSeg(tableName = "userlogin", id="id")
public class UserLoginFormMap extends FormMap<String,Object>{

	/**
	 *@descript
	 *@author lanyuan
	 *@date 2015年3月29日
	 *@version 1.0
	 */
	private static final long serialVersionUID = 1L;

}
