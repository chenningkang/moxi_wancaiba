package com.moxi.tag;

import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.moxi.model.Channel;
import com.moxi.model.Content;
import com.moxi.service.channel.web.IWebChannelService;
import com.moxi.service.content.web.IWebContentService;
import com.moxi.util.TmStringUtils;

/**
 * 内容tag
 * 类名: ContentBeanTag
 * 创建人:lifan 
 * 时间：2017年9月1日 下午5:27:15 
 * @version 1.0.0
 *
 */
public class ChannelListTag extends BodyTagSupport {
	
	private static final long serialVersionUID = 1L;
	private String var;// 变量的对象名称

	public int doStartTag() throws JspException {
		ServletContext context = this.pageContext.getServletContext();
		WebApplicationContext ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(context);
		IWebChannelService channelService = (IWebChannelService) ctx.getBean("webChannelServiceImpl");
		List<HashMap<String, Object>> channerList = channelService.findWebAllChannels();
		HashMap<String, Object> listMap = new HashMap<String, Object>();
		//以键值对的形式存放到map中，可通过key直接拿到所需的id
		for (int i = 0; i < channerList.size(); i++) {
			listMap.put((String) channerList.get(i).get("description"), channerList.get(i).get("id"));
		}
		if (TmStringUtils.isEmpty(var))var = "channels";
		pageContext.setAttribute(var, listMap);
		return SKIP_BODY;
	}

	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}

	public void setVar(String var) {
		this.var = var;
	}
	
}
