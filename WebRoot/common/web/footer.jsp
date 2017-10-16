<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="mx" uri="/WEB-INF/tld/mx.tld"%>
<div class="fix"></div>

<div class="box" style="width:1001px">
	<div class="footAd1">
		<ul id="c_pic">
			<c:forEach items="${footBanners}" var="fb">
				<li>
					<a href="${fb.urlLink}" target='_blank'><img src="${fb.path}" alt="${fb.name}" width="${fb.width}" height="${fb.height}" /></a>
				</li>
			</c:forEach>
		</ul>
	</div>
</div>

<!-- 友情链接 -->
<mx:friendLinkBean/>
<div class="box">
	<div class="flinkbox">
		<div class="flinknm">
			<span>友情链接:</span>
		</div>
		<div class="flink">
			<ul>
				<c:forEach items="${friendLink}" var="flk">
					<li><a href="${flk.url}" target='_blank'>${flk.description}</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>
<!-- 免责申明 -->
<div class="box">
	<div id="footer">
		<strong>免责声明：</strong>访问本站表明您同意：本站所有数据与资料、任何广告仅供您谨慎参考，本站不承担您的任何损失和责任
		<br/>广告联系QQ：1111111111(广告专用) E_mail：1111111111@111.com <br/>
		<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1263502035'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s22.cnzz.com/z_stat.php%3Fid%3D1263502035%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));</script>
		Copyright &copy; 2017 - 2027 &nbsp;&nbsp;&nbsp;<a href="https://m.caipiaoq.com/" target="_blank">手机版</a><br/>
		<a href="https://www.caipiaoq.com/" target="_blank">www.chaipiaoq.com</a>
 		<a href="http://www.miibeian.gov.cn/" target="_blank">备案号：沪ICP备17024958号-2</a>
	</div>
	<div class="return" id="dynamic-to-top" style="display:none;">
		<span id="s_btn"></span>
	</div>
</div>