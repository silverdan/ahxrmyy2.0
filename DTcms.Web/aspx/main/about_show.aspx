﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_show" ValidateRequest="false" %>
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
	const string channel = "about";

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
	string category_title = get_category_title(model.category_id,"新闻资讯");

	int category_id = model.category_id;

	templateBuilder.Append("\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_keywords));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_description));
	templateBuilder.Append("\" />\r\n<link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" rel=\"stylesheet\" />\r\n    <link href=\"");
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
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/jquery-1.7.2.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/imgReady.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"wrap\">\r\n        <!--Header-->\r\n        ");

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


	templateBuilder.Append("\r\n        <!--/Header-->\r\n        <!--content begin-->\r\n        <div class=\"content survey_cont\">\r\n        	<!--left-->\r\n            ");

	templateBuilder.Append("<div class=\"left\">\r\n                <div class=\"survey_left\">\r\n                    <ul>      \r\n                        ");
	DataTable categoryList1 = get_category_child_list(channel, 0);

	foreach(DataRow cdr1 in categoryList1.Rows)
	{

	if (Utils.StrToInt(Utils.ObjectToStr(cdr1["id"]), 0)==category_id)
	{

	templateBuilder.Append("\r\n                        <li class=\"on\">\r\n                        ");
	}
	else
	{

	templateBuilder.Append("\r\n                        <li> \r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                            <span>" + Utils.ObjectToStr(cdr1["content"]) + "</span>\r\n                            ");
	if (Utils.ObjectToStr(cdr1["link_url"])=="")
	{

	templateBuilder.Append("\r\n                            <a href=\"");
	templateBuilder.Append(linkurl(channel+"_list",Utils.ObjectToStr(cdr1["id"])));

	templateBuilder.Append("\">\r\n                            ");
	}
	else
	{

	templateBuilder.Append("\r\n                            <!--\r\n                            	\r\n                            	作者：dan0627@gmail.com\r\n                            	时间：2015-08-19\r\n                            	描述： 本栏目内容页只需存储id使用<a href=\"");
	templateBuilder.Append(linkurl("survey_show",Utils.ObjectToStr(cdr1["link_url"])));

	templateBuilder.Append("\"> 否则存储完整URL:<a href=\"" + Utils.ObjectToStr(cdr1["link_url"]) + "\">\r\n                            -->\r\n                             <a href=\"");
	templateBuilder.Append(linkurl(channel+"_show",Utils.ObjectToStr(cdr1["link_url"])));

	templateBuilder.Append("\">\r\n                            ");
	}	//end for if

	templateBuilder.Append("	\r\n                            	" + Utils.ObjectToStr(cdr1["title"]) + "</a>\r\n                        </li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n     <div class=\"hospital_link link_sur\"></div>\r\n</div>");


	templateBuilder.Append("\r\n            <!--/left-->\r\n            <div class=\"right survey_right\">\r\n                <div class=\"survey_main sur_wh\">\r\n                	\r\n                    <h3 id=\"h3_dateTitle\"><span>");
	templateBuilder.Append(Utils.ObjectToStr(model.add_time));
	templateBuilder.Append("</span>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</h3>\r\n                    <span id=\"span_Content\">");
	templateBuilder.Append(Utils.ObjectToStr(model.content));
	templateBuilder.Append("</span>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--content end-->\r\n        <div class=\"clear\"></div>\r\n        <!--Footer-->\r\n        ");

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


	templateBuilder.Append("\r\n        <!--/Footer-->\r\n        <!--quick nav start-->\r\n        ");

	templateBuilder.Append("<!--quick nav start-->\r\n<div class=\"QuickNav\">\r\n    <div class=\"quick_nav1\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_qnav01.jpg\" width=\"95\" height=\"48\" alt=\"快速导航\" title=\"快速导航\" /></div>\r\n    <div class=\"quick_nav2\">\r\n        <ul>\r\n            <li><a href=\"");
	templateBuilder.Append(linkurl("treatment_list",52));

	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav001b.png\" width=\"54\" height=\"54\" alt=\"就诊指南\" title=\"就诊指南\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav001.png\" width=\"54\" height=\"54\" alt=\"就诊指南\" title=\"就诊指南\" /><p>就诊指南</p></a></li>\r\n            <li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav004b.png\" width=\"54\" height=\"54\" alt=\"出诊安排\" title=\"出诊安排\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav004.png\" width=\"54\" height=\"54\" alt=\"出诊安排\" title=\"出诊安排\" /><p>出诊安排</p></a></li>\r\n            <li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav003b.png\" width=\"54\" height=\"54\" alt=\"人医地图\" title=\"人医地图\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav003.png\" width=\"54\" height=\"54\" alt=\"人医地图\" title=\"人医地图\" /><p>人医地图</p></a></li>\r\n            <li><a href=\"");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav008b.png\" width=\"54\" height=\"54\" alt=\"信息查询\" title=\"信息查询\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav008.png\" width=\"54\" height=\"54\" alt=\"信息查询\" title=\"信息查询\" /><p>信息查询</p></a></li>\r\n            <li><a href=\"");
	templateBuilder.Append(linkurl("experts_list"));

	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav002b.png\" width=\"54\" height=\"54\" alt=\"科室导航\" title=\"科室导航\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav002.png\" width=\"54\" height=\"54\" alt=\"科室导航\" title=\"科室导航\" /><p>科室导航</p></a></li>\r\n            <li><a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav005b.png\" width=\"54\" height=\"54\" alt=\"预约挂号\" title=\"预约挂号\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav005.png\" width=\"54\" height=\"54\" alt=\"预约挂号\" title=\"预约挂号\" /><p>预约挂号</p></a></li>\r\n        </ul>\r\n    </div>\r\n</div>\r\n<!--quick nav end-->");


	templateBuilder.Append("\r\n        <!--quick nav end-->\r\n    </div></body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
