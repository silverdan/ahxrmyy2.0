<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.useraddress_edit" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/8/25 16:30:29.
		本页面代码由DTcms模板引擎生成于 2015/8/25 16:30:29. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>收货地址 - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/ui-dialog.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
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
	templateBuilder.Append("scripts/jquery/PCASClass.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/dialog-plus-min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

	templateBuilder.Append("<div class=\"header\">\r\n    <h1><a href=\"index.aspx\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo.jpg\" width=\"301\" height=\"62\" alt=\"安化县民医院官方网站\" title=\"安化县人民医院官方网站\" /></a></h1>\r\n    <h2>\r\n        <span class=\"sty_right\">\r\n        <!--<a href=\"Site_Map.aspx\">站点地图</a> |-->");
	templateBuilder.Append(Utils.ObjectToStr(channel));
	templateBuilder.Append("\r\n        <a href=\"javascript:void(0)\" onclick=\"addToFavorite()\">加入收藏</a> | \r\n        <a href=\"#\" target=\"_blank\">人事管理</a> |  \r\n        <a href=\"#\" target=\"_blank\">内部OA</a>  </span>\r\n    </h2><input type=\"text\" class=\"search\" name=\"tbSearch\" id=\"tbSearch\" value=\"\" onkeypress=\"if(event.keyCode==13){document.all.btnSearch.click();return false;}\" /><input type=\"button\" class=\"btn_search\" name=\"btnSearch\" id=\"btnSearch\" value=\"搜 索\" onclick=\"SearchWords()\" />\r\n    <ul>\r\n\r\n    <li onclick=\"self.location='");
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


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"section clearfix\">\r\n  <div class=\"line30\"></div>\r\n\r\n  <div class=\"info-wrap\">\r\n    <!--左侧导航-->\r\n    ");

	templateBuilder.Append("    <div class=\"info-box\">\r\n      <div class=\"avatar-box\">\r\n        <a href=\"");
	templateBuilder.Append(linkurl("usercenter","avatar"));

	templateBuilder.Append("\" class=\"img-box\">\r\n          ");
	if (userModel.avatar!="")
	{

	templateBuilder.Append("\r\n            <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.avatar));
	templateBuilder.Append("\" />\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n            <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/user-avatar.png\" />\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </a>\r\n        <h3>\r\n        ");
	if (userModel.nick_name!="")
	{

	templateBuilder.Append("\r\n          ");
	templateBuilder.Append(Utils.ObjectToStr(userModel.nick_name));
	templateBuilder.Append("\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n          ");
	templateBuilder.Append(Utils.ObjectToStr(userModel.user_name));
	templateBuilder.Append("\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n        </h3>\r\n        <p>余额：");
	templateBuilder.Append(Utils.ObjectToStr(userModel.amount));
	templateBuilder.Append(" 元</p>\r\n        <p>积分：");
	templateBuilder.Append(Utils.ObjectToStr(userModel.point));
	templateBuilder.Append(" 分</p>					\r\n      </div>\r\n      <ul class=\"side-nav\">\r\n        <li>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("userorder","list"));

	templateBuilder.Append("\">订单管理</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("useraddress"));

	templateBuilder.Append("\">收货地址</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("useramount","recharge"));

	templateBuilder.Append("\">账户余额</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("userpoint","convert"));

	templateBuilder.Append("\">我的积分</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("usermessage","system"));

	templateBuilder.Append("\">站内消息</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("usercenter","invite"));

	templateBuilder.Append("\">邀请好友</a>\r\n        </li>\r\n        <li>\r\n          \r\n          <a href=\"");
	templateBuilder.Append(linkurl("usercenter","proinfo"));

	templateBuilder.Append("\">个人资料</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("usercenter","avatar"));

	templateBuilder.Append("\">头像设置</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("usercenter","password"));

	templateBuilder.Append("\">修改密码</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("usercenter","exit"));

	templateBuilder.Append("\">退出登录</a>\r\n        </li>\r\n      </ul>\r\n    </div>");


	templateBuilder.Append("\r\n    <!--/左侧导航-->\r\n    \r\n    <!--右侧内容-->\r\n    <div class=\"home-box\">\r\n      <script type=\"text/javascript\">\r\n		$(function(){\r\n		  //初始化表单\r\n		  AjaxInitForm('#editForm', '#btnSubmit', 1, '#turl');\r\n		});\r\n	  </");
	templateBuilder.Append("script>\r\n      <div class=\"u-tab-head\">\r\n        <p>\r\n          <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("useraddress"));

	templateBuilder.Append("\">收货地址</a>\r\n        </p>\r\n        <span>\r\n          <a class=\"add\" href=\"javascript:history.back();\">返回</a>\r\n        </span>\r\n      </div>\r\n      \r\n      ");
	if (action=="edit")
	{

	templateBuilder.Append("\r\n      <!--编辑地址-->\r\n      <script type=\"text/javascript\">\r\n	    $(function(){\r\n			//初始化地区\r\n            var mypcas = new PCAS(\"txtProvince,所属省份\", \"txtCity,所属城市\", \"txtArea,所属地区\");\r\n			var areaArr = (\"");
	templateBuilder.Append(Utils.ObjectToStr(model.area));
	templateBuilder.Append("\").split(\",\");\r\n			if (areaArr.length == 3) {\r\n              mypcas.SetValue(areaArr[0], areaArr[1], areaArr[2]);\r\n            }\r\n		});\r\n	  </");
	templateBuilder.Append("script>\r\n      <div class=\"u-tab-content\">\r\n        <div class=\"title-div\">\r\n          <strong>编辑地址</strong>\r\n        </div>\r\n        <form id=\"editForm\" name=\"editForm\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_address_edit&id=");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("\">\r\n          <div class=\"form-box\">\r\n            <dl>\r\n              <dt>收件人姓名：</dt>\r\n              <dd>\r\n                <input name=\"txtAcceptName\" id=\"txtAcceptName\" type=\"text\" class=\"input txt\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.accept_name));
	templateBuilder.Append("\" datatype=\"s1-50\"  nullmsg=\"请填写收件人用户名\" sucmsg=\" \" />\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt>所属地区：</dt>\r\n              <dd>\r\n                <select id=\"txtProvince\" name=\"txtProvince\" class=\"select\"></select>\r\n                <select id=\"txtCity\" name=\"txtCity\" class=\"select\"></select>\r\n                <select id=\"txtArea\" name=\"txtArea\" class=\"select\" datatype=\"*\" nullmsg=\"请选择所属地区\" sucmsg=\" \"></select>\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt>详细地址：</dt>\r\n              <dd>\r\n                <input name=\"txtAddress\" id=\"txtAddress\" type=\"text\" class=\"input wide\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.address));
	templateBuilder.Append("\" datatype=\"*1-255\" nullmsg=\"请填写详细地址\" sucmsg=\" \" />\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt>手机号码：</dt>\r\n              <dd>\r\n                <input name=\"txtMobile\" id=\"txtMobile\" type=\"text\" class=\"input txt\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.mobile));
	templateBuilder.Append("\" datatype=\"m\" nullmsg=\"请填写手机号码\" sucmsg=\" \"  />\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt>联系电话：</dt>\r\n              <dd>\r\n                <input name=\"txtTelphone\" id=\"txtTelphone\" type=\"text\" class=\"input txt\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.telphone));
	templateBuilder.Append("\" maxlength=\"30\" datatype=\"*0-20\" sucmsg=\" \"  />\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt>电子邮箱：</dt>\r\n              <dd>\r\n                <input name=\"txtEmail\" id=\"txtEmail\" type=\"text\" class=\"input txt\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.email));
	templateBuilder.Append("\" datatype=\"*0-20\" sucmsg=\" \"  />\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt>邮政编码：</dt>\r\n              <dd>\r\n                <input name=\"txtPostCode\" id=\"txtPostCode\" type=\"text\" class=\"input txt\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.post_code));
	templateBuilder.Append("\" datatype=\"n0-10\" sucmsg=\" \"  />\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt></dt>\r\n              <dd>\r\n                <input id=\"txtCode\" name=\"txtCode\" class=\"input small\" type=\"text\" datatype=\"*\" sucmsg=\" \" style=\"ime-mode:disabled;text-transform:uppercase;\">\r\n                <a id=\"verifyCode\" href=\"javascript:;\" onclick=\"ToggleCode(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx');return false;\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx\" width=\"80\" height=\"22\" style=\"vertical-align:middle;\" /> 看不清楚？</a>\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt></dt>\r\n              <dd><input name=\"btnSubmit\" id=\"btnSubmit\" type=\"submit\" class=\"btn btn-success\" value=\"确认提交\" /></dd>\r\n            </dl>\r\n          </div>\r\n        </form>\r\n        <!--编辑地址-->\r\n        \r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <!--添加新地址-->\r\n      <script type=\"text/javascript\">\r\n	    $(function(){\r\n			//初始化地区\r\n            var mypcas = new PCAS(\"txtProvince,所属省份\", \"txtCity,所属城市\", \"txtArea,所属地区\");\r\n		});\r\n	  </");
	templateBuilder.Append("script>\r\n      <div class=\"u-tab-content\">\r\n        <div class=\"title-div\">\r\n          <strong>添加新地址</strong>\r\n        </div>\r\n        <form id=\"editForm\" name=\"editForm\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_address_edit\">\r\n          <div class=\"form-box\">\r\n            <dl>\r\n              <dt>收件人姓名：</dt>\r\n              <dd>\r\n                <input name=\"txtAcceptName\" id=\"txtAcceptName\" type=\"text\" class=\"input txt\" datatype=\"s1-50\"  nullmsg=\"请填写收件人用户名\" sucmsg=\" \" />\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt>所属地区：</dt>\r\n              <dd>\r\n                <select id=\"txtProvince\" name=\"txtProvince\" class=\"select\"></select>\r\n                <select id=\"txtCity\" name=\"txtCity\" class=\"select\"></select>\r\n                <select id=\"txtArea\" name=\"txtArea\" class=\"select\" datatype=\"*\" nullmsg=\"请选择所属地区\" sucmsg=\" \"></select>\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt>详细地址：</dt>\r\n              <dd>\r\n                <input name=\"txtAddress\" id=\"txtAddress\" type=\"text\" class=\"input wide\" maxlength=\"255\" datatype=\"*0-255\" nullmsg=\"请填写详细地址\" sucmsg=\" \" />\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt>手机号码：</dt>\r\n              <dd>\r\n                <input name=\"txtMobile\" id=\"txtMobile\" type=\"text\" class=\"input txt\" maxlength=\"30\" datatype=\"m\" nullmsg=\"请填写手机号码\" sucmsg=\" \"  />\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt>联系电话：</dt>\r\n              <dd>\r\n                <input name=\"txtTelphone\" id=\"txtTelphone\" type=\"text\" class=\"input txt\" maxlength=\"30\" datatype=\"*0-20\" sucmsg=\" \"  />\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt>电子邮箱：</dt>\r\n              <dd>\r\n                <input name=\"txtEmail\" id=\"txtEmail\" type=\"text\" class=\"input txt\" maxlength=\"30\" datatype=\"*0-30\" sucmsg=\" \"  />\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt>邮政编码：</dt>\r\n              <dd>\r\n                <input name=\"txtPostCode\" id=\"txtPostCode\" type=\"text\" class=\"input txt\" maxlength=\"30\" datatype=\"n0-10\" sucmsg=\" \"  />\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt></dt>\r\n              <dd>\r\n                <input id=\"txtCode\" name=\"txtCode\" class=\"input small\" type=\"text\" datatype=\"*\" sucmsg=\" \" style=\"ime-mode:disabled;text-transform:uppercase;\">\r\n                <a id=\"verifyCode\" href=\"javascript:;\" onclick=\"ToggleCode(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx');return false;\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx\" width=\"80\" height=\"22\" style=\"vertical-align:middle;\" /> 看不清楚？</a>\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt></dt>\r\n              <dd><input name=\"btnSubmit\" id=\"btnSubmit\" type=\"submit\" class=\"btn btn-success\" value=\"确认提交\" /></dd>\r\n            </dl>\r\n          </div>\r\n        </form>\r\n        <!--添加新地址-->\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n        <input id=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(linkurl("useraddress"));

	templateBuilder.Append("\" />\r\n      </div>\r\n      \r\n    </div>\r\n    <!--/右侧内容-->\r\n  </div>\r\n</div>\r\n\r\n<!--Footer-->\r\n");

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
