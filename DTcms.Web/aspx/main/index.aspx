<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.index" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/8/27 16:52:57.
		本页面代码由DTcms模板引擎生成于 2015/8/27 16:52:57. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<!--<link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />-->\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/common.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/index.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
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
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/jquery-1.7.2.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/imgReady.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/index.js\"></");
	templateBuilder.Append("script>\r\n    <script></");
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


	templateBuilder.Append("\r\n        <!--/Header-->\r\n\r\n        <div class=\"content\">\r\n            <div class=\"left\">\r\n            <!--快速导航-->\r\n        		");

	templateBuilder.Append("<div class=\"q_nav\">\r\n                    <h3><span><a href=\"javascript:void(0)\" id=\"ShowNav\">简洁显示</a></span>快速导航</h3>\r\n                    <div id=\"NavSuccinctly\">\r\n                        <dl class=\"cont\">\r\n                            <dt><a href=\"visit_nav.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_01.png\" width=\"44\" height=\"41\" alt=\"科室导航\" title=\"科室导航\" /></a></dt>\r\n                            <dd class=\"til\"><a href=\"visit_nav.aspx\" target=\"_blank\">科室导航</a></dd>\r\n                            <dd class=\"cont\">按医学分类，浏览其下辖科室详细内容；顶部模型图操作：移动鼠标至相应部位，系统自动罗列当前部位所涉及科室。</dd>\r\n                            <dd class=\"btn\"><a href=\"visit_nav.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/btn_01.jpg\" width=\"74\" height=\"23\" alt=\"查看更多\" title=\"查看更多\" /></a></dd>\r\n                        </dl>\r\n                        <dl>\r\n                            <dt><a href=\"time.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav004.png\" width=\"42\" height=\"42\" alt=\"出诊安排\" title=\"出诊安排\" /></a></dt>\r\n                            <dd class=\"til\"><a href=\"time.aspx\" target=\"_blank\">出诊安排</a></dd>\r\n                            <dd class=\"cont\">对五天工作日内值班情况做精确显示，周末值班信息仅供参考。</dd>\r\n                            <dd class=\"btn\"><a href=\"time.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/btn_01.jpg\" width=\"74\" height=\"23\" alt=\"查看更多\" title=\"查看更多\" /></a></dd>\r\n                        </dl>\r\n                        <dl style=\"border-bottom:none;\">\r\n                            <dt><a href=\"infor_retrieval.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav008.png\" width=\"42\" height=\"42\" alt=\"信息查询\" title=\"信息查询\" /></a></dt>\r\n                            <dd class=\"til\"><a href=\"infor_retrieval.aspx\" target=\"_blank\">信息查询</a></dd>\r\n                            <dd class=\"cont\">按查询词条首位字母快速索引相关查询结果，同时支持关键字模糊查询。</dd>\r\n                            <dd class=\"btn\"><a href=\"infor_retrieval.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/btn_01.jpg\" width=\"74\" height=\"23\" alt=\"查看更多\" title=\"查看更多\" /></a></dd>\r\n                        </dl>\r\n                    </div>\r\n                    <div class=\"quick_nav\">\r\n                        <ul>\r\n                            <li><a href=\"");
	templateBuilder.Append(linkurl("treatment_list",52));

	templateBuilder.Append("\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav001b.png\" width=\"54\" height=\"54\" alt=\"就诊指南\" title=\"就诊指南\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav001.png\" width=\"54\" height=\"54\" alt=\"就诊指南\" title=\"就诊指南\" /><p>就诊指南</p></a></li>\r\n                            <li><a href=\"");
	templateBuilder.Append(linkurl("experts_list"));

	templateBuilder.Append("\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav002b.png\" width=\"54\" height=\"54\" alt=\"科室导航\" title=\"科室导航\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav002.png\" width=\"54\" height=\"54\" alt=\"科室导航\" title=\"科室导航\" /><p>科室导航</p></a></li>\r\n                            <li><a href=\"#\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav003b.png\" width=\"54\" height=\"54\" alt=\"人医地图\" title=\"人医地图\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav003.png\" width=\"54\" height=\"54\" alt=\"人医地图\" title=\"人医地图\" /><p>人医地图</p></a></li>\r\n                            <li><a href=\"#\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav004b.png\" width=\"54\" height=\"54\" alt=\"出诊安排\" title=\"出诊安排\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav004.png\" width=\"54\" height=\"54\" alt=\"出诊安排\" title=\"出诊安排\" /><p>出诊安排</p></a></li>\r\n                            <li><a href=\"#\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav005b.png\" width=\"54\" height=\"54\" alt=\"预约挂号\" title=\"预约挂号\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav005.png\" width=\"54\" height=\"54\" alt=\"预约挂号\" title=\"预约挂号\" /><p>预约挂号</p></a></li>\r\n                            <li><a href=\"#\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav006b.png\" width=\"54\" height=\"54\" alt=\"来院路线\" title=\"来院路线\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav006.png\" width=\"54\" height=\"54\" alt=\"来院路线\" title=\"来院路线\" /><p>来院路线</p></a></li>\r\n                            <li><a href=\"#\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav007b.png\" width=\"54\" height=\"54\" alt=\"电话查询\" title=\"电话查询\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav007.png\" width=\"54\" height=\"54\" alt=\"电话查询\" title=\"电话查询\" /><p>电话查询</p></a></li>\r\n                            <li><a href=\"");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav008b.png\" width=\"54\" height=\"54\" alt=\"信息查询\" title=\"信息查询\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav008.png\" width=\"54\" height=\"54\" alt=\"信息查询\" title=\"信息查询\" /><p>信息查询</p></a></li>\r\n                            <li><a href=\"http://t.qq.com/ahrmyy\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav009b.png\" width=\"54\" height=\"54\" alt=\"人医微博\" title=\"人医微博\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav009.png\" width=\"54\" height=\"54\" alt=\"医生微博\" title=\"医生微博\" /><p>人医微博</p></a></li>\r\n                            <li><a href=\"#\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav010b.png\" width=\"54\" height=\"54\" alt=\"站点地图\" title=\"站点地图\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav010.png\" width=\"54\" height=\"54\" alt=\"站点地图\" title=\"站点地图\" /><p>站点地图</p></a></li>\r\n                            <li><a href=\"");
	templateBuilder.Append(linkurl("feedback"));

	templateBuilder.Append("\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav011b.png\" width=\"54\" height=\"54\" alt=\"在线留言\" title=\"在线留言\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav011.png\" width=\"54\" height=\"54\" alt=\"在线留言\" title=\"在线留言\" /><p>在线留言</p></a></li>\r\n                            <li><a href=\"");
	templateBuilder.Append(linkurl("down"));

	templateBuilder.Append("\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav014b.png\" width=\"54\" height=\"54\" alt=\"资料下载\" title=\"资料下载\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav014a.png\" width=\"54\" height=\"54\" alt=\"资料下载\" title=\"资料下载\" /><p>资料下载</p></a></li>\r\n                        </ul>\r\n                    </div>\r\n                </div>");


	templateBuilder.Append("\r\n        	<!--/快速导航-->\r\n                <div class=\"sy_360\">\r\n                    <h3><span><a href=\"distribution.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/btn_02right.png\" width=\"11\" height=\"10\" alt=\"微信\" title=\"微信\" /></a></span>人医微信号</h3>\r\n                    <dl>\r\n                        <dt>\r\n                            <!--<a href=\"distribution.aspx\" target=\"_blank\"><img onmouseover=\"this.src = '");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_360a.jpg'\" onmouseout=\"    this.src = '");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_360.jpg'\" src=\"images/pic_360.jpg\" width=\"96\" height=\"97\" alt=\"360度\" title=\"360度\" /></a>-->\r\n                        </dt>\r\n                        <dd class=\"til\"></dd>\r\n                        <dd></dd>\r\n                    </dl>\r\n                </div>\r\n            </div>\r\n            <div class=\"right\">\r\n                <div class=\"banner\">\r\n                    <div class=\"AdvertBox\">\r\n                        <div><a href=\"javascript:void(0)\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/banner_index.jpg\" id=\"result_banner\" width=\"638\" height=\"302\" alt=\"安化县人民医院\" /></a></div>\r\n                        <div class=\"Advert_time\">还剩<span id=\"Advert_span\">6</span>秒</div>\r\n                    </div>\r\n                    <div id=\"IndexImagesContent\">\r\n                        <ul>\r\n                        ");
	DataTable focusNewsflash = get_article_list("news", 0, 6, "status=0 and is_slide=1 and img_url<>''");

	foreach(DataRow dr in focusNewsflash.Rows)
	{

	templateBuilder.Append("\r\n							<li>\r\n                            <a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" target=\"_blank\"><img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" width=\"638\" height=\"302\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\" /></a>\r\n                            <div class=\"pic_hover\"><p>" + Utils.ObjectToStr(dr["title"]) + "</p></div>\r\n                            </li>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </ul>\r\n                    </div>\r\n                    <div id=\"IndexImages\" style=\"top:10px;height:188px;\">\r\n						");
	foreach(DataRow dr in focusNewsflash.Rows)
	{

	templateBuilder.Append("\r\n                        <a href=\"javascript:void(0)\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_04.gif\" width=\"17\" height=\"17\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\" /> </a>\r\n						");
	}	//end for if

	templateBuilder.Append("\r\n                    </div>\r\n                    <div id=\"loader\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/loading.gif\" width=\"16px\" height=\"16px\" /></div>\r\n                </div>\r\n                <div>\r\n                    <!--选项卡 begin-->\r\n                    <div class=\"bd\" id=\"n1Tab\">\r\n                        <div class=\"Tabtitle\">\r\n                            <h3 class=\"nTabs active\"><a href=\"news.aspx\" target=\"_blank\">人医快讯<em>Hospital News</em></a></h3>\r\n                            <h3 class=\"nTabs\"><a href=\"Notice.aspx\" target=\"_blank\">最新公告<em>Bulletin</em></a></h3>\r\n                            <h3 class=\"nTabs\">官方微博<em>WeiBo</em></h3>\r\n                        </div>\r\n                        <div class=\"TabContent\">\r\n                        	<!--快讯公告-->\r\n                            <div id=\"n1Tab_Content0\" class=\"n1Tab_Content\">\r\n                            	");
	DataTable focusNews = get_article_list("news", 0, 1, "status=0 and is_slide=1 and img_url<>''");

	foreach(DataRow dr in focusNews.Rows)
	{

	templateBuilder.Append("\r\n                                <div class=\"sy_news\">\r\n                                    <h4><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" id=\"a_FirstTitle\" target=\"_blank\">" + Utils.ObjectToStr(dr["title"]) + "...</a></h4>\r\n                                    <p id=\"p_FirstContent\" target=\"_blank\">" + Utils.ObjectToStr(dr["zhaiyao"]) + "...</p>\r\n                                </div>\r\n                                <div class=\"sy_pic01\">\r\n                                    <h5><img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" width=\"130\" height=\"81\" alt=\"相关文字介绍\" /></h5>\r\n                                    <p></p>\r\n                                </div>\r\n                                ");
	}	//end for if

	templateBuilder.Append("\r\n                                <div class=\"sy_newsr\">\r\n                                    <ul>\r\n							  ");
	DataTable newsList = get_article_list("news", 0, 6, "status=0");

	int newdr__loop__id=0;
	foreach(DataRow newdr in newsList.Rows)
	{
		newdr__loop__id++;


	templateBuilder.Append("\r\n							        <li>\r\n							        	<em>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(newdr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("</em>\r\n							        	<a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newdr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(newdr["title"]) + "\">" + Utils.ObjectToStr(newdr["title"]) + "</a>\r\n							        </li>\r\n							        ");
	}	//end for if

	templateBuilder.Append("\r\n                                    </ul>\r\n                                </div>\r\n                            </div>\r\n                            <!--最新公告-->\r\n                            <div id=\"n1Tab_Content1\" class=\"n1Tab_Content\">\r\n                                <div class=\"sy_newsr synews2\">\r\n                                    <ul>\r\n                            ");
	DataTable newsListno = get_article_list("news", 0, 12, "status=0");

	int newdrno__loop__id=0;
	foreach(DataRow newdrno in newsListno.Rows)
	{
		newdrno__loop__id++;


	templateBuilder.Append("\r\n							        <li>\r\n							        	<em>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(newdrno["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("</em>\r\n							        	<a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newdrno["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(newdrno["title"]) + "\">" + Utils.ObjectToStr(newdrno["title"]) + "</a>\r\n							        </li>\r\n							        ");
	}	//end for if

	templateBuilder.Append("\r\n                                    </ul>\r\n                                </div>\r\n                            </div>\r\n                            <div id=\"n1Tab_Content2\" class=\"n1Tab_Content\">\r\n                                <ul class=\"list_top\" id=\"weiboShare\"></ul>\r\n                            </div>\r\n                        </div>\r\n                    </div><!--选项卡 end-->\r\n                </div>\r\n                <div class=\"doctors\">\r\n                    <h3><span><a href=\"visit_nav.aspx\">科室与医生</a></span><span class=\"style1\">Department & Doctors</span></h3>\r\n                    <ul id=\"Offices\">\r\n\r\n                        <li><a target=\"_blank\" href=\"visit_office.aspx?id=24\">泌尿外科</a></li>\r\n\r\n                        <li><a target=\"_blank\" href=\"visit_office.aspx?id=6\">肾病风湿免疫科</a></li>\r\n\r\n                        <li class=\"sty01\"><a target=\"_blank\" href=\"visit_office.aspx?id=57\">神经内科康馨病房</a></li>\r\n\r\n                        <li><a target=\"_blank\" href=\"visit_office.aspx?id=12\">神经内科</a></li>\r\n\r\n                        <li><a target=\"_blank\" href=\"visit_office.aspx?id=13\">消化内科</a></li>\r\n\r\n                        <li class=\"sty01\"><a target=\"_blank\" href=\"visit_office.aspx?id=30\">河南省立眼科医院</a></li>\r\n\r\n                        <li class=\"sty01\"><a target=\"_blank\" href=\"visit_office.aspx?id=2\">过敏反应科（变态反应科）</a></li>\r\n\r\n                        <li><a target=\"_blank\" href=\"visit_office.aspx?id=40\">整形美容外科</a></li>\r\n\r\n                    </ul>\r\n                    <div id=\"doctorsLoader\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/loading.gif\" width=\"16px\" height=\"16px\" /></div>\r\n                    <span class=\"btn_doc\">\r\n                        <a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/btn_02right.png\" width=\"11\" height=\"10\" alt=\"切换\" /></a>\r\n                    </span>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--content end-->\r\n        <div class=\"clear\"></div>\r\n        <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/index.js\"></");
	templateBuilder.Append("script>\r\n        <!--Footer-->\r\n        ");

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


	templateBuilder.Append("\r\n        <!--/Footer-->\r\n    </div></body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
