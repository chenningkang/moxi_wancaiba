package com.moxi.model;

import java.util.Date;

public class Role implements java.io.Serializable{

	private static final long serialVersionUID = 1L;
	private Integer id;//主键id
	private String name;//角色名称
	private Date createTime;//创建时间
	private Integer isDelete;//是否删除

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}

}
