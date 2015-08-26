<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.oauth_login" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/8/26 10:47:09.
		本页面代码由DTcms模板引擎生成于 2015/8/26 10:47:09. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>合作网站登录 - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/ui-dialog.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/dialog-plus-min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n$(function(){\r\n	tabs('#oauthTabs','click');\r\n	//初始化表单1\r\n	AjaxInitForm('#bindForm', '#btnSubmit1', 0, '#turl');\r\n	//初始化表单2\r\n	AjaxInitForm('#oauthForm', '#btnSubmit2', 0, '#turl');\r\n});\r\n</");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

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


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"main-box\">\r\n  <div class=\"section clearfix\">\r\n    <div class=\"main-tit\">\r\n      <h2>合作网站登录</h2>\r\n    </div>\r\n    <div id=\"oauthTabs\" class=\"inner-box\">\r\n      <!--选项卡-->\r\n      <div id=\"tabHead\" class=\"tab-head\">\r\n        <ul>\r\n          <li>\r\n            <a class=\"selected\" href=\"javascript:;\">绑定已有的账号</a>\r\n          </li>\r\n          <li>\r\n            <a href=\"javascript:;\">创建新的账号</a>\r\n          </li>\r\n        </ul>\r\n      </div>\r\n      <!--/选项卡-->\r\n      \r\n      <!--选项内容-->\r\n      <form name=\"bindForm\" id=\"bindForm\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_oauth_bind\">\r\n      <div class=\"dl-list tab-content\" style=\"display:block;\">\r\n        <dl>\r\n          <dt>用户名：</dt>\r\n          <dd><input name=\"txtUserName\" type=\"text\" class=\"input txt\" datatype=\"*\"  nullmsg=\"请输入用户名\" sucmsg=\" \" /></dd>\r\n        </dl>\r\n        <dl>\r\n          <dt>密　码：</dt>\r\n          <dd><input name=\"txtPassword\" type=\"password\" class=\"input txt\" datatype=\"*6-20\"  nullmsg=\"请输入密码\" sucmsg=\" \" /></dd>\r\n        </dl>\r\n        <dl>\r\n          <dt></dt>\r\n          <dd><input id=\"btnSubmit1\" name=\"btnSubmit1\" type=\"submit\" class=\"btn\" value=\"立即绑定\" /></dd>\r\n        </dl>\r\n      </div>\r\n      </form>\r\n      \r\n      <form name=\"oauthForm\" id=\"oauthForm\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_oauth_register\">\r\n      <div class=\"dl-list tab-content\">\r\n        <dl>\r\n          <dt>电子邮箱：</dt>\r\n          <dd><input name=\"txtEmail\" type=\"text\" class=\"input txt\" datatype=\"e\"  nullmsg=\"请输入邮箱地址\" sucmsg=\" \" /></dd>\r\n        </dl>\r\n        <dl>\r\n          <dt>手机号码：</dt>\r\n          <dd><input name=\"txtMobile\" type=\"text\" class=\"input txt\" datatype=\"m\"  nullmsg=\"请输入手机号码\" sucmsg=\" \" /></dd>\r\n        </dl>\r\n        <dl>\r\n          <dt>登录密码：</dt>\r\n          <dd><input name=\"txtPassword\" type=\"password\" class=\"input txt\" datatype=\"*6-20\"  nullmsg=\"请设置密码\" sucmsg=\" \" /></dd>\r\n        </dl>\r\n        <dl>\r\n          <dt></dt>\r\n          <dd><input id=\"btnSubmit2\" name=\"btnSubmit1\" type=\"submit\" class=\"btn\" value=\"创建新账户\" /></dd>\r\n        </dl>\r\n      </div>\r\n      </form>\r\n      <!--/选项内容-->\r\n      <input id=\"turl\" name=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(turl));
	templateBuilder.Append("\" />\r\n    </div>\r\n    \r\n  </div>\r\n</div>\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<div class=\"footer\">\r\n    <div class=\"sy_newsp\">\r\n        <h3>人医院报</h3>\r\n        <select name=\"ddlYears\" id=\"ddlYears\" onchange=\"GetTimesByYear(this)\">\r\n            <option value=\"0\">请选择年份</option>\r\n            <option value=\"2015\">2015年</option>\r\n            <option value=\"2014\">2014年</option>\r\n        </select>\r\n        <select class=\"sty01\" name=\"ddlTimes\" id=\"ddlTimes\">\r\n            <option value=\"0\">选择期数</option>\r\n        </select>\r\n        <input class=\"sea_go\" name=\"btnGoNewsPaper\" id=\"btnGoNewsPaper\" onclick=\"GoNewsPaper()\" type=\"button\" />\r\n    </div>\r\n    <div class=\"sy_ysg\">\r\n        <dl>\r\n            <dt><a href=\"history.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_ysg01.jpg\" width=\"160\" height=\"59\" alt=\"院史馆\" title=\"院史馆\" /></a></dt>\r\n            <dd>\r\n                <a href=\"history.aspx\">人医历史</a>\r\n                <p>Hospital Historical</p>\r\n            </dd>\r\n        </dl>\r\n    </div>\r\n    <div class=\"sy_kslj\">\r\n        <ul>\r\n            <li><a target=\"_blank\" href=\"#\"><img src=\"");
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
	templateBuilder.Append(" &nbsp;&nbsp;</h5>\r\n        <a href=\"links.aspx\" target=\"_blank\" id=\"BaseLinks\"><img src=\"images/yqlj_btn.gif\" width=\"56\" height=\"16\" /></a>\r\n        <h6>地 址：");
	templateBuilder.Append(Utils.ObjectToStr(site.address));
	templateBuilder.Append(" &nbsp; &nbsp;版权所有：");
	templateBuilder.Append(Utils.ObjectToStr(site.copyright));
	templateBuilder.Append("&nbsp; &nbsp;");
	templateBuilder.Append(Utils.ObjectToStr(site.crod));
	templateBuilder.Append(" &nbsp; &nbsp;<em><a href=\"http://www.miraclevision.net/\" target=\"_blank\">技术支持：长沙三替信息科技有限公司</a></em></h6>\r\n    </div>\r\n   \r\n</div>\r\n<div id=\"Bottom_CountCodeDiv\" style=\"display:none;\">\r\n    <script type=\"text/javascript\">\r\n    var _bdhmProtocol = ((\"https:\" == document.location.protocol) ? \" https://\" : \" http://\");\r\n    document.write(unescape(\"%3Cscript src='\" + _bdhmProtocol + \"hm.baidu.com/h.js%3F4a1d36386e8734a5fd29acec9114818d' type='text/javascript'%3E%3C/script%3E\"));\r\n    document.write(unescape(\"%3Cscript src='\" + _bdhmProtocol + \"hm.baidu.com/h.js%3Fafd2ae44e23648da4e8a81a7b1349be4' type='text/javascript'%3E%3C/script%3E\"));\r\n    </");
	templateBuilder.Append("script>\r\n</div>\r\n<!--footer end-->\r\n<div class=\"page_tr\"></div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
