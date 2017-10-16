package com.moxi.web;
import java.util.HashMap;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.moxi.model.Banner;
import com.moxi.model.MXParams;
import com.moxi.service.banner.web.IWebBannerService;
import com.moxi.service.channel.web.IWebChannelService;
import com.moxi.util.TmFileUtil;

/**
 * 首页控制层
 * 类名: IndexController
 * 创建人:lifan 
 * 时间：2017年7月17日 下午1:31:31 
 * @version 1.0.0
 *
 */
@Controller
public class WcbIndexController {

	@Autowired
	private IWebChannelService channelService;
	
	@Autowired
	private IWebBannerService bannerService;
	
	
	@RequestMapping("/")
	public ModelAndView webIndex(HttpServletRequest request,HttpServletResponse response){
		ModelAndView modelAndView = new ModelAndView();
		
		List<HashMap<String, Object>> channerList = channelService.findWebAllChannels();
		HashMap<String, Object> listMap = new HashMap<String, Object>();
		//以键值对的形式存放到map中，可通过key直接拿到所需的id
		for (int i = 0; i < channerList.size(); i++) {
			listMap.put((String) channerList.get(i).get("description"), channerList.get(i).get("id"));
		}
		
		//把频道信息放入到application中,只要容器不关闭，数据就会一直存在
		ServletContext application = request.getServletContext();
		application.setAttribute("channelList", listMap);
		modelAndView.setViewName("web/wcbindex");
		return modelAndView;
	}
	
	
	/**
	 * 移动端页面跳转
	 * 方法名: mobileIndex 
	 * 创建人: lifan 
	 * 时间：2017年8月10日 上午10:34:27
	 * @param @param request
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/m")
	public ModelAndView mobileIndex(HttpServletRequest request){
		ModelAndView modelAndView = new ModelAndView();
		//拿到所有的频道信息
		List<HashMap<String, Object>> channerList = channelService.findWebAllChannels();
		HashMap<String, Object> listMap = new HashMap<String, Object>();
		//以键值对的形式存放到map中，可通过key直接拿到所需的id
		for (int i = 0; i < channerList.size(); i++) {
			listMap.put((String) channerList.get(i).get("description"), channerList.get(i).get("id"));
		}
		
		//把频道信息放入到application中,只要容器不关闭，数据就会一直存在
		ServletContext application = request.getServletContext();
		application.setAttribute("channelList", listMap);
		
		//把频道信息放入到session中
		//request.getSession().setAttribute("channelList", listMap);
		//跳转到web首页
		modelAndView.setViewName("mobile/index");
		return modelAndView;
	}
	
	
	/**
	 * 后台首页跳转
	 * 方法名: adminIndex 
	 * 创建人: lifan 
	 * 时间：2017年8月3日 下午1:10:07
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/admin/index")
	public String adminIndex(){
		return "admin/index";
	}
}
