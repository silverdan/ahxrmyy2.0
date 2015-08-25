(function($){$.extend({mouseCoords:function(ev){if(ev.pageX||ev.pageY){return{x:ev.pageX,y:ev.pageY}}return{x:ev.clientX+document.body.scrollLeft-document.body.clientLeft,y:ev.clientY+document.body.scrollTop-document.body.clientTop}},getStyle:function(obj,styleName){return obj.currentStyle?obj.currentStyle[styleName]:document.defaultView.getComputedStyle(obj,null)[styleName]}});$.fn.dragDrop=function(options){var opts=$.extend({},$.fn.dragDrop.defaults,options);return this.each(function(){var bDraging=false;var moveEle=$(this);var focuEle=opts.focuEle?$(opts.focuEle,moveEle):moveEle;if(!focuEle||focuEle.length<=0)return false;var dragParams={initDiffX:'',initDiffY:'',moveX:'',moveY:''};focuEle.bind('mousedown',function(e){bDraging=true;if(moveEle.get(0).setCapture)moveEle.get(0).setCapture();dragParams.initDiffX=$.mouseCoords(e).x-moveEle.position().left;dragParams.initDiffY=$.mouseCoords(e).y-moveEle.position().top});focuEle.bind('mousemove',function(e){if(bDraging){dragParams.moveX=$.mouseCoords(e).x-dragParams.initDiffX;dragParams.moveY=$.mouseCoords(e).y-dragParams.initDiffY;if(opts.fixarea){if(dragParams.moveX<opts.fixarea[0])dragParams.moveX=opts.fixarea[0];if(dragParams.moveX>opts.fixarea[1])dragParams.moveX=opts.fixarea[1];if(dragParams.moveY<opts.fixarea[2])dragParams.moveY=opts.fixarea[2];if(dragParams.moveY>opts.fixarea[3])dragParams.moveY=opts.fixarea[3]}if(opts.dragDirection=='all')moveEle.css({'left':dragParams.moveX,'top':dragParams.moveY});else if(opts.dragDirection=='vertical')moveEle.css({'top':dragParams.moveY});else if(opts.dragDirection=='horizontal')moveEle.css({'left':dragParams.moveX});if(opts.callback)opts.callback.call(opts.callback,dragParams)}});focuEle.bind('mouseup',function(e){bDraging=false;if(moveEle.get(0).releaseCapture){moveEle.get(0).releaseCapture()}})})};$.fn.dragDrop.defaults={focuEle:null,callback:null,dragDirection:'all',fixarea:null}})(jQuery);
function nTabs(tabObj, obj) {
	var tabList = document.getElementById(tabObj).getElementsByTagName("h3");
	for (i = 0; i < tabList.length; i++) {
		var tabT = document.getElementById(tabObj + "_Title" + i);
		var tabC = document.getElementById(tabObj + "_Content" + i);
		if (tabList[i].id == obj.id) {
			if (tabT != null)
				tabT.className = "active";
			if (tabC != null)
				tabC.style.display = "block";
		} else {
			if (tabT != null)
				tabT.className = "normal";
			if (tabC != null)
				tabC.style.display = "none";
		}
	}
}
function addToFavorite() {	
	var a = document.URL||"http://www.hnsrmyy.net/";
	var b = document.title;
	document.all ? window.external.AddFavorite(a, b) : window.sidebar ? window.sidebar.addPanel(b, a, "") : 0;
}
function showDataTime(obj) {
	  var style = $(obj).attr("class");
	  if (typeof (style) == "undefined") {
		  $("#DataTimeControl").datePicker({
			  inline: true,
			  selectMultiple: false
		  });
		  var height = $("#DataTimeControl").height();
		  $("#DataTimeControl").parent("div.mob_ks06").animate({ height: height + "px" }, 500);
		  $("#DataTimeControl").show("slow");
		  $(obj).attr({ "class": "on" });
	  }
	  else {
		  $("#DataTimeControl").parent("div.mob_ks06").animate({ height: 100 + "px" }, 500);
		  $("#DataTimeControl").hide("slow");
		  $(obj).removeAttr("class");
	  }
}
function cls(event){
event = event? event: window.event
var obj = event.srcElement ? event.srcElement:event.target; 
with(obj)
if(value==defaultValue) value=""
}
function res(event){
event = event? event: window.event
var obj = event.srcElement ? event.srcElement:event.target; 
with(obj)
if(value=="") value=defaultValue
}
function NextIndexImage()
{
	$IndexObjs=$("ul#work_picIndex li");
	$IndexNum=$IndexObjs.index($("ul#work_picIndex li.selected").eq(0))+1;
	if($IndexObjs.size()>$IndexNum)
	{
		$("ul#work_picBody").animate({"left":"-="+380+"px"},"slow");
		$IndexObjs.removeClass("selected");
		$IndexObjs.eq($IndexNum).addClass("selected");
	}
	else
	{
		$("ul#work_picBody").animate({"left":"0px"},"slow");
		$IndexObjs.removeClass("selected");
		$IndexObjs.eq(0).addClass("selected");
	}
}
$(function() {
		var page = 1;
		var i = 5;
		$('a#button_right').click(function() {
		var $pictureShow = $('div.DoctorsPoint');
			var downwidth = $pictureShow.width();
			var len = $('div#DoctorsList').find('li').length;
			var page_number = Math.ceil(len / i);
			if (!$('div#DoctorsList').is(":animated")) {
				if (page == page_number) {
					$('div#DoctorsList').animate({ left: '0px' }, "slow");
					page = 1;
				} else {
				$('div#DoctorsList').animate({ left: '-=' + downwidth }, "slow");
					page++;
				}
			}
		});
		$('a#button_left').click(function() {
		var $pictureShow = $('div.DoctorsPoint');
			var downwidth = $pictureShow.width();
			var len = $('div#DoctorsList').find('li').length;
			var page_number = Math.ceil(len / i);
			if (!$('div#DoctorsList').is(":animated")) {
				if (page == 1) {
					$('div#DoctorsList').animate({ left: '-=' + downwidth * (page_number - 1) }, "slow");
					page = page_number;
				} else {
				$('div#DoctorsList').animate({ left: '+=' + downwidth }, "slow");
					page--;
				}
			}
		});
	///slide start///
	var c_f = 0;
    var c_l = $(".ImagesItem").children("li").length;
    var s_t_i = 3000;
    var timeout;
    var t_c_f = 0;
    $(".scroller").find(".scrollerIndex").children("ol").children("li").children("a").click(function() {
        t_c_f = $(".scroller").find(".scrollerIndex").children("ol").children("li").index($(this).parent());
        stop();
        change(t_c_f);
        if (t_c_f == c_l - 1) {
            t_c_f = 0;
        } else {
            t_c_f++;
        }
    });
    play();
    $(".scroller").hover(function() {
        stop();
    }, function() {
        timeout = setTimeout(play, s_t_i);
    });

    function stop() {
        clearTimeout(timeout);
    }

    function play() {
        clearTimeout(timeout);
        change(t_c_f);
        t_c_f = c_f + 1;
        if (t_c_f >= c_l) {
            t_c_f = 0;
        }
        timeout = setTimeout(play, s_t_i);
    }

    function change(t_c_f) {
        if (t_c_f == 0 && c_f == 0) {

        } else {
            $(".scroller").find(".ImagesItem").children("li").eq(c_f).fadeOut("slow");
            $(".scroller").find(".ImagesItem").children("li").eq(t_c_f).fadeIn("slow");
        }
        $(".scroller").find(".scrollerIndex").children("ol").children("li").children("a").removeClass("on");
        $(".scroller").find(".scrollerIndex").children("ol").children("li").eq(t_c_f).children("a").addClass("on");
        $("div.IndexContent").children("ol").children("li").hide("slow");
        $("div.IndexContent").children("ol").children("li").eq(t_c_f).show("slow");
        c_f = t_c_f;
    }
	///slide end///
	  if ($.isFunction($.fn.fancybox))
	  $("a#NewsPaperImg").fancybox({
				padding : 0,
				scrollOutside  : false,
				width: "96%",
			    height: "96%"
	  });
 $('#dragDiv').dragDrop({fixarea:[0,$('#dragContainer').width()-16,0,$('#dragContainer').height()-22],callback:function(params){	
	var tempNum=parseInt($('#dragDiv').css("left").replace("px",""));
	var num=(Math.round(tempNum/5)*2+8);
	if(num>28)
	{
	   $("div#ul_Content").css({"font-size":num+"px","line-height":num+"px"});
	   
	}
	else
	{
	   $("div#ul_Content").css({"font-size":num+"px"});
	}
	$("div.news_list a").css({"font-size":num+"px"});
}});
	$("div.quick_nav1").click(function(){
		$("div.quick_nav2").slideToggle("slow");
	});
});
/*window.onload=function(){
 var url=document.URL||"";
 var index=url.indexOf("earch.aspx?wd=");
 if(index>1)
 {
	var temp=url.substr(index+14);
	if(temp.indexOf("&")>0)
	{
	 var bug=temp.replace(temp.substr(temp.indexOf("&")),"");
     $("input#tbSearch").val(bug);
	}
    else
    $("input#tbSearch").val(temp);
 }
}*/
function DoctorInfo() {
    var obj = $("#DIV_Info");
    if ($("#p_Intro").height() > 110) {
        obj.animate({ "height": $("#p_Intro").height() + "px" }, 500);
    }
}
function GetTimesByYear(obj)
{
	var year=obj.options[obj.selectedIndex].value;
	$ddlTimes=$("#ddlTimes");
	if(year!="0")
	{
	$.ajax({
            type: "get",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: "DoPostBack/GetTimesByYear.ashx",
            data: "year=" + year,
            beforeSend: function() {
               $ddlTimes.html("<option value=\"0\">选择期数</option>");
            },
            complete: function() { 
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) { 
            },
            success: function(msg){
                for (var i = 0; i < msg.length; i++) {
				$ddlTimes.append("<option value=\""+msg[i].times+"\">"+msg[i].times+"期</option>");             
                }
            }       
        });		
	}
	else
	$("#ddlTimes").html("<option value=\"0\">选择期数</option>");		
}
function SearchWords()
{
if($.trim($("#tbSearch").val())!=""){
   window.location.href="Search.aspx?wd="+$("#tbSearch").val();
}
else{
   alert("搜索内容不能为空！");
   $("#tbSearch").focus();
}
}
function GoNewsPaper()
{
if($("#ddlYears").val()!=0&&$("#ddlTimes").val()!=0)
{
	var str="NewsPaper.aspx?year="+$("#ddlYears").val()+"&t="+$("#ddlTimes").val();
	  window.location.href=str;
}
}
  function CheckMessagePost() {
  	if ($.trim($("input#tbName").val()) == "") {
  		alert("姓名不能为空！");
  		$("input#tbName").focus();
  		return false;
  	}
  	if ($.trim($("input#tbTel").val()) == "") {
  		alert("电话不能为空！");
  		$("input#tbTel").focus();
  		return false;
  	}
  	if ($.trim($("#tbContent").val())=="") {
  		alert("留言内容不能为空！");
  		$("#tbContent").focus();
  		return false;
  	}
  	if ($.trim($("input#tbVate").val()) == "") {
  		alert("验证码不能为空！");
  		$("#tbVate").focus();
  		return false;
    }
  	return true;
  }
  function CheckCheckupsForm(){
  	if ($.trim($("input#tbNumber").val()) == "") {
  		alert("病人编号不能为空！");
  		$("input#tbNumber").focus();
  		return false;
  	}
	if ($.trim($("input#tbName").val()) == "") {
  		alert("姓名不能为空！");
  		$("input#tbName").focus();
  		return false;
  	}
  	if ($.trim($("input#tbVate").val()) == "") {
  		alert("验证码不能为空！");
  		$("#tbVate").focus();
  		return false;
    }
  	return true;
}