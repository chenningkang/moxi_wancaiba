package com.moxi.model;

import java.util.Date;

public class BannerLocation implements java.io.Serializable{

	private static final long serialVersionUID = 1L;
	private Integer id;
	private String bannerLocation;
	private Date createTime;
	private Date updateTime;
	private Integer isDelete;
	private Integer status;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getBannerLocation() {
		return bannerLocation;
	}

	public void setBannerLocation(String bannerLocation) {
		this.bannerLocation = bannerLocation;
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

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}
