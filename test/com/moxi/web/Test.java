package com.moxi.web;

import java.util.HashSet;
import java.util.Set;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.moxi.model.Content;
import com.moxi.service.content.admin.IAdminContentService;
import com.moxi.util.TmGatherContentUtil;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/applicationContext.xml")
public class Test {

	
	@Autowired
	private IAdminContentService contentService;
	
	@org.junit.Test
	public void handel(){
		String url = "https://www.800820.net/3d/list_52.html";
		
		//第二步：根据URL获取网页源代码。
		Document document = Jsoup.parse(TmGatherContentUtil.getHtmlResourceByURL(url,"UTF-8"));
		
		Elements links2 = document.getElementsByClass("list");
		
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
		
		for (String string : urls) {
			try {
				String link = "https://www.800820.net"+string;
				//System.out.println(link);
				Document document2 = Jsoup.parse(TmGatherContentUtil.getHtmlResourceByURL(link,"UTF-8"));
				String title = document2.getElementsByTag("h2").get(0).text();
				//System.out.println(title);
				Elements content = document2.getElementsByClass("text");
				for (Element element : content) {
					element.getElementsByTag("p").empty();
				}
				String content2 = content.html();
				
				Content   content1  = new Content();
				content1.setTitle(title);
				content1.setContent(content2);
				content1.setTag("网络爬虫");
				content1.setEditor("非凡");
				content1.setChannelId(9);
				content1.setUserId(3);
				contentService.addDetails(content1);
				
			} catch (Exception e) {
				continue;
			}
		}
	}
	
	
}
