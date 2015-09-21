
<%@ page session="false" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">




<head><title>
	注册新用户 - MobileTrans
</title><meta http-equiv="content-type" content="text/html; charset=UTF-8"><link type="text/css" rel="stylesheet" href="css/NewDefault.css"> 
    <script src="js/zhezhao.js" type="text/javascript"></script>
   
</head>


<body>
    <style type="text/css">
	html,body
	{
	    height:100%;padding:0; margin:0;
	}
	 #BS {
        margin: 0 auto -210px;
        padding: 0;
        width: 100%;
        min-height:100%;
        height: auto !important;
        height: 100%;
        min-width: 980px;
        }
    </style>
      
    <div id="BS">
        <div class="headerwraper">
            <div id="header">
                <div class="sojump_logo" style="_margin-left:35px;">
                    <div class="sojump_image">
                        <h1>
                            专业的交通系统调查网站</h1>
                        <a style="background:url('resources/Img/wjx8-ico.gif') no-repeat;width: 135px;height: 56px;position: absolute;display: inline-block;bottom: -3px;right: -134px;" href="/html/8year.html" target="_blank"></a>
                    </div>
                </div>
                <div class="Header_r">
                    <div id="ctl00_divLogin" class="header_reg">
                        <ul>
                            <li style="position: relative">
                                <input type="text" style="color: #9a9a9a;" class="header_input" value="搜索180万问卷模板" onblur="if(value==''){value='搜索180万问卷模板'}" onfocus="if(value=='搜索180万问卷模板'){value='';}" onkeydown="enter_click(event,'search_input');" id="search_input"><a href="#" onclick="search_click('search_input');" class="header_go"></a>
                                <script type="text/javascript">
                                    function enter_click(a, b) {
                                        a = window.event || a;
                                        if (a.keyCode == 13) {
                                            search_click(b);
                                        }
                                    }
                                    function search_click(a) {
                                        var val = document.getElementById(a).value;
                                        if (val == "搜索180万问卷模板") val = "";
                                        if (val) {
                                            var b = /^\d{4,8}$/;
                                            if (b.exec(val)) {
                                                window.location = "/jq/" + val + ".aspx";
                                            } else {
                                                window.location = "/publicsurveys.aspx?keyword=" + encodeURIComponent(val);
                                            }
                                        } else {
                                            window.location.href = "/publicsurveys.aspx";
                                        }
                                    }
                                </script>
                            </li>
                            <li><a href="/register/register.aspx?type=1"><span style="cursor: pointer;" class="header_btn">
                                注册</span></a></li>
                            <li id="ctl00_liLogin"><a href="/login.aspx" class="new_titxt" style="font-size: 14px;">登录</a></li>
                            <li id="ctl00_hrefQQ" style="margin-right:0;"><a href="/connectnew.aspx" class="link-666" style="background:url(images/register/ico_qq.gif) no-repeat; padding-left:17px; font-size:12px;">QQ登录</a></li>
                        </ul>
                    </div>
                    <div id="NMenu">
                        <ul>
                            <li id="ctl00_liIndex"><i></i><a href="/" class="indexnav">首&nbsp;&nbsp;&nbsp;&nbsp;页&nbsp;</a></li>
                            <li id="ctl00_liQCenter"><i></i><a href="/app/survey.aspx" class="indexnav">
                                应用展示</a></li>
                            <li id="ctl00_liPrice"><i></i><a href="/intro.aspx" title="人工客服、尊享服务" class="indexnav">商业服务</a></li>
                            <li id="ctl00_liUseCase"><i></i><a href="/html/promote/info.aspx" title="邀请MobileTrans样本库中的会员回答您的问卷，快速回收到所需数据" class="indexnav">
                                
                               </a></li>
                            <li id="ctl00_liCustomer" style="border: 0; padding-right: 0;"><i></i><a href="/publicsurveys.aspx" class="indexnav">数据中心</a></li>
                        <li id="ctl00_liCustomer" style="border: 0; padding-right: 0;"><i></i><a href="/publicsurveys.aspx" class="indexnav">技术支持</a></li>
                        </ul>
                    </div>
                </div>
                <div class="divclear">
                </div>
                
            </div>
            <div style="background: url(images/register/title-btt.png) repeat-x; width: 100%;
                    height: 13px; margin: 0 auto">
                </div>
        </div>
        <div style="margin:0 auto;  width:945px; text-align:left; margin-top:30px;;">
            
<div style="padding-top:30px;">
    <form name="aspnetForm" method="post" action="register.aspx?type=1" id="aspnetForm">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE3MjE1NDI3NTEPZBYCZg9kFgICCA9kFgICAQ9kFgJmD2QWCAIBDxYCHgdWaXNpYmxlZxYCAgEPZBYCAgEPDxYCHgRUZXh0BQnpl67ljbfmmJ9kZAICDxYCHwBoZAIDDxYCHwBoZAIFD2QWCAICDw9kFgIeBXZhbHVlZWQCAw8PZBYCHwJlZAIGDxYCHwBoFgYCAQ8QDxYCHgdDaGVja2VkZ2RkZGQCAw8QDxYCHwEF5gI8c3BhbiB0aXRsZT0n5Zyo6Zeu5Y235aGr5YaZ5Lq65qyh6L6+5YiwMTDmrKHku6XliY3lsZ7kuo7or5XnlKjpmLbmrrXvvIzmgqjlj6/ku6XlhY3otLnor5XnlKjkuJPkuJrniYjnmoTlip/og73jgIInPjxmb250IGNvbG9yPSdyZWQnPuWFjei0ueivleeUqOS4k+S4mueJiCZuYnNwOzwvZm9udD48Yj48YSBocmVmPSdqYXZhc2NyaXB0OnZvaWQoMCk7JyB0aXRsZT0n5Zyo6Zeu5Y235aGr5YaZ5Lq65qyh6L6+5YiwMTDmrKHku6XliY3lsZ7kuo7or5XnlKjpmLbmrrXvvIzmgqjlj6/ku6XlhY3otLnor5XnlKjkuJPkuJrniYjnmoTlip/og73jgIInIHRhYmluZGV4PSctMScgIHN0eWxlPSdjb2xvcjpncmVlbjsnPig/KTwvYT48L2I+ZGRkZAIFDxAPFgIfAQXmAjxzcGFuIHRpdGxlPSflnKjpl67ljbfloavlhpnkurrmrKHovr7liLAxMOasoeS7peWJjeWxnuS6juivleeUqOmYtuaute+8jOaCqOWPr+S7peWFjei0ueivleeUqOS8geS4mueJiOeahOWKn+iDveOAgic+PGZvbnQgY29sb3I9J3JlZCc+5YWN6LS56K+V55So5LyB5Lia54mIJm5ic3A7PC9mb250PjxiPjxhIGhyZWY9J2phdmFzY3JpcHQ6dm9pZCgwKTsnIHRpdGxlPSflnKjpl67ljbfloavlhpnkurrmrKHovr7liLAxMOasoeS7peWJjeWxnuS6juivleeUqOmYtuaute+8jOaCqOWPr+S7peWFjei0ueivleeUqOS8geS4mueJiOeahOWKn+iDveOAgicgdGFiaW5kZXg9Jy0xJyAgc3R5bGU9J2NvbG9yOmdyZWVuOyc+KD8pPC9hPjwvYj5kZGRkAg0PFgIfAGhkZA==">
</div>

<script src="js/register.js" type="text/javascript"></script>
<style>
.RE-rl{
	float:right;
	font-size:14px;
	color:#91908e;
	margin:15px auto;
	padding-right:35px;
	}
A.rltxt{
	color:#149bdf !important;
	}
A.rltxt:hover{
	color:#F60 !important;
	}
.RE-box{
	width:910px;
	background:#fff;
	margin:0 auto;
	overflow:hidden;
	text-align:left;
	}
.RE-t{
	width:910px;
	overflow:hidden;
    margin:0;
	}
#RE-Content {
	border:1px solid #e9e9e8;
	border-top:none;
	padding:20px 54px 39px;
	text-align:left;
	overflow:hidden;
	background:#fff;
	}
.NSign-CC{
	margin:0 auto;
	overflow:hidden;
	padding-left:180px;
	padding-top:19px;
	clear:both;
	}
.NSign-CC li{
	float:left;
	width:100%;
	padding-bottom:15px;
	}
.pass-label{
	display: block;
    float: left;
    width:85px;
    margin-right:5px;
    line-height:34px;
    height:34px;
    font-size: 14px;
    color: #666;
    text-align: right;
	}
.pass-input {
    display: block;
    float:left;
    /*height:16px;
    width:236px;*/
    height:34px;
    width:258px;
    padding:8px 10px;
    margin-right: 10px;
    border: 1px solid #7f9db9;
    color: #666;
    transition: all 0.3s ease 0s;
	}
.NSign-TT{
	background: #0067ac;
	overflow: hidden;
	line-height:38px;
	font-size: 14px;
	color:#fff;
	text-align:center;
	}
.NSign-down {
	position:absolute;
	height:0px; 
	border-left:5px solid transparent;
	border-right:5px solid transparent;
	border-top:5px solid #0067ac;
	font-size:0px;
	line-height:0px;
	border-width:10px;
	left:50%;
	}
input.submitbutton{
	height:38px; 
	line-height:38px; 
	font-size:16px;
    border-radius:2px;
	padding: 0 75px;
	}

.notetrue
{
 float:left;
 text-align:left;
 padding:3px;
 color:#003CC8;
 margin-top:7px;
}
div.noteok
{
 float:left;
 text-align:left;
 padding:3px;
 color:#5A8F00;
margin-top:7px;
}
div.noteawoke
{
 float:left;
 text-align:left;
 padding:3px;
margin-top:7px;
 color:#FE0000;
}
#divAntiSpam input
{
    height:16px;
    padding:6px;
    border:1px solid #d2d1d1;
}
.SNSign-ntip{
	width:295px;
	margin:0 auto;
	}
.SNSign-ntip li{
	float:left;
	width:25px;
	font-size:12px;
	}
</style>
<div style="margin:0px auto 10px;width:910px;">
  
   
    
    <div id="ctl00_ContentPlaceHolder1_Register1_divVT" class="NSign-TT">
        <p><span id="ctl00_ContentPlaceHolder1_Register1_lblAction">注册新用户，立即开始使用<span id="ctl00_ContentPlaceHolder1_Register1_lblSiteName">MobileTrans</span></span></p>
        <div class="NSign-down">
        </div>
    </div>
    
    <div style="padding-bottom:40px;" id="RE-Content">
    
        
        <div id="ctl00_ContentPlaceHolder1_Register1_pnlCreate">
	
            <ul class="NSign-CC" style="width:600px;">
                <li><label class="pass-label">用户名：</label>
                    <input name="ctl00$ContentPlaceHolder1$Register1$UserName" type="text" maxlength="50" id="ctl00_ContentPlaceHolder1_Register1_UserName" class="pass-input">
                    
                    <div style="display: none" id="divUserNamePromptInfo" class="notetrue">
                        <img style="vertical-align: middle" alt="" src="http://image.sojump.com/images/Master_Images/WjxVip/promptInfo.gif">&nbsp;支持英文与数字，<span style="color: red">注册后不能修改</span>
                    </div>
                    
                    <div style="display: none" id="divUserNameErrorInfo" class="noteawoke">
                        <img style="vertical-align: middle" alt="" src="http://image.sojump.com/images/Master_Images/WjxVip/InfoMistake.gif">&nbsp;<span id="lblUserName"></span>
                    </div>
                    <div style="display: none" id="divUserNameRightInfo" class="noteok">
                        <img style="vertical-align: middle" alt="" src="http://image.sojump.com/images/Master_Images/WjxVip/InfoSucceed.gif">&nbsp;用户名可用。
                        <span id="ctl00_ContentPlaceHolder1_Register1_lblMessage" style="color:Red;"></span>
                    </div>
                    <div class="divclear">
                    </div>
                </li>
                <li>
                <label class="pass-label">密    码：</label>
                    <input name="ctl00$ContentPlaceHolder1$Register1$Password" type="password" maxlength="20" id="ctl00_ContentPlaceHolder1_Register1_Password" class="pass-input" value="">
                <div style="display: none" id="divPasswordPromptInfo" class="notetrue">
                    <img style="vertical-align: middle" alt="" src="http://image.sojump.com/images/Master_Images/WjxVip/promptInfo.gif">&nbsp;6~20位字母、数字或特殊符号。
                </div>
                <div style="display: none" id="divPasswordErrorInfo" class="noteawoke">
                    <img style="vertical-align: middle" alt="" src="http://image.sojump.com/images/Master_Images/WjxVip/InfoMistake.gif">&nbsp;密码长度要在6-20个字符之间。
                </div>
                <div style="display: none" id="divPasswordRightInfo" class="noteok">
                    <img style="vertical-align: middle" alt="" src="http://image.sojump.com/images/Master_Images/WjxVip/InfoSucceed.gif">&nbsp;密码设置成功。
                </div>
                <div class="divclear">
                    </div>
                </li>
                <li>
              <label class="pass-label">确认密码：</label>
                    <input name="ctl00$ContentPlaceHolder1$Register1$ConfirmPassword" type="password" id="ctl00_ContentPlaceHolder1_Register1_ConfirmPassword" class="pass-input" value="">
                <div style="display: none" id="divConfirmPasswordPromptInfo" class="notetrue">
                    <img style="vertical-align: middle" alt="" src="http://image.sojump.com/images/Master_Images/WjxVip/promptInfo.gif">&nbsp;请再输入一遍您上面填写的密码。
                </div>
                <div style="display: none" id="divConfirmPasswordErrorInfo" class="noteawoke">
                    <img style="vertical-align: middle" alt="" src="http://image.sojump.com/images/Master_Images/WjxVip/InfoMistake.gif">&nbsp;<span id="ctl00_ContentPlaceHolder1_Register1_lbPassword">密码不一致或不合法。</span>
                </div>
                <div style="display: none" id="divConfirmPasswordRightInfo" class="noteok">
                    <img style="vertical-align: middle" alt="" src="http://image.sojump.com/images/Master_Images/WjxVip/InfoSucceed.gif">&nbsp;密码和确认密码一致。
                </div>
               <div class="divclear">
                    </div>
                </li>
                <li>
              <label class="pass-label">E-mail：</label>
                    <input name="ctl00$ContentPlaceHolder1$Register1$Email" type="text" id="ctl00_ContentPlaceHolder1_Register1_Email" class="pass-input">
                <div style="display: none" id="divEmailPromptInfo" class="notetrue">
                    <img style="vertical-align: middle" alt="" src="http://image.sojump.com/images/Master_Images/WjxVip/promptInfo.gif">&nbsp;非常重要，请仔细填写！
                </div>
                <div style="display: none; vertical-align: middle" id="divEmailErrorInfo" class="noteawoke">
                    <img style="vertical-align: middle" alt="" src="http://image.sojump.com/images/Master_Images/WjxVip/InfoMistake.gif">&nbsp;<span id="lblEmail"></span>
                </div>
                <div style="display: none" id="divEmailRightInfo" class="noteok">
                    <img style="vertical-align: middle" alt="" src="http://image.sojump.com/images/Master_Images/WjxVip/InfoSucceed.gif">&nbsp;邮件地址输入正确。
                </div> 
                <div class="divclear">
                    </div>
                </li>
                <li>
                   
                    <div style="display: none; color: #555; text-align: left; margin-left: 100px;" id="divReg">
                        </div>
                    
                    <div id="divSource" style="display: none;">
                        
                        <span style="float: left;">&nbsp;&nbsp;您是如何知道MobileTrans的？</span> <span style="float: left;">
                            
                        </span><span style="float: left; display: none;" id="spanOther">
                            <input name="ctl00$ContentPlaceHolder1$Register1$txtOther" type="text" maxlength="20" id="ctl00_ContentPlaceHolder1_Register1_txtOther" style="width:80px;"></span>
                        <br style="clear: both;">
                    </div>
                    
                    <div style="clear: both;">
                    </div>
                    <div style="text-align: left; margin:10px 0 0 90px;">
                        
                        <a href="/wjx/license.aspx" id="ctl00_ContentPlaceHolder1_Register1_hrefXieYi" target="_blank" class="link-U00a6e6">
                            我已阅读并接受MobileTrans服务条款</a><div style="margin-top:20px;">
                            </div>
                       <input type="submit" name="ctl00$ContentPlaceHolder1$Register1$btnCreate" value="创建用户" onclick="return validate();" id="ctl00_ContentPlaceHolder1_Register1_btnCreate" class="submitbutton" onmouseover="this.className='submitbutton submitbutton_hover';" onmouseout="this.className='submitbutton';">
                        
                        
                        <div style="width: 600px; height: 200px; overflow: auto; overflow: scroll; overflow-x: hidden;
                            border: 1px #bacbd9 solid; display: none; margin-top: 10px;" id="divsojing">
                            收奖网是一家提供网络调查、购物返利的信息平台。在您的积极参与下，将会直接影响企事业单位提供更好产品和服务，让您和广大消费者更好的满足消费需求等。，用户须完全同意下列所有服务条款并完成注册程序，才能成为本站的会员。<br>
                            一、用户注册<br>
                            用户须完全同意收奖网的会员服务条款，并完成全部注册程序，才能成为本站正式的会员。<br>
                            二、服务内容<br>
                            用户成为收奖网的正式会员后，收奖网将不定期地通过E-mail与其取得联系，邀请受访者会员参与各种形式的市场调研。<br>
                            三、权利和义务<br>
                            1. 收奖网正式的会员可通过参加调查获得相关利益；<br>
                            2. 收奖网正式的会员可根据对被调查产品或服务的喜好，自由真实地发表意见，以及对产品或服务提出建议和要求。<br>
                            3. 收奖网承诺保护用户的隐私和个人信息，保证不以任何借口、任何形式向其他第三方透露用户个人信息，或经加工整理的专有私人信息，除非法律规定或用户本人书面同意。<br>
                            4.一旦注册，用户将提供真实的个人信息，诸如姓名、工作单位和电子邮件地址等，收奖网还将要求用户提供一些附加信息以确认其是否愿意和有资格参加一些具有特殊要求的市场调研。收奖网将使用这些信息去建立个人帐号，并由用户设置的口令来保护。<br>
                            5.对于因用户个人对网络的不正确使用，或不适当处理造成的信息披露，及因此而引起的纠纷，收奖网不承担任何责任。<br>
                            6.用户成为受访者会员后，收到收奖网的访问邀请后须在要求的时间内妥善填写问卷后提交，收奖网确认是有效问卷后会给用户回复，以此为一次有效的问卷回答，并累计其积分。<br>
                            7.收奖网会要求用户通过手机验证跟支付宝实名认证。用户不得恶意填写问卷，不得重复注册多个用户填写问卷，一经发现将直接永久锁定用户。<br>
                            四、调研分析手段<br>
                            1. 收奖网有权对用户提供的相关信息进行分析、整理，信息来源包括但不限于以下途径：<br>
                            (a)使用软件程序获取用户的访问信息<br>
                            (b)注册用户填写的调查表<br>
                            (c)举办市场活动获得的用户信息<br>
                            (d)从其它合作网站合法获得的用户信息<br>
                            2. 收奖网有权以分类、分组、分地域等形式分析用户的类型、特点、区域特色等指标。
                            <br>
                            五、其他<br>
                            1.上述协议条款的解释权和修改权归收奖网所有。
                            <br>
                            2.收奖网有权随时对收奖网受会员服务协议条款进行修改，并且一旦发生服务协议条款的变动，将在收奖网页面上提示修改的内容；会员如果不同意服务协议条款的修改，可以主动与收奖网取得联系；如果用户继续参与收奖网的在线调查，则视为用户已经接受服务协议条款的修改。
                            <br>
                            3.本协议条款和收奖网的其他协议服务条款构成完整的协议。本协议条款因与中华人民共和国现行法律相抵触而导致部分无效，不影响其他部分的效力。
                        </div>
                        <script type="text/javascript">
                            function showXy() {
                                var divsojing = document.getElementById("divsojing");
                                divsojing.style.display = divsojing.style.display == "none" ? "" : "none";
                            }
                        </script>
                    </div>
                </li>
            </ul>
        
</div>
    </div>
</div>
<script type="text/javascript">
      function $$(id){return document.getElementById(id);} 
    var userName=$$("ctl00_ContentPlaceHolder1_Register1_UserName");
      var password=$$("ctl00_ContentPlaceHolder1_Register1_Password");
        var email=$$("ctl00_ContentPlaceHolder1_Register1_Email");
          var confirmPassword=$$("ctl00_ContentPlaceHolder1_Register1_ConfirmPassword");
          var lbMsg=$$("ctl00_ContentPlaceHolder1_Register1_lbMsg");
    var createUserButton = $$("ctl00_ContentPlaceHolder1_Register1_btnCreate");
    var divAntiSpam=$$("divAntiSpam");
    var rndnum="1657701438";
    if(divAntiSpam){
        var validateImage =divAntiSpam.getElementsByTagName("input")[0];
//        validateImage.onkeydown=function(e){
//            e = e || window.event;
//            if (e && e.keyCode == 13) {
//                createUserButton.onclick = function () {
//                    eval(unescape(createUserButton.href));
//                }
//                createUserButton.onclick();
//            }
//        }
    }
    var divType=document.getElementById("ctl00_ContentPlaceHolder1_Register1_divType");
    var inputTypes=null;
    if(divType){
      inputTypes=divType.getElementsByTagName("input");
    }
    function selectTag(showContent,selfObj){
	// 操作标签
	var tag = document.getElementById("RE-Tags").getElementsByTagName("li");
	var taglength = tag.length;
	for(i=0; i<taglength; i++){
		tag[i].className = "";
	}
	selfObj.className = "RE-selectTag";
	// 操作内容
	inputTypes[showContent].checked=true;
}
    var isUserValid=false;var isPasswordValid=false;var isEmailValid=false; var isConfirmPasswordValid=false;
   
    function endregister()
    { 
      window.parent.isLogin=1;
       window.parent.isTiyan=false;
       window.parent.PDF_close();
    }
    function showhide(id,tar)
    {
       var obj=$$(id);
         obj.style.display=tar.checked?"":"none";
    }
</script>
</form>

</div>

        </div>
        <div style="height:240px;"></div>
    </div>
    <div id="footer" style="height:210px;">
        <div id="contact">
            <ul class="ulCons">
                <li style="background: url(images/register/NContact.gif) no-repeat; height: 24px;">
                    <b>产品</b></li>
                <li><a href="/intro.aspx">自助服务</a></li>
                <li><a href="/html/promote/info.aspx">数据中心</a></li>
              <li><a href="/app/exam.aspx">在线考试系统</a></li> 
            </ul>
            <ul class="ulCons">
                <li style="background: url(images/register/NContact2.gif) no-repeat; height: 24px;">
                    <b>客户</b></li>
                <li><a href="/client.aspx">客户展示</a></li>
                <li><a href="/html/media.aspx">媒体报道</a></li>
            </ul>
            <ul class="ulCons">
                <li style="background: url(images/register/NContact3.gif) no-repeat; height: 24px;">
                    <b>支持</b></li>
                <li><a href="/html/contactus.aspx">客服中心</a></li>
                <li><a href="/help/help.aspx">帮助中心</a>&nbsp;&nbsp;<a href="/api.aspx">API</a></li>
                
            </ul>
            <ul class="ulCons" style="width: 105px">
                <li style="background: url(images/register/NContact4.gif) no-repeat; height: 24px;">
                    <b>团队</b></li>
                <li><a href="/html/aboutus.aspx">关于我们</a></li>
                
                <li><a href="/recentupdate.aspx">最新动态</a><link title="RSS 2.0" type="application/rss+xml" href="http://www.sojump.com/feed.aspx" rel="alternate">
                        <a href="http://www.sojump.com/feed.aspx" target="_blank">
                            <img src="http://image.sojump.com/images/rss/icon_sub_c1s11.gif" width="16px" alt="RSS订阅最新调查问卷" title="RSS订阅最新调查问卷" height="16px" class="alCons_img" style=""></a></li>
            </ul>
        </div>
        <div class="coypright">
            <div style="float: left;">
                <img width="127" height="49" alt="" src="resources/Img/bottomlogo.gif"></div>
            <ul class="alCons">
                <li>Contact US</li>
                <li>Tel：400-6300-886</li>
                <li>E-mail：cs@sojump.com</li>
            </ul>
          
            <ul class="alCons alcons_txt">
                <li style="letter-spacing: 13px;">
                    <img width="210" height="25" alt="" src="http://image.sojump.com/images/MasterNew/bottom_right.gif"><br>
                    专业的交通系统调查网站</li>
            </ul>
        </div>
        
    </div>
       <div style="display:none;">
<script src="http://s20.cnzz.com/stat.php?id=4478442&amp;web_id=4478442" language="JavaScript"></script><script src="http://c.cnzz.com/core.php?web_id=4478442&amp;t=z" charset="utf-8" type="text/javascript"></script><a href="http://www.cnzz.com/stat/website.php?web_id=4478442" target="_blank" title="站长统计">站长统计</a>
</div>



</body>




</html>