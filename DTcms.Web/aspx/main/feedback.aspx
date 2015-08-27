<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.Plugin.Feedback.feedback" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/8/27 16:52:58.
		本页面代码由DTcms模板引擎生成于 2015/8/27 16:52:58. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
	string category_title = get_category_title(model.category_id,"党群工作");

	templateBuilder.Append("\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(get_channel(channel).title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/common.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/second.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/base.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/jquery.flexslider-min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n\r\n</head>\r\n\r\n<body>\r\n	<div class=\"wrap\">\r\n<!--Header-->\r\n");

	templateBuilder.Append("<div class=\"header\">\r\n    <h1><a href=\"index.aspx\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo.jpg\" width=\"301\" height=\"62\" alt=\"安化县民医院官方网站\" title=\"安化县人民医院官方网站\" /></a></h1>\r\n    <h2>\r\n        <span class=\"sty_right\">\r\n        <!--<a href=\"Site_Map.aspx\">站点地图</a> |-->");
	templateBuilder.Append(Utils.ObjectToStr(channel));
	templateBuilder.Append("\r\n        <a href=\"javascript:void(0)\" onclick=\"addToFavorite()\">加入收藏</a> | \r\n        <a href=\"#\" target=\"_blank\">人事管理</a> |  \r\n        <a href=\"#\" target=\"_blank\">内部OA</a>  </span>\r\n    </h2>\r\n    <input type=\"text\" class=\"search\" name=\"tbSearch\" id=\"tbSearch\" value=\"\" onkeypress=\"if(event.keyCode==13){document.all.btnSearch.click();return false;}\" placeholder=\"输入回车搜索\" x-webkit-speech=\"\"  />\r\n    <input type=\"button\" class=\"btn_search\" name=\"btnSearch\" id=\"btnSearch\" value=\"搜 索\" onclick=\"SearchWords()\" />\r\n    <ul>\r\n\r\n    <li onclick=\"self.location='");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("'\" style=\"cursor:pointer;\"\r\n			");
	if (channel=="index")
	{

	templateBuilder.Append(" class='on'");
	}	//end for if

	templateBuilder.Append("><a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a></li>\r\n    <li onclick=\"self.location='");
	templateBuilder.Append(linkurl("about_show",102));

	templateBuilder.Append("'\" style=\"cursor:pointer;\"\r\n    	");
	if (channel=="about")
	{

	templateBuilder.Append(" class='on'");
	}	//end for if

	templateBuilder.Append(" ><a href=\"");
	templateBuilder.Append(linkurl("about_show",102));

	templateBuilder.Append("\">医院概况</a></li>\r\n    <li onclick=\"self.location='");
	templateBuilder.Append(linkurl("treatment_list",52));

	templateBuilder.Append("'\" style=\"cursor:pointer;\"\r\n    	");
	if (channel=="treatment")
	{

	templateBuilder.Append(" class='on'");
	}	//end for if

	templateBuilder.Append(" ><a href=\"");
	templateBuilder.Append(linkurl("treatment_list",52));

	templateBuilder.Append("\">就诊指南</a></li>\r\n    <li onclick=\"self.location='");
	templateBuilder.Append(linkurl("news_list",65));

	templateBuilder.Append("'\" style=\"cursor:pointer;\"\r\n    	");
	if (channel=="news")
	{

	templateBuilder.Append(" class='on'");
	}	//end for if

	templateBuilder.Append("><a href=\"");
	templateBuilder.Append(linkurl("news_list",65));

	templateBuilder.Append("\">新闻动态</a></li>\r\n    <li onclick=\"self.location='");
	templateBuilder.Append(linkurl("work"));

	templateBuilder.Append("'\" style=\"cursor:pointer;\"\r\n    	");
	if (channel=="work")
	{

	templateBuilder.Append(" class='on'");
	}	//end for if

	templateBuilder.Append("><a href=\"");
	templateBuilder.Append(linkurl("work"));

	templateBuilder.Append("\">党群工作</a></li>\r\n    <li onclick=\"self.location='");
	templateBuilder.Append(linkurl("experts_list"));

	templateBuilder.Append("'\" style=\"cursor:pointer;\" \r\n			");
	if (channel=="experts")
	{

	templateBuilder.Append(" class='on'");
	}	//end for if

	templateBuilder.Append("><a href=\"");
	templateBuilder.Append(linkurl("experts_list"));

	templateBuilder.Append("\">科室专家</a></li>\r\n		<li onclick=\"self.location='");
	templateBuilder.Append(linkurl("nursing"));

	templateBuilder.Append("'\" style=\"cursor:pointer;\"\r\n			");
	if (channel=="nursing")
	{

	templateBuilder.Append(" class='on'");
	}	//end for if

	templateBuilder.Append("><a href=\"");
	templateBuilder.Append(linkurl("nursing"));

	templateBuilder.Append("\">护理园地</a></li>\r\n		<li onclick=\"self.location='");
	templateBuilder.Append(linkurl("scientific"));

	templateBuilder.Append("'\" style=\"cursor:pointer;\"\r\n			");
	if (channel=="scientific")
	{

	templateBuilder.Append(" class='on'");
	}	//end for if

	templateBuilder.Append("><a href=\"");
	templateBuilder.Append(linkurl("scientific"));

	templateBuilder.Append("\">科研教学</a></li>\r\n    <li onclick=\"self.location='");
	templateBuilder.Append(linkurl("science"));

	templateBuilder.Append("'\" style=\"cursor:pointer;\"\r\n    	");
	if (channel=="science")
	{

	templateBuilder.Append(" class=\"on\"");
	}	//end for if

	templateBuilder.Append("><a href=\"");
	templateBuilder.Append(linkurl("science"));

	templateBuilder.Append("\">健康科普</a></li>    \r\n    </ul>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n  <!--content begin-->\r\n  <div class=\"content\">\r\n \r\n    <div class=\"center news_center news_contont\">\r\n      <div class=\"site_nav news_nav\"></div>      \r\n      <div class=\"news_mx work_mx\">\r\n        <h3 id=\"H3Title\">");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</h3>\r\n        </div>\r\n        <div class=\"ToolBar\">\r\n        	<div style=\"width:400px;\">发布者：\r\n        		<span id=\"SpanAuthor\">安化县人民医院</span>&nbsp; \r\n        		<em id=\"addtime\">发布日期:");
	templateBuilder.Append(Utils.ObjectToStr(model.add_time));
	templateBuilder.Append("</em> &nbsp;  \r\n        		<span id=\"SpanHitNum\">浏览量:\r\n        			<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_article_click&id=");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("&click=1\"></");
	templateBuilder.Append("script>\r\n				</span>\r\n        	</div>\r\n        	 \r\n	    </div>\r\n	    <!--分享-->\r\n	    	");

	templateBuilder.Append("  <!-- JiaThis Button BEGIN --> \r\n  <div id=\"ckepop\">\r\n      <span class=\"jiathis_txt\">分享到：</span>\r\n      <a class=\"jiathis_button_tqq\">腾讯</a>\r\n      <a class=\"jiathis_button_tsina\">新浪</a>\r\n      <a class=\"jiathis_button_renren\">人人网</a>\r\n      <a class=\"jiathis_button_email\">邮件</a>\r\n      <a class=\"jiathis_button_fav\">收藏夹</a>\r\n      <a class=\"jiathis_button_copy\">复制网址</a> \r\n      <a href=\"http://www.jiathis.com/share/?uid=90225\" class=\"jiathis jiathis_txt jiathis_separator jtico jtico_jiathis\" target=\"_blank\">更多</a> \r\n      <a class=\"jiathis_counter_style\"></a> \r\n  </div> \r\n  <!-- JiaThis Button END -->\r\n  <script type=\"text/javascript\">var jiathis_config={data_track_clickback:true};</");
	templateBuilder.Append("script> \r\n  <script type=\"text/javascript\" src=\"http://v2.jiathis.com/code/jia.js?uid=1336353133859589\" charset=\"utf-8\"></");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n	    	<!--/分享-->\r\n        <div class=\"news_mx\">\r\n        <div id=\"Ul_Content\">\r\n			");
	templateBuilder.Append(Utils.ObjectToStr(model.content));
	templateBuilder.Append("\r\n        </div>\r\n        <!--上下篇-->\r\n	    <div class=\"corlnum\">\r\n	            <ul>\r\n	                <li>");
	templateBuilder.Append(get_prevandnext_article(channel+"_show", -1, "[已经是第一篇]", 0).ToString());

	templateBuilder.Append("<span>上一篇</span></li>\r\n	                <li>");
	templateBuilder.Append(get_prevandnext_article(channel+"_show", 1, "[已经是最后一篇]", 0).ToString());

	templateBuilder.Append("<span>下一篇</span></li>\r\n	            </ul>\r\n	    </div>\r\n	    <!--/上下篇-->\r\n      </div>\r\n    </div>\r\n    <div class=\"right mx_newsR\">\r\n      <div class=\"mx_pop\"><a href=\"#\"><img alt=\"\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_017.jpg\" width=\"252\" height=\"225\" /></a></div>\r\n      <div class=\"new_tj\">\r\n        <h3>相关推荐</h3><!--此处为8条新闻列表-->\r\n            \r\n             \r\n              ");
	DataTable relNews = get_article_list(channel, model.category_id, 8, "is_red=1  and id<>"+model.id);

	foreach(DataRow dr in relNews.Rows)
	{

	templateBuilder.Append("\r\n        <dl>\r\n            <dd><a href=\"");
	templateBuilder.Append(linkurl(channel+"_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></dd>\r\n        </dl>\r\n        \r\n        ");
	}	//end for if

	if (relNews.Rows.Count<1)
	{

	templateBuilder.Append("\r\n        <div class=\"nodata\">暂无相关的资讯...</div>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n              \r\n      </div>\r\n    </div>\r\n  </div>\r\n  <!--content end-->\r\n  <div class=\"clear\"></div>\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<div class=\"footer\">\r\n    <div class=\"sy_newsp\">\r\n        <h3>人医院报</h3>\r\n        <select name=\"ddlYears\" id=\"ddlYears\" >\r\n            <option value=\"0\">请选择年份</option>\r\n            <option value=\"2015\">2015年</option>\r\n            <option value=\"2014\">2014年</option>\r\n        </select>\r\n        <select class=\"sty01\" name=\"ddlTimes\" id=\"ddlTimes\">\r\n            <option value=\"0\">选择期数</option>\r\n        </select>\r\n        <input class=\"sea_go\" name=\"btnGoNewsPaper\" id=\"btnGoNewsPaper\" onclick=\"GoNewsPaper()\" type=\"button\" />\r\n    </div>\r\n    <div class=\"sy_ysg\">\r\n        <dl>\r\n            <dt><a href=\"history.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_ysg01.jpg\" width=\"160\" height=\"59\" alt=\"院史馆\" title=\"院史馆\" /></a></dt>\r\n            <dd>\r\n                <a href=\"history.aspx\">人医历史</a>\r\n                <p>Hospital Historical</p>\r\n            </dd>\r\n        </dl>\r\n    </div>\r\n    <div class=\"sy_kslj\">\r\n        <ul>\r\n            <li><a target=\"_blank\" href=\"http://t.qq.com/ahrmyy\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_weiboa.jpg\" width=\"67\" height=\"61\" alt=\"人医官方微博\" title=\"人医官方微博\" /><span>人医微博<br /><em>WeiBo</em></span></a></li>\r\n            <li><a target=\"_blank\" href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_tela.jpg\" width=\"67\" height=\"61\" alt=\"电话咨询\" title=\"电话咨询\" /><span>电话咨询<br /><em>PhoneBook</em></span></a></li>\r\n            <li><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("video"));

	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_videoa.jpg\" width=\"67\" height=\"61\" alt=\"视频\" title=\"视频\" /><span>视频<br /><em>Video</em></span></a></li>\r\n            <li><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("donw"));

	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_downa.jpg\" width=\"67\" height=\"61\" alt=\"资料下载\" title=\"资料下载\" /><span>资料下载<br /><em>DownLoad</em></span></a></li>\r\n        </ul>\r\n    </div>\r\n    <div class=\"sy_bottom\">\r\n    	 <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("feedback"));

	templateBuilder.Append("\">留言反馈</a>\r\n        <h5>主办单位：");
	templateBuilder.Append(site.company.ToString());

	templateBuilder.Append("  &nbsp; &nbsp;咨询电话：");
	templateBuilder.Append(Utils.ObjectToStr(site.tel));
	templateBuilder.Append("&nbsp;&nbsp;&nbsp; &nbsp;门诊预约挂号电话： &nbsp; &nbsp;急救中心电话：0737 7298120  传真：");
	templateBuilder.Append(Utils.ObjectToStr(site.fax));
	templateBuilder.Append(" &nbsp;&nbsp;</h5>\r\n        <a href=\"links.aspx\" target=\"_blank\" id=\"BaseLinks\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/yqlj_btn.gif\" width=\"56\" height=\"16\" /></a>\r\n        <h6>地 址：");
	templateBuilder.Append(Utils.ObjectToStr(site.address));
	templateBuilder.Append(" &nbsp; &nbsp;版权所有：");
	templateBuilder.Append(Utils.ObjectToStr(site.copyright));
	templateBuilder.Append("&nbsp; &nbsp;");
	templateBuilder.Append(Utils.ObjectToStr(site.crod));
	templateBuilder.Append(" &nbsp; &nbsp;<em><a href=\"http://www.miraclevision.net/\" target=\"_blank\">技术支持：长沙三替信息科技有限公司</a></em></h6>\r\n    </div>\r\n   \r\n</div>\r\n<div id=\"Bottom_CountCodeDiv\" style=\"display:none;\">\r\n    <script type=\"text/javascript\">\r\n    var _bdhmProtocol = ((\"https:\" == document.location.protocol) ? \" https://\" : \" http://\");\r\n    document.write(unescape(\"%3Cscript src='\" + _bdhmProtocol + \"hm.baidu.com/h.js%3F4a1d36386e8734a5fd29acec9114818d' type='text/javascript'%3E%3C/script%3E\"));\r\n    document.write(unescape(\"%3Cscript src='\" + _bdhmProtocol + \"hm.baidu.com/h.js%3Fafd2ae44e23648da4e8a81a7b1349be4' type='text/javascript'%3E%3C/script%3E\"));\r\n    </");
	templateBuilder.Append("script>\r\n</div>\r\n<!--footer end-->\r\n<div class=\"page_tr\"></div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</div>\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
