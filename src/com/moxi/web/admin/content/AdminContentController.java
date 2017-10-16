package com.moxi.web.admin.content;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.WriteListener;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.moxi.core.BaseController;
import com.moxi.core.JsonResult;
import com.moxi.core.ServiceResult;
import com.moxi.model.AdminUser;
import com.moxi.model.Channel;
import com.moxi.model.Content;
import com.moxi.model.MXParams;
import com.moxi.service.channel.admin.IAdminChannelService;
import com.moxi.service.content.admin.IAdminContentService;
import com.moxi.service.content.web.IWebContentService;
import com.moxi.util.TmGatherContentUtil;
import com.moxi.util.TmStringUtils;

/**
 * 内容管理
 * ContentController
 * 创建人:lifan
 * 时间：2017年07月17日 11:02:01
 * @version 1.0.0
 * 
 */
@Controller
@RequestMapping("/admin/content")
public class AdminContentController   extends BaseController{
	
	@Autowired
	private IAdminContentService contentService;
	
	@Autowired
	private IAdminChannelService channelService;
	
	@Autowired
	private IWebContentService webContentService;
	
	/**
	 * 跳转到列表页面
	 * 方法名: list 
	 * 创建人: lifan 
	 * 时间：2017年7月17日 上午11:03:21
	 * @param @param params
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/list")
	public String list(MXParams params){
		return "admin/content/list";
	}
	
	/**
	 * 模板页面
	 * 方法名: template 
	 * 创建人: lifan 
	 * 时间：2017年7月17日 上午11:03:35
	 * @param @param params
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/template")
	public ModelAndView template(MXParams params){
		ModelAndView modelAndView = new ModelAndView();
		List<HashMap<String, Object>> contents = contentService.findContents(params);//拿到内容
		int count = contentService.count(params);//拿到内容总数
		modelAndView.setViewName("admin/content/template");//跳转到模板页面
		modelAndView.addObject("datas",contents);//内容缓存到作用于
		modelAndView.addObject("itemCount",count);//内容总数缓存起来
		return modelAndView;
	}
	
	/**
	 * 更新
	 * 方法名: update 
	 * 创建人: lifan 
	 * 时间：2017年7月20日 下午2:52:23
	 * @param @param content
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String update(Content content){
		contentService.update(content);
		return "success";
	}
	
	/**
	 * 删除
	 * 方法名: delete 
	 * 创建人: lifan 
	 * 时间：2017年7月20日 下午2:52:32
	 * @param @param params
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	public String delete(MXParams params){
		contentService.delete(params);
		return "success";
	}
	
	/**
	 * 批量删除
	 * 方法名: deleteSelected 
	 * 创建人: lifan 
	 * 时间：2017年8月24日 下午5:31:15
	 * @param @param id
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping(value="/deleteSelected",method=RequestMethod.POST)
	public String deleteSelected(String[] id){
		contentService.deleteSelected(id);
		return "success";
	}
	
	/**
	 * 添加
	 * 方法名: save 
	 * 创建人: lifan 
	 * 时间：2017年7月21日 上午11:58:19
	 * @param @param params
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/add")
	public ModelAndView add(MXParams params){
		ModelAndView modelAndView = new ModelAndView();
		List<Channel> channels = channelService.findAllChannels();
		modelAndView.addObject("channels", channels);
		modelAndView.setViewName("admin/content/add");
		return modelAndView;
	}
	
	
	/**
	 * 编辑
	 * 方法名: edit 
	 * 创建人: lifan 
	 * 时间：2017年7月21日 下午4:37:51
	 * @param @param params
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/edit/{id}")
	public ModelAndView edit(@PathVariable("id")Integer id){
		ModelAndView modelAndView = new ModelAndView();
		if (id!=null) {
			HashMap<String, Object> content = contentService.getContentById(id);//拿到内容
			List<Channel> channels = channelService.findAllChannels();
			modelAndView.addObject("editContent", content);
			modelAndView.addObject("channels", channels);
			System.out.println(content);
		}
		modelAndView.setViewName("admin/content/add");
		return modelAndView;
	}
	
	/**
	 * 保存数据 
	 * 方法名: save 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:29:14
	 * @param @param content
	 * @param @param request
	 * @param @return
	 * @return JsonResult
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping("/save")
	public JsonResult save(Content  content, HttpServletRequest  request ){
		JsonResult jsonResult = new JsonResult();
		Content   content1  = new Content();
		content1.setId(content.getId());
		content1.setTitle(content.getTitle());
		content1.setContent(content.getEditorValue());
		content1.setTag(content.getTag());
		content1.setEditor(content.getEditor());
		content1.setChannelId(content.getChannelId());
		AdminUser user= (AdminUser) session.getAttribute("session_user");
		content1.setUserId(user.getId());
		if(content1.getId()==null){
			//表示新增
			ServiceResult<Object> result =contentService.addDetails(content1);
			jsonResult.setStateCode(result.getStateCode());
			jsonResult.setMessage(result.getMessage());
			return jsonResult;
		}else{
			//表示修改
			ServiceResult<Object> result =contentService.updateDetails(content1);
			jsonResult.setStateCode(result.getStateCode());
			jsonResult.setMessage(result.getMessage());
			return jsonResult;
		}
		
	}
	
	/**
	 * 进入爬虫页面
	 * 方法名: gatherList 
	 * 创建人: lifan 
	 * 时间：2017年8月28日 下午3:47:58
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/gatherList")
	public ModelAndView gatherList(){
		ModelAndView modelAndView = new ModelAndView();
		List<Channel> channels = channelService.findAllChannels();
		modelAndView.addObject("channels", channels);
		modelAndView.setViewName("admin/gather/gather");
		return modelAndView;
	}
	
	/**
	 * 网络爬虫执行方法
	 * 方法名: incomeContent 
	 * 创建人: lifan 
	 * 时间：2017年8月28日 下午1:28:32
	 * @param 
	 * @return void
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping("/gather")
	public JsonResult incomeContent(MXParams mxParams,HttpServletRequest request){
		//String url = "https://www.800820.net/3d/list_9.html";
		JsonResult jsonResult = new JsonResult();
		//第二步：根据URL获取网页源代码。
		Document document = Jsoup.parse(TmGatherContentUtil.getHtmlResourceByURL(mxParams.getGatherUrl(),"UTF-8"));
		//采集class为list的内容
		Elements links2 = document.getElementsByClass("list");
		//用一个set集合来装载a链接地址
		Set<String> urls = new HashSet<String>();
		for (Element element : links2) {
			Elements href2 = element.getElementsByTag("li");
			for (Element element2 : href2) {
				//String title = element2.text();
				Elements alink = element2.getElementsByTag("a");
				String href = alink.attr("href");
				urls.add(href);
				//System.out.println(title+"=="+href);
			}
		}
		//通过a链接进入内容页，爬取内容页信息
		for (String string : urls) {
			try {
				String link = mxParams.getOrgUrl()+string;
				//System.out.println(link);
				Document document2 = Jsoup.parse(TmGatherContentUtil.getHtmlResourceByURL(link,"UTF-8"));
				//拿到title
				String title = document2.getElementsByTag("h2").get(0).text();
				//System.out.println(title);
				Elements content = document2.getElementsByClass("text");
				for (Element element : content) {
					element.getElementsByTag("p").empty();
				}
				//拿到爬取到的带标签的内容
				String content2 = content.html();
				
				//开始保存数据库
				Content   content1  = new Content();
				content1.setTitle(title);
				content1.setContent(content2);
				content1.setTag(mxParams.getTagName());
				content1.setChannelId(mxParams.getChannelId());
				//拿到session中的用户id
				AdminUser user = (AdminUser) request.getSession().getAttribute(SESSION_USER);
				content1.setUserId(user.getId());
				//保存到数据库中
				ServiceResult<Object> result =contentService.addDetails(content1);
				jsonResult.setStateCode(result.getStateCode());
				jsonResult.setMessage(result.getMessage());
				//return jsonResult;
			} catch (Exception e) {
			continue;
			}
		}
		return jsonResult;
	}
	
	/**
	 * <BR>
	 * 方法名：staticContent<BR>
	 * 创建人：lifan <BR>
	 * 时间：2017年9月3日-下午5:01:18
	 * @param cid
	 * @param request
	 * @param response
	 * @return String
	 * @exception 
	 * @since  1.0.0
	 */
	@ResponseBody
	@RequestMapping("/staticHtml/{cid}")
	public String  staticContent(@PathVariable("cid") Integer cid,HttpServletRequest request,HttpServletResponse response){
		
		if (cid == null) {
			return "empty";
		}
		
		System.out.println(request.getAttribute("cid"));
		//id不为空时
		Content content = webContentService.getTagContent(cid);
		if(content==null){
			return "notfound";
		}
		FileOutputStream fos = null;
		ServletContext sc = request.getSession().getServletContext();
		//拿到静态资源的地址
		String staticUrl = (String) content.getStaticUrl();
		File targetFile = null;
		try {
			if(TmStringUtils.isNotEmpty(staticUrl)){
				String path = request.getRealPath("/");
				File rootPath = new File(path);
				targetFile = new File(rootPath,staticUrl);
			}else{
				//格式话文件夹
				String ymd = new SimpleDateFormat("yyyyMMdd").format(new Date());
				String rpath = "sp/"+ymd;
				String path = request.getRealPath(rpath);
				File rootPath = new File(path);
				if(!rootPath.exists())rootPath.mkdirs();
				String name = cid+TmStringUtils.getRandomString(8)+".html";
				targetFile = new File(rootPath,name);
				staticUrl = rpath+"/"+name;
			}
			RequestDispatcher rd = sc.getRequestDispatcher("/staticHtml.jsp");
			final ByteArrayOutputStream os = new ByteArrayOutputStream();
			final ServletOutputStream stream = new ServletOutputStream() {//匿名内部类，回调函数
				public void write(byte[] data, int offset, int length) {
					os.write(data, offset, length);
				}
				public void write(int b) throws IOException {
					os.write(b);
				}
				@Override
				public boolean isReady() {
					return false;
				}
				@Override
				public void setWriteListener(WriteListener arg0) {
				}
			};
			final PrintWriter pw = new PrintWriter(new OutputStreamWriter(os,"gbk"));
			HttpServletResponse rep = new HttpServletResponseWrapper(response) {
				public ServletOutputStream getOutputStream() {
					return stream;
				}

				public PrintWriter getWriter() {
					return pw;
				}
			};
			
			//存放id
			request.setAttribute("cid",cid);
			rd.include(request, rep);//发起请求
			pw.flush();
			fos = new FileOutputStream(targetFile);
			os.writeTo(fos);//讲源代码写入磁盘文件中
			//静态化的url更新数据表中
			content.setStaticUrl(staticUrl);
			contentService.updateDetails(content);
			return "success";
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			return "error";
		} catch (ServletException e) {
			e.printStackTrace();
			return "error";
		} catch (IOException e) {
			e.printStackTrace();
			return "error";
		} finally {
			try {
				fos.close();
			} catch (Exception e) {
			}
		}
	}
}
