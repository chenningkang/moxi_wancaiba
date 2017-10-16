package com.moxi.model;

import java.util.Date;

/**
 * 内容实体 类名: Content 创建人:lifan 时间：2017年8月2日 下午1:43:36
 * 
 * @version 1.0.0
 * 
 */
public class Content implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	private Integer id;// 内容主键
	private String title;// 标题
	private String description;// 简介
	private String content;// 内容
	private String tag;// 标签
	private String specialTopic;// 专题
	private Date createTime;// 创建时间
	private Date updateTime;// 更新时间
	private Integer channelId;// 频道id
	private Integer userId;// 用户id
	private Integer isDelete;// 是否删除0未删除1删除
	private Integer isTop;// 是否置顶0不置顶1置顶
	private Integer status;// 发布状态0不发布1发布
	private String editor;// 责任编辑
	private String editorValue;  //放置页面的缓存（编辑器里面的东西）
	private String staticUrl;

	public String getEditorValue() {
		return editorValue;
	}

	public void setEditorValue(String editorValue) {
		this.editorValue = editorValue;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
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

	public Integer getChannelId() {
		return channelId;
	}

	public void setChannelId(Integer channelId) {
		this.channelId = channelId;
	}

	public String getSpecialTopic() {
		return specialTopic;
	}

	public void setSpecialTopic(String specialTopic) {
		this.specialTopic = specialTopic;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}

	public Integer getIsTop() {
		return isTop;
	}

	public void setIsTop(Integer isTop) {
		this.isTop = isTop;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getEditor() {
		return editor;
	}

	public void setEditor(String editor) {
		this.editor = editor;
	}

	public String getStaticUrl() {
		return staticUrl;
	}

	public void setStaticUrl(String staticUrl) {
		this.staticUrl = staticUrl;
	}
}
