package com.moxi.model;

import java.util.Date;

/**
 * 频道实体
 * 类名: Channel
 * 创建人:lifan 
 * 时间：2017年8月2日 下午1:43:23 
 * @version 1.0.0
 *
 */
public class Channel implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer id;// 频道主键
	private String name;// 频道名称
	private String description;// 频道描述，简称（英文）
	private Date createTime;// 创建时间
	private Date updateTime;// 更新时间
	private Integer isDelete;// 是否删除0未删除1删除
	private Integer parentId;// 父频道id
	private Integer userId;// 用户id
	private Integer  status;

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Integer getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

}
