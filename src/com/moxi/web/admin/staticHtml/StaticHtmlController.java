package com.moxi.web.admin.staticHtml;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.WriteListener;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moxi.model.Content;
import com.moxi.service.content.admin.IAdminContentService;
import com.moxi.service.content.web.IWebContentService;
import com.moxi.util.TmStringUtils;

@Controller
@RequestMapping("/admin")
public class StaticHtmlController{
//	
	@Autowired
	private IAdminContentService contentService2;
	
	@Autowired
	private IWebContentService contentService;
	
	@ResponseBody
	@RequestMapping("/static1/{cid}")
	public String  staticContent(@PathVariable("cid") Integer cid,HttpServletRequest request,HttpServletResponse response){
		if (cid == null) {
			return "empty";
		}
		//id不为空时
		Content content = contentService.getTagContent(cid);
		if(content==null){
			return "notfound";
		}
		FileOutputStream fos = null;
		ServletContext sc = request.getServletContext();
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
				String ymd = new SimpleDateFormat("yyyy/MM/dd").format(new Date());
				String rpath = "pages/"+ymd;
				String path = request.getRealPath(rpath);
				File rootPath = new File(path);
				if(!rootPath.exists())rootPath.mkdirs();
				String name = cid+TmStringUtils.getRandomString(8)+".html";
				targetFile = new File(rootPath,name);
				staticUrl = rpath+"/"+name;
			}
			RequestDispatcher rd = sc.getRequestDispatcher("/list.jsp");
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
			contentService2.updateDetails(content);
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
