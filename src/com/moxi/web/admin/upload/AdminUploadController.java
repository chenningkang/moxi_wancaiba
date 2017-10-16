package com.moxi.web.admin.upload;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.moxi.util.TmFileUtil;
import com.moxi.util.TmStringUtils;

/**
 * 文件上传控制层
 * 类名: AdminUploadController
 * 创建人:lifan 
 * 时间：2017年8月8日 下午2:47:27 
 * @version 1.0.0
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminUploadController {

	/**
	 * 文件上传方法
	 * 方法名: lfupload 
	 * 创建人: lifan 
	 * 时间：2017年8月8日 下午2:47:35
	 * @param @param file
	 * @param @param request
	 * @param @return
	 * @param @throws IllegalStateException
	 * @param @throws IOException
	 * @return Map<String,Object>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/upload")
	@ResponseBody
	public Map<String, Object> mxupload(@RequestParam("doc")MultipartFile file,HttpServletRequest request) throws IllegalStateException,IOException{
		//从前台传进目录名称
		String directory = request.getParameter("dir");
		//没有传入的时候就默认选择创建adImgs
		if (TmStringUtils.isEmpty(directory))directory = "adImgs";
		String rootDir = "resources/images/"+directory;
		//拼接完整的上传路径
		String realPath = request.getRealPath(rootDir);
		//System.out.println("================="+realPath);
		File dirPath = new File(realPath);
		//自动创建上传的目录
		if (!dirPath.exists())dirPath.mkdirs();
		//拿到文件原始名字
		String oldName = file.getOriginalFilename();
		//拿到前台传过来的oldName参数
		String oldFileName = request.getParameter("oldName");
		//原始文件的后缀
		String ext = TmFileUtil.getExtNoPoint(oldName);
		//定义新名字
		String newName = null;
		//根据原始文件名判断是不是已经上传过
		if (TmStringUtils.isNotEmpty(oldFileName)) {
			newName = TmFileUtil.getNotExtName(oldFileName)+"."+ext;
		}else {
			//新文件名用日期加随机数的方式命名
			newName = TmFileUtil.generateFileName(oldName, 5, "yyyyMMddHHmmss");
		}
		//目标文件
		File targeFile = new File(dirPath, newName);
		//文件上传
		file.transferTo(targeFile);
		//将文件信息存入map中
		HashMap<String, Object> map = new HashMap<String,Object>();
		map.put("oldName", oldName);//文件的原始名字
		map.put("newName", newName);//文件的新名字
		map.put("exe", TmFileUtil.getExtNoPoint(oldName));//文件的后缀
		map.put("size", file.getSize());//获取文件的真实大小
		map.put("sizeString", TmFileUtil.countFileSize(file.getSize()));//获取文件转换后的大小
		map.put("url", directory+"/"+newName);//获取文件的目录
		return map;
	}
}
