package com.moxi.tag;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.moxi.model.LinkManager;
import com.moxi.model.MXParams;
import com.moxi.service.friendLink.web.IWebFriendLinkService;
import com.moxi.util.TmStringUtils;

/**
 * 友情链接tag<BR>
 * FriendlyLinkBeanTag<BR>
 * 创建人:lifan<BR>
 * 时间：2017年9月3日-下午5:13:54
 * @version 1.0.0
 *
 */
public class FriendlyLinkBeanTag extends BodyTagSupport {
	
	private static final long serialVersionUID = 1L;
	private String var;// 变量的对象名称

	public int doStartTag() throws JspException {
		ServletContext context = this.pageContext.getServletContext();
		WebApplicationContext ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(context);
		IWebFriendLinkService friendLinkService = (IWebFriendLinkService) ctx.getBean("webFriendLinkServiceImpl");
		MXParams params = new MXParams();
		List<LinkManager> links = friendLinkService.findWebFriendLinks(params);
		if (TmStringUtils.isEmpty(var))var = "friendLink";
		pageContext.setAttribute(var, links);
		return SKIP_BODY;
	}

	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}

	public void setVar(String var) {
		this.var = var;
	}
}
