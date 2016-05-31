package com.springmvc.entity;

import com.springmvc.annotation.TableSeg;
import com.springmvc.util.FormMap;



/**
 * 实体表
 */
@TableSeg(tableName = "ly_role", id="id")
public class RoleFormMap extends FormMap<String,Object>{

	/**
	 *@descript
	 *@author jerrychc
	 *@date 2016年5月31日
	 *@version 1.0
	 */
	private static final long serialVersionUID = 1L;

}
