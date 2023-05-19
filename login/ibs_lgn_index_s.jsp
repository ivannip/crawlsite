


<html xmlns="http://www.w3.org/1999/xhtml" lang="sc" class="zh-cn">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>中银香港网上银行</title>
<meta http-equiv="x-ua-compatible" content="IE=EmulateIE9,IE=EmulateIE10,IE=EmulateIE11,IE=Edge">
<link href="../css/IbsLgn.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../css/linkui.css" type="text/css"/>
<link rel="shortcut icon" href="data:," >
<link rel="apple-touch-icon" href="data:," >
<link rel="apple-touch-icon" sizes="120x120" href="data:," >
<link rel="apple-touch-icon" sizes="152x152" href="data:," >
<script type="text/javascript" src="../js/IbsDelay.js"></script>
<script type="text/javascript" src="../js/IbsCommon.js?t=s&amp;v=20230428163500"></script>
<script type="text/javascript" src="../js/IbsValidForm.js?t=s&amp;v=20230428163500"></script>
<script type="text/javascript" src="../js/promote/IbsBanner.js?t=s"></script>
<script type="text/javascript" src="../js/browser_detect.js?v=20230428163500"></script>
<script type="text/javascript" src="../js/promote/IbsMaint.js?t=s"></script>
<script type="text/javascript" src="../js/promote/IbsContingency.js"></script>
<script type="text/javascript" src="../js/promote/IbsBannerDr.js?t=s"></script>
<script type="text/javascript" src="../js/e2ee/ame2eea.js?t=c"></script>
<script src="../js/jquery-2.2.4.js" type="text/javascript"></script>
<script src="../js/IbsLgnFontSize.js?t=s&amp;v=20230428163500"></script>
<script type="text/javascript" src="../js/audio.js"></script>
<script type="text/javascript" src="../js/LinkUiKit.js"></script>
<script type="text/javascript" src="../js/IbsFmpDeviceFingerprint.js"></script>
<script type="text/javascript" src="../js/IbsLogin_s.js"></script>
<script type="text/javascript">
var doFocus = true;
var bName = navigator.appName;
var bVer = parseInt(navigator.appVersion);
document.onkeypress =trigger;

if(document.location.protocol && document.location.protocol=="http:")
{
	var sslpath="https://"+document.location.host+document.location.pathname;
	document.location.replace(sslpath);
}


if ( bName == "Netscape" && bVer >= 4 ) {
        window.captureEvents(Event.KEYPRESS);
        window.onKeyPress = trigger;
   }

if(screen.width <=640 || screen.height<=480)
	window.resizeTo(625,425);
	
function isCookieSupported() {
	document.cookie = "cookie=enable";
	if (document.cookie.length > 0)
		return true;
	else
		alert("阁下的浏览器并不允许存取及使用Cookies，请重新设定。");

	return false;
}

function MM_findObj(n, d) { //v3.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document); return x;
}

function getFocus(ip_field) { //v3.0
 
  self.focus();
  loc_field = MM_findObj(ip_field);
  loc_pass= MM_findObj("text_str_dispPass");

  if(doFocus)
  {	
   if(loc_pass.value.length==0)
    loc_field.focus();
  }
}

function trigger(e){

   var code ;
   var name ;  

   if ( bName == "Netscape" )
   {
      code = e.which;
      name = e.target.name;  
   }
   else
   {
      e = window.event;
      code = e.keyCode;
      name = e.srcElement.name; 
   }

   if( name=="text_str_dispPass"){ 
	   if ( code == 13 )
       		  sub_step();
   }
   
   if( name=="verCodeInput"){ 
	   if ( code == 13 )
       		  sub_step();
   }
   
   if( name=="text_str_dispID" || name=="text_str_dispPass")
   {
   		if( code == 13)
   		{
   			return false;
   		}
   }
   	
   return true ;
}

function chk()
{
	var f = document.form_login;
	var errmsg="";

	items 	 = new Array();
	items[0] = new item(f.text_str_dispID, "网上银行号码/用户名称", "loginID", 0,8,16);
	
		items[1] = new item(f.text_str_dispPass, "  密码  ", "Blank", 0,6,12);
	
	
	
		items[2] = new item(f.verCodeInput, "验证码", "verCode", 0,4,4);
	 
	result   = validForm("S", items);
	
	if (!result)
		return false;	 	
	else
		return true;
}

function getScreenWidth()
{
	if(screen && screen.width && MM_findObj("screenWidth"))
	{
		MM_findObj("screenWidth").value=screen.width;
	}
}

function sub_step() {

	if(!isCookieSupported())
		return ;
		
	doFocus=false;  
	var f =  document.form_login;
	var f1 = f.text_str_dispID;
	var f2 = f.txt_loginID;
	var f3 = f.text_str_dispPass;
	var f4 = f.txt_loginPass;
	
		var f5 = f.verCodeInput;
		var f6 = f.txt_verCodeInput;
	
	
	var deviceNumber = getEncryptionDeviceNumber();
	f.deviceNumber.value = deviceNumber;
	
	if( delay('1') )
	{
		if(chk())
		{
			
			f4.value=f3.value;
			f2.value=f1.value;
			f3.value="";
			f1.value="";
			
				f6.value=f5.value;
				f5.value="";
			
			
			var e2eeSid = '0001tb5EX2z4UxAVmQybTpsQvJyyGHKBKg96j06J0XGdK7Lj7VyvAGnVxpkFpPSXQFvp3Vk8iDCtNTvoNXb-vKU4Fcz8CUxc0cJOGiuuTgvvDRlVaQ';
			var pubKey = 'B7529B679C20B4A75CF78BA8F0E102F033C3832BA7C8A116B906F80D2A956543EFBDB0AAE61AF7CE36B698D98DC6405F50E03D948EE9E7595CC4121C93C355364811DF71EF2E71A94E79044B3F0419874C12B71874039FBCD8B0BA83A15D188355C1A69A257209333F4D062B8A88A3F04B5D9BC0A6809F408CC41A10521EA4E69E3DCC209186C95AAEAB04707C9659022F06B1921D2587EC6423588A6102C5FAF0A3A799F30CF196FD90D87679EB5EB7D9DA1C65C61A195780FE739252BE83586CA680F8E35992983C5A8D60AF8ABCFF7ED54A3199547A40E3586D23C33CCAF003D5D1C9EAD2F7565658B03D6EC60F6F70D71BCF3B92BB712DBAB95088F33969,0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FE4F,NO_KCV';
			var randomNumber = 'E2E41D8D62F959E31BC58CCBD052BC76';
			var oaepHashAlgo = 'SHA-256';

			
			f.E2EE_RPIN.value = ame2eea.encryptPinForAM(e2eeSid, pubKey, randomNumber, f4.value , oaepHashAlgo);
			
			
			
				f4.value = "ENCRYPT" ;
			
			
			f.submit();
			setTimeout("gb_delayFlag = true;",5000);
		}
		else
			gb_delayFlag=true;
	}
}
function isDenyAccess() 
{
	var isDenyAccess = false;
	var ua = navigator.userAgent.toLowerCase();
	var BrowserTypeList = [ 
	{name : 'mobile',type : /(android|iphone|ipad|mobile|phone|windows phone|ipod|midp|ucweb|symbianos)/i}
	 ];
	for ( var key in BrowserTypeList) {
		var b = BrowserTypeList[key];
		var m = b.type.exec(ua);
		if (m) {
			if(b.name == "mobile")
			{
			   isDenyAccess = true;
			}
			else
			{
			   isDenyAccess = false;
			}
			break;
		}
	}
	if(navigator.platform == 'MacIntel' && navigator.maxTouchPoints>1)
	{
		isDenyAccess = true;
	}
	if(isDenyAccess)
	{
		alert('如透过流动装置登入网上银行，请您注意必须加强安全设定。\n详情请参阅本行网页内之保安资讯。');
		return false;
	}	
}
function online() {
		var width = 540;
		var height = 420;
		var left = window.screen.availWidth/2 - width/2;
		var top = window.screen.availHeight/2 - height/2;
		var subWin = window.open('https://onc.bochk.com/infoweb/uentry/UEntry.aspx?lang=S','webchat','width='+width+',height='+height+',left='+left+',top='+top+',status=no,scrollbars=yes,resizable=yes,menubar=0,location=0,directories=0');
		subWin.focus();
	}

</script>

<script type="text/javascript">var wrt_request_id='000002400005fc0e8f217122001C7A84';var wrt_request_url='https://its.bochk.com/login/ibs_lgn_index_s.jsp';var wrt_correlator='0000F3850005fc0e8d97ed62001CF025';</script>
<script language="JavaScript" src="wrt_perf_timing.js" type="text/javascript"></script>
</head>

<body id="login" onload="setCookie('from','012',null,'/');document.form_login.text_str_dispID.focus();getScreenWidth();isDenyAccess();tipsAlert();">

<div id="header">
	<div id="header-top">
		<a id="logo" title="中国银行(香港)有限公司"><img src="images/ie6/logo.jpg" alt="中国银行(香港)有限公司" /></a>
		<ul id="nav-top">
			<li><a class="en-text" href="ibs_lgn_index_e.jsp">ENG</a></li>
			<li><a href="ibs_lgn_index_c.jsp">繁體</a></li>
			<li><div id="fontsize"><a href="ibs_lgn_index_s.jsp#" class="en-text" title="字体大小：原设定"><span class="access">字体大小：原设定(</span>A<span class="access">)</span></a><a href="ibs_lgn_index_s.jsp#" class="en-text" title="字体大小：较大"><span class="access">字体大小：较大 (</span>A<span class="access">)</span></a><a href="ibs_lgn_index_s.jsp#" class="en-text" title="字体大小：最大"><span class="access">字体大小：最大 (</span>A<span class="access">)</span></a></div></li>
			<li><a href="javascript:openHelp('/cmm.cnuMainBeforeLogin.do?langType=S&bkCode=012',600,670)">联络我们</a></li>
		</ul>
	</div>
	<div id="separator"><div id="separator-red"></div></div>
</div>
<div id="importInfo">
	<div id="importInfo_box"> 

		<div class="style-b_boc">
			<div class="its_news" >
				<div class="its_news_header">重要讯息</div>
				
				
					<div class="its_news_body">
						<p class="its_news_subheader">
							<ul><li type="disc">香港投资者标识符制度（「港股实名制」）已于2023年3月20日实施，请立即提交同意授权</li></ul>
						</p>
						<div class="importInfo_content" id ="importInfo_content_0">
							投资者如未就港股实名制向银行提交同意授权，请立即递交，否则于实施日后将无法买入或存入港股。<br>
<br>
请即登入网上银行 (选择：投资 &gt; 港股证券&gt; 香港投资者标识符制度 个人资料用户许可证) 提交同意授权！请留意，投资者所提交的同意授权，需于两个交易日内才能生效。<br>
<br>
投资涉及风险。受条款约束。
						</div>
					</div>
				
			</div>
		</div>
	
	</div>
</div>
<div id="content">
	<div id="content-div">
		<div id="loginbox">
			<div id="loginbox-content">
				<img id="boc-building" src="images/ie6/building.jpg" alt="" />
				<div id="loginbox-content-container">
					<div class="left">
						<h1>登入香港网上银行</h1>
						<p>已登记 / 办理网上银行服务</p>
						<form name="form_login" method="post" action="https://its.bochk.com/lgn.default.do"	target="_top">
							<span><label for="username">网上银行号码 / 用户名称
							<div id="tips">
					  			<div id="tips_mark">
									<img id="tips_image" src="srp/images/tips.jpg" alt="">
								</div>
								<!-- must use embedded display for tips_box show/hide -->
								<div id="tips_box" style="display: none;">
									<div id="tips_box_statement">
										<h3>忘记网上银行号码/用户名称</h3>
										<div id="images_Statement">
											<img src="images/e-Statement-CN.png"/>
										</div>
										<h4>综合月结单首页</h4>
										<p>您的客户号码即是网上银行号码。</p>
									</div>
									<div id="tips_box_creditCard">
										<div id="images_creditCardBackside">
											<img src="images/creditCardBackside.png"/>
										</div>
										<h4>中银卡(提款卡)</h4>
										<p>如属私人财富或中银理财客户，您可于中银卡(提款卡)卡背上查阅您的客户号码。</p>
									</div>
								</div>
							</div>
							</label>
							<input id="username" name="text_str_dispID" type="text" maxlength="16"/></span>
							<span><label for="password">网上银行密码</label><input type="password" id="password" name="text_str_dispPass" maxlength="12" autocomplete="off"/></span>
							
								<span style="display:inline"><label for="checkCode">验证码<div style="display:inline"><img id="verifyImg" src="../portal/images/trans.gif" onclick="changeImage()" title='更新图像'/></div>
								</label><input id="checkCode" name="verCodeInput" size="4" maxlength="4" autocomplete="off"/>
								<input type="hidden" name="txt_verCodeInput" value="">
								<br/>
								<label><div style="display:inline-block; margin-left:49px"><a class="apply" href="javascript:changeImage();" style="border-bottom:0px;text-decoration:underline; vertical-align:2.5px; padding-right:10px" tabindex="-1">更新图像</a>
								<script type="text/javascript" language="javascript">
			                    play('cn',false);
								</script></div></label>
								</span>								
							
							<input type="hidden" name="b_login" value="true">             				
	          				<input type="hidden" name="txt_loginID" value="">
	          				<input type="hidden" name="langType" value="S">
	          				<input type="hidden" name="bkCode" value="012">
	          				<input type="hidden" name="txt_loginPass" value="">
	          				<input type="hidden" name="txt_loginValue" value="0.6897770141874219">
	          				<input type="hidden" name="screenWidth" value="0">
	          				<input type="hidden" name="empnum" value="null">
	          				<input type="hidden" name="empbankCode" value="null">
	          				
	          				<input type="hidden" name="ssolink" value="null">          				
	          				<input name="E2EE_RPIN" type="hidden" >
	          				<input type="hidden" name="referer" value="https://its.bochk.com/login/ibs_lgn_index_e.jsp">
	          				<input type="hidden" name="deviceNumber" value=""> 
						</form>
						<p id="loginbox-nav">
							<a class="more" href="javascript:sub_step()"><span class="more-left"></span><span>登入</span><span class="more-right"></span></a>
							<a class="apply" href="javascript:openHelp('/information/apply/ibs_hta_main_s.html')" style="border-bottom:0px;text-decoration:underline;">申请办法</a>
						</p>
						<p id="forgotpwd">若阁下<a href="javascript:openHelp('/login/srp/help/ibs_srp_help_boc_s.html')">忘记网上银行号码 / 用户名称</a>，<a href="https://its.bochk.com/srp.resettingPass.do?langType=S&amp;bkCode=012">重设网上银行密码</a>。</p>
					</div>
					<div class="right">
						<h2></h2>
						
							<div class="important_notes"><img src="images/greyExclamationMark.png">&nbsp;重要提示</div>
							<p class="shortDesc"><p>经此渠道提供的服务之相关条款及细则将以电子形式提供，查询请联络在线客服。</p>
<p>客户在登入网上银行时，请注意登入版面有否出现任何异常情况(例如：不正常的弹出版面、视窗运作缓慢、重复要求客户输入密码等)。如有怀疑，切勿按照可疑网页上的指示操作或输入任何资料，并请即致电本行客户服务热线(852) 3988 2388。详情请参阅<a></a><a href="https://www.bochk.com/sc/security.html">保安资讯</a></p>
</p>
							
								<p class="moreCount" ><a class="more-right" href="javascript:openHelp('/cmm.loginPageNotice.do?langType=S&bkCode=012',600,670)">更多</a></p>
							
						
						</br><p>若您想了解网上银行操作，请浏览<a style="border-bottom:0px;text-decoration:underline;" href="javascript:openHelp('https://www.bochk.com/dam/more/ibs/operational_guidelines_SC.pdf')">操作指引</a>。</p>
					</div>
				</div>
			</div>
		</div>
		<div class="style-a_boc">
			<div>
				<div>
				
					<div class="its_news" >
						<div class="its_news_header">最新消息</div>
						
							<div class="its_news_subheader" id = "subheader_1" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_1','content_1','images_up_1','images_down_1')">
								<div class="its_news_title" id="title_1">提防钓鱼讯息 保障支付卡安全</div>
								<div class="publishDate" id="publishDate_1">
										2023-05-16
								</div>
								<div class="images_up" id = "images_up_1" style="display: block;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_1" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_1" style="display:none;">
								中国银行（香港）（本行） 提醒客户及公众人士，慎防意图骗取个人资料及支付卡(包括中银信用卡及中银卡)资料的钓鱼电邮/短讯。<br>
<br>
近日有骗徒伪冒网购平台/积分奖赏平台/邮政服务/速递公司/政府部门/银行发出钓鱼电邮或短讯，以不同借口要求客户点击电邮或短讯内的超链接进行验证、换领积分、退款、付费或个人资料更新，例如讹称平台需客户更新资料才能继续提供服务，或客户有包裹因故无法派递而需更新资料及/或额外付费，或客户账户被多收款项可申请退款或自动扣账失败需提供信用卡资料作实时处理等，诱骗客户在该超链接的伪冒网站内输入个人及支付卡资料。<br>
<br>
这些虚假电邮、短讯及伪冒网站的超链接会以不同组合，甚至仿似相关机构真正网址的域名（如以类似的英文字母、数字或符号取代）出现，而虚假短讯的发送人名称有机会与真实商户名称相同，导致虚假短讯与过往来自真实商户的短讯共同显示，企图误导客户及盗取客户的个人及支付卡资料，从而用于非法用途，包括绑定流动支付及服务后，在本地或海外进行未经授权签账，或直接以盗取的数据进行未经授权的网上交易。<br>
<br>
本行重申不会以电话、电话录音、电邮、短讯、超链接、二维码或附件等方式，索取客户的敏感个人资料，包括银行帐户资料、网上银行用户名称、登入密码、一次性密码或支付卡号码/保安码。<br>
<br>
本行呼吁客户提高警觉，慎防受骗：<br>
<br>
• 请妥善保管支付卡、个人资料和支付卡资料(包括卡号、有效日期、卡背面的验证码、短讯一次性密码)，切勿向任何人透露敏感个人资料、支付卡资料、及任何密码，包括短讯一次性密码。<br>
• 尽管现时流动装置具备自动填写一次性密码的功能(AutoFill)，请于输入有关一次性密码以进行任何交易授权前，小心核对一次性密码短讯的内容及交易資料(例如︰商户名称、交易类别、交易金额及货币)是否与实际进行的用途或交易相符。<br>
• 输入任何资料或进行交易前，须检视该网页地址是否真确与可信。<br>
• 切勿打开来历不明的电邮、短讯、附件或超链接及下载可疑的应用程序。如有怀疑，请即停止操作，切勿输入任何资料，关闭窗口，并向本行查询，或透过真实商户的官方联络途径核实。<br>
• 如客户曾向怀疑伪冒网站提供资料，请即致电客户服务热线(852) 3988 2388（选取语言后，按 3、#、2），并向警方举报。<br>
• 如客户收到有关绑定流动支付及服务或网上交易的可疑讯息，请立即报警求助及与本行联络。<br>
• 经常透过网上银行、手机银行或月结单检查中银信用卡/中银卡交易纪录以检查是否有任何可疑或未经授权的交易。<br>
• 客户若未有妥善保管中银信用卡/中银卡、个人资料和支付卡资料(包括卡号、有效日期、卡背面的验证码及/或短讯一次性密码)，或忽略本行发出的交易通知，有可能需要按信用卡合约/信用卡持卡人合约、条款及细则/中银提款卡重要通知和服务条款对该等招致的交易及/或损失负责。<br>
<br>
本行会不时于本行网页更新有关诈骗信息提示，详情请浏览 www.bochk.com/sc/aboutus/fraudalert.html。有关电子银行服务的保安信息，请浏览 www.bochk.com/sc/security.html。<br>
<br>
							</div>
							<div class="its_news_line" id = "line_1"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_2" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_2','content_2','images_up_2','images_down_2')">
								<div class="its_news_title" id="title_2">2023年5月21日系统维护通知</div>
								<div class="publishDate" id="publishDate_2">
										2023-05-16
								</div>
								<div class="images_up" id = "images_up_2" style="display: block;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_2" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_2" style="display:none;">
								由于本行进行系统维护，「转数快」服务包括实时资金转账、直接付款授权及账户代号登记将于2023年5月21日（星期日）凌晨3:20至早上7:00暂停，如有需要，客户请提前安排相关缴付。
							</div>
							<div class="its_news_line" id = "line_2"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_3" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_3','content_3','images_up_3','images_down_3')">
								<div class="its_news_title" id="title_3">有关终止分行「智盈理财」品牌专窗服务通知</div>
								<div class="publishDate" id="publishDate_3">
										2023-05-15
								</div>
								<div class="images_up" id = "images_up_3" style="display: block;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_3" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_3" style="display:none;">
								兹通知中国银行（香港）分行，由2023年6月19日(星期一) 起，将分阶段进行装修及终止分行「智盈理财」品牌专窗，完成装修后以全新面貌提供更便捷、优质的银行服务。期间分行将照常营业及维持服务。「智盈理财」客户如需享用一般银行服务，可使用我行自助设备或其他柜台办理。<br>
<br>
客户亦可透过本行网上银行、手机银行、电话银行及自动柜员机等多元化的电子渠道，享用便捷的银行服务。<br>
<br>
如有查询，请致电「智盈理财」客户服务热线（852）3988 2988。<br>
<br>
如本客户通知的中、英文版本有歧异，概以中文版本为准。<br>
							</div>
							<div class="its_news_line" id = "line_3"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_4" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_4','content_4','images_up_4','images_down_4')">
								<div class="its_news_title" id="title_4">信用卡交易/活动双向提示短讯</div>
								<div class="publishDate" id="publishDate_4">
										2023-05-14
								</div>
								<div class="images_up" id = "images_up_4" style="display: block;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_4" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_4" style="display:none;">
								当发现您的信用卡出现异常交易/活动时，中国银行(香港)(「本行」)会发送双向提示短讯至您已登记的流动电话号码，请您回复该交易/活动是否由您本人授权/发动。在回复该短讯前，请您小心核对短讯内所显示的详情 (例如商户名称、交易时间、交易货币和金额)。<br>
<br>
如您曾授权该交易/发动该活动，请于确认该短讯内的资料正确后回复「1」。如您并无授权/发动，或短讯内的资料有误，请回复「9」。本行会因应您的回复而作出跟进，包括在收到回复「9」后实时停止您的信用卡，并于稍后与您联络了解详情。<br>
<br>
请注意：<br>
1. 回复该短讯时，切勿分享任何个人及信用卡资料。您亦有可能被电讯服务供应商收取发送短讯费用。<br>
<br>
2. 如您错误回复该短讯，请立即致电与本行联络。<br>
<br>
3. 如您身处海外时收到该短讯，请立即致电与本行联络，无须回复该短讯。<br>
<br>
							</div>
							<div class="its_news_line" id = "line_4"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_5" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_5','content_5','images_up_5','images_down_5')">
								<div class="its_news_title" id="title_5">有关「中银财互通」服务终止通知</div>
								<div class="publishDate" id="publishDate_5">
										2023-04-20
								</div>
								<div class="images_up" id = "images_up_5" style="display: block;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_5" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_5" style="display:none;">
								<p>兹通知由2023年6月20日(「生效日期」)起，中国银行（香港）有限公司（「中银香港」）及中国银行股份有限公司（「中国银行」）将终止「中银财互通」服务，包括「中银财互通」卡﹑网上银行「中银财互通」相关功能等。</p>
<p>&nbsp;</p>
<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 「中银财互通」将由生效日终止以下服务(适用于中银香港发卡)：</p>
<p>－「中银财互通」卡，包括:于自动柜员机、消费服务终端机办理的联动扣账服务及余额查询等交易；</p>
<p>－中银香港个人网上银行「中银财互通」项下服务，包括:账户概览、账户交易纪录、汇款至内地、汇款至香港和汇款交易纪录<sup>1</sup>等交易；及</p>
<p>－中国银行深圳市分行的柜台服务和自助设施所提供的「中银财互通」服务，包括提款、转账及余额查询等交易。</p>
<p>&nbsp;</p>
<p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 客户可携同个人身份证明文件（如：港澳居民来往内地通行证）及「中银财互通」卡，亲身前往中国银行深圳市分行办理取消内地「活期一本通」 账户，客户于「中银财互通」服务终止后，仍可前往该分行办理销户及取回账户余额。(适用于中银香港发卡)</p>
<p>&nbsp;</p>
<p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 客户可继续于中银香港个人网上银行/手机银行使用有关「中银财互通」卡内之中银香港港币账户，客户亦可为该账户申请办理「中银卡」。</p>
<p>&nbsp;</p>
<p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 中国银行个人网上银行之中银香港港币账户/中国银行发出的「中银财互通」卡的联动及相关服务<sup>2</sup>亦取消，详情请向中国银行查询。</p>
<p>&nbsp;</p>
<p>如有查询，请于办公时间（星期一至五上午9时至下午6时，星期六上午9时至下午1时）内致电中银香港客户服务热线 (852) &nbsp;&nbsp;3988 2333，浏览<a href="http://www.bochk.com/">www.bochk.com</a>或亲临中银香港任何一家分行查询。有关中国银行账户/服务的查询，可直接联系中国银行分行或致电该行客户服务热线(86)&nbsp;&nbsp; 755-95566。</p>
<p>&nbsp;</p>
<p><b>中国银行(香港)有限公司</b>谨启</p>
<p>2023年 4月 20日</p>
<p>&nbsp;</p>
<p>注：</p>
<p><sup>1 </sup>在「中银财互通」服务终止后，中银香港港币账户的交易纪录及汇款交易纪录仍然保留，客户可于中银香港个人网上银行查阅有关事务历史记录 (理财&gt;我的账户&gt;事务历史记录) 或 汇款事务历史记录 (理财&gt;汇款&gt;事务历史记录/汇出汇款查询/汇入汇款查询)。</p>
<p>&nbsp;</p>
<p><sup>2 </sup>中国银行发出的「中银财互通」卡联动及相关服务包括︰自动柜员机提现及查询中银香港账户之服务及消费联动服务。中国银行个人网上银行「中银财互通」项下服务包括︰账户概览、账户交易纪录、汇款至内地、汇款至香港和汇款交易纪录等交易。</p>
<p>&nbsp;</p>
<p>本函的中英文文本如有歧义，概以中文文本为准。</p>
							</div>
							<div class="its_news_line" id = "line_5"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_6" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_6','content_6','images_up_6','images_down_6')">
								<div class="its_news_title" id="title_6">投资市场风险提示</div>
								<div class="publishDate" id="publishDate_6">
										2023-03-20
								</div>
								<div class="images_up" id = "images_up_6" style="display: block;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_6" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_6" style="display:none;">
								因应近日瑞士个别主要银行风险事件，或增加市场波动性，敬请阁下密切留意相关投资及其风险。投资涉及风险，如欲知悉最新市况，欢迎与本行职员联络。
							</div>
							<div class="its_news_line" id = "line_6"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_7" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_7','content_7','images_up_7','images_down_7')">
								<div class="its_news_title" id="title_7">有關警方推出一站式詐騙陷阱搜尋器「防騙視伏APP」流动应用程序</div>
								<div class="publishDate" id="publishDate_7">
										2023-03-13
								</div>
								<div class="images_up" id = "images_up_7" style="display: block;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_7" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_7" style="display:none;">
								<img width="323" src="https://www.bochk.com/dam/document/platforms/personal/20230315.jpg" alt=""><br>
<br>
为打击电讯及网上骗案，警方推出一站式诈骗陷阱搜寻器「防骗视伏APP」流动应用程序，协助公众辨识诈骗及网络陷阱。如遇到可疑来电、网购卖家、交友邀请、招聘广告、投资网站，公众均可在「防骗视伏APP」输入相关平台账户名称或号码、收款账户、电话号码、电邮地址、网址等，以评估诈骗及网络安全风险。<br>
<br>
客户可善用警方有关搜寻器,提防诈骗，保障自身利益。<br>
<br>
相关警方防骗信息请见以下网页连结:<br>
https://cyberdefender.hk/zh-cn/
							</div>
							<div class="its_news_line" id = "line_7"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_8" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_8','content_8','images_up_8','images_down_8')">
								<div class="its_news_title" id="title_8">投资市场风险提示</div>
								<div class="publishDate" id="publishDate_8">
										2023-03-13
								</div>
								<div class="images_up" id = "images_up_8" style="display: block;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_8" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_8" style="display:none;">
								因应近日美国个别银行风险事件，或增加市场波动性，敬请阁下密切留意相关投资及其风险。投资涉及风险，如欲知悉最新市况，欢迎与本行职员联络。
							</div>
							<div class="its_news_line" id = "line_8"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_9" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_9','content_9','images_up_9','images_down_9')">
								<div class="its_news_title" id="title_9">认可作押股票调整通知</div>
								<div class="publishDate" id="publishDate_9">
										2023-02-17
								</div>
								<div class="images_up" id = "images_up_9" style="display: block;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_9" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_9" style="display:none;">
								<p>感谢您使用中国银行(香港)有限公司（「本行」）的「财富组合融资」透支授信 / 一般银行贷款 (股票抵押贷款)服务。<br>
<br>
本行已完成认可作押股票名单（「名单」）的定期重检，名单将于2023年2月27日生效（「生效日」）。调整名单如下：<br>
&nbsp;</p>
<table border="1" cellspacing="0" cellpadding="0" width="340">
<tbody><tr><td width="64" rowspan="2" valign="top"><p>变化</p>
</td>
<td width="293" rowspan="2" valign="top"><p>股票号码/<br>
股票名称</p>
</td>
<td width="208" colspan="2" valign="top"><p>贷款比例(作押比率)</p>
</td>
</tr><tr><td width="104" valign="top"><p>生效前</p>
</td>
<td width="104" valign="top"><p>生效后</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>13/和黄医药中国有限公司</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>20/商汤集团股份有限公司</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>178/莎莎国际</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>30%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>412/山高控股</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>520/呷哺呷哺</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>546/阜丰集团</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>30%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>1179/华住集团有限公司</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>1672/歌礼制药</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>1873/维亚生物</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>1880/中国中免</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>2096/先声药业</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>2162/康诺亚</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>2252/上海微创医疗机器人（集团）股份有限公司</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>2273/固生堂</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>2378/保诚</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>3668/兖煤澳大利亚</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>6606/诺辉健康</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>6699/时代天使</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>6821/凯莱英</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>6855/亚盛医药</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>9696/天齐锂业</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>9869/海伦司</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="bottom"><p>9961/携程集团</p>
</td>
<td width="104" valign="bottom"><p>0%</p>
</td>
<td width="104" valign="bottom"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>剔除</p>
</td>
<td width="293" valign="top"><p>580/赛晶科技</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
<td width="104" valign="top"><p>0%</p>
</td>
</tr><tr><td width="64" valign="top"><p>剔除</p>
</td>
<td width="293" valign="top"><p>665/海通国际</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
<td width="104" valign="top"><p>0%</p>
</td>
</tr><tr><td width="64" valign="top"><p>剔除</p>
</td>
<td width="293" valign="top"><p>1121/金阳新能源</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>0%</p>
</td>
</tr><tr><td width="64" valign="top"><p>剔除</p>
</td>
<td width="293" valign="top"><p>1521/方达控股</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
<td width="104" valign="top"><p>0%</p>
</td>
</tr><tr><td width="64" valign="top"><p>剔除</p>
</td>
<td width="293" valign="top"><p>1866/中国心连心化肥</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>0%</p>
</td>
</tr><tr><td width="64" valign="top"><p>剔除</p>
</td>
<td width="293" valign="top"><p>2130/嘉泓物流</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>0%</p>
</td>
</tr><tr><td width="64" valign="top"><p>剔除</p>
</td>
<td width="293" valign="top"><p>2342/京信通信</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
<td width="104" valign="top"><p>0%</p>
</td>
</tr><tr><td width="64" valign="top"><p>剔除</p>
</td>
<td width="293" valign="top"><p>2727/上海电气</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>0%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>4/九龙仓集团</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>19/太古股份公司</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>81/中国海外宏洋集团</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>220/统一企业中国</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>293/国泰航空</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>302/中手游</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>322/康师傅控股</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>323/马鞍山钢铁股份</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>345/VITASOY INT'L</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>347/鞍钢股份</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>358/江西铜业股份</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>384/中国燃气</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>425/敏实集团</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>551/裕元集团</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>586/海螺创业</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>587/中国海螺环保控股有限公司</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>694/北京首都机场股份</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>696/中国民航信息网络</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>753/中国国航</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>819/天能动力</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>855/中国水务</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>867/康哲药业</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>874/白云山</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>956/新天绿色能源</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>966/中国太平</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>991/大唐发电</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1071/华电国际电力股份</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1072/东方电气</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1108/洛阳玻璃股份</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1157/中联重科</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1193/华润燃气</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1199/中远海运港口</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1208/五矿资源</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1268/美东汽车</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1302/先健科技</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1310/香港宽带</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1357/美图公司</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1359/中国信达</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1515/华润医疗</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1530/三生制药</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1558/东阳光药</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1585/雅迪控股</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1776/广发证券</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1787/山东黄金</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1789/爱康医疗</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1798/大唐新能源</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1800/中国交通建设</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1816/中广核电力</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1833/平安好医生</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1882/海天国际</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1896/猫眼娱乐</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1919/中远海控</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1958/北京汽车</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1972/太古地产</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1988/民生银行</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1999/敏华控股</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2005/石四药集团</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2009/金隅集团</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2018/瑞声科技</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2186/绿叶制药</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2314/理文造纸</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2357/中航科工</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2611/国泰君安</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2666/环球医疗</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2689/玖龙纸业</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3331/维达国际</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3799/达利食品</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3808/中国重汽</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3868/信义能源</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3898/时代电气</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3908/中金公司</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3933/联邦制药</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3958/东方证券</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3998/波司登</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>6049/保利物业</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>6690/海尔智家</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>6881/中国银河</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>9926/康方生物</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>9969/诺诚健华</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr></tbody></table>
<p><br>
<br>
由于上述重检可能涉及作押股票及/或贷款比例(作押比率)的调整，亦可能对您的「财富组合融资」透支授信及/或一般银行贷款 (股票抵押贷款)之贷款额度造成影响。如您的「财富组合融资」透支授信及/或一般银行贷款 (股票抵押贷款)的实际用款超出本行调整贷款比例(作押比率)后的额度，您有可能被要求于短时间内存入额外的资金以回复额内用款。假如未能在本行指定时间内回复额内用款，本行有权把您的「财富组合融资」透支授信及/或一般银行贷款 (股票抵押贷款)账户中抵押给本行的证券出售，而无需给予事先通知。<br>
<br>
您可于生效日起在本行官方网站(www.bochk.com)浏览详情。如有任何查询，请亲临任何一家分行或致电 (852) 3988 2388。</p>
<p><br>
为免生疑问，相关融资/贷款的条款和条件适用，本行在该等条款和条件下的权利均不受影响。<br>
</p>
<p><br>
中国银行(香港)有限公司</p>
<p><br>
中英文文本如有歧义，概以英文本为准。</p>
							</div>
							<div class="its_news_line" id = "line_9"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_10" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_10','content_10','images_up_10','images_down_10')">
								<div class="its_news_title" id="title_10">慎防被盗用个人资料进行遥距开户及申请贷款的重要提示</div>
								<div class="publishDate" id="publishDate_10">
										2023-02-14
								</div>
								<div class="images_up" id = "images_up_10" style="display: block;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_10" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_10" style="display:none;">
								<p>中国银行（香港）（「中银香港」） 提醒客户及公众人士，慎防被盗用个人资料于网上银行进行遥距开户及申请贷款。</p>
<p>近日有骗徒以不同借口盗取个人资料，并于网上银行进行遥距开户，甚至申请贷款，例如冒充银行职员在街檔吸引路人遥距开户，用以诱骗他人拍摄面容影像，并提供身分证、住址证明、财务文件以申请银行户口及贷款。另外亦有骗徒讹称需要测试新手机应用程序拍照变脸功能等，然后盗用他人的证件及文件去申请网上银行户口及贷款。</p>
<p>本行呼吁客户提高警觉，慎防受骗:</p>
<p>．请小心保护个人资料，切勿向任何人提供或透露敏感个人资料，包括面容影像、身分证、住址证明、财务文件等；</p>
<p>．必须使用自己的手提电话或电子装置进行银行账户遥距开户及设立密码；</p>
<p>．切勿使用第三者提供的手提电话或电子装置进行银行账户遥距开户及设立密码；</p>
<p>．如对任何银行职员身份有怀疑，请联络相关银行或根据香港银行公会网页上载之热线致电核实。</p>
<p>本行会不时于本行网页更新有关诈骗信息提示，详情请浏览 www.bochk.com/sc/aboutus/fraudalert.html。有关电子银行服务的保安信息，请浏览 www.bochk.com/sc/security.html。</p>
							</div>
							<div class="its_news_line" id = "line_10"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_11" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_11','content_11','images_up_11','images_down_11')">
								<div class="its_news_title" id="title_11">提防钓鱼讯息 保障信用卡安全</div>
								<div class="publishDate" id="publishDate_11">
										2023-02-14
								</div>
								<div class="images_up" id = "images_up_11" style="display: block;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_11" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_11" style="display:none;">
								<p>中国银行（香港）（「中银香港」）提醒客户及公众人士，慎防意图骗取个人资料及信用卡资料的钓鱼电邮/短讯。</p>
<p>近日有骗徒伪冒网购平台/积分奖赏平台/邮政服务/速递公司/银行发出钓鱼电邮或短讯，以不同借口要求客户点击电邮或短讯内的超链接进行验证、付费或个人资料更新，例如讹称平台需客户更新数据才能继续提供服务，或客户有包裹因故无法派递而需更新数据及/或额外付费，诱骗客户在该超链接的伪冒网站内输入个人及信用卡数据。</p>
<p>这些虚假电邮、短讯及伪冒网站的超链接会以不同组合，甚至仿似相关机构真正网址的域名（如以类似的英文字母、数字或符号取代）出现，而虚假短讯的发送人名称有机会与真实商户名称相同，导致虚假短讯与过往来自真实商户的短讯共同显示，企图误导客户及盗取客户的个人及信用卡资料，从而用于非法用途，包括<b>绑定流动支付及服务</b>后，在本地或海外进行未经授权签账，或<b>直接以盗取的数据进行未经授权的网上交易</b>。</p>
<p>中银香港重申不会以电话、电话录音、电邮、短讯、超链接、二维码或附件等方式，索取客户的敏感个人资料，包括银行账户数据、网上银行用户名称、登入密码、一次性密码或信用卡号码/保安码。</p>
<p>本行呼吁客户提高警觉，慎防受骗:</p>
<p>．请小心保护个人资料，切勿向任何人透露敏感个人资料、信用卡数据、及任何密码，包括短讯一次性密码。</p>
<p>．尽管现时流动装置具备自动填写一次性密码的功能(AutoFill)，请于输入有关一次性密码以进行任何交易授权前，小心核对一次性密码短讯的内容及事务数据(例如︰商户名称、交易类别、交易金额及货币)是否与实际进行的用途或交易相符。</p>
<p>．输入任何数据或进行交易前，须检视该网页地址是否真确与可信。</p>
<p>．切勿打开来历不明的电邮、短讯、附件或超链接及下载可疑的应用程序。如有怀疑，请即停止操作，切勿输入任何数据，关闭窗口，并向本行查询，或透过真实商户的官方联络途径核实。</p>
<p>．如客户曾向怀疑伪冒网站提供数据，请即致电客户服务热线(852) 3988 2388（选取语言后，按 3、#、2），并向警方举报。&nbsp;</p>
<p>．如客户收到有关绑定流动支付及服务或网上交易的可疑讯息，请立即报警求助及与本行联络。</p>
<p>．经常透过网上银行、手机银行或月结单检查信用卡交易纪录以检查是否有任何可疑或未经授权的交易。</p>
<p>本行会不时于本行网页更新有关诈骗信息提示，详情请浏览 www.bochk.com/sc/aboutus/fraudalert.html。有关电子银行服务的保安信息，请浏览 www.bochk.com/sc/security.html。</p>
							</div>
							<div class="its_news_line" id = "line_11"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_12" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_12','content_12','images_up_12','images_down_12')">
								<div class="its_news_title" id="title_12">有关香港投资者识别码制度正式实施之重要通知</div>
								<div class="publishDate" id="publishDate_12">
										2022-12-23
								</div>
								<div class="images_up" id = "images_up_12" style="display: block;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_12" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_12" style="display:none;">
								感谢阁下使用中国银行(香港)有限公司(「本行」)的证券服务。<br>
<br>
兹通知证券及期货事务监察委员会(「证监会」) 于2022年12月12日宣布香港投资者识别码制度(「港股实名制」）将于2023年3月20日正式实施 (「实施日」)。<br>
<br>
于实施日后，本行及/或相关经纪(「经纪」)须为每位客户编配唯一的券商客户编码，并与客户的识别信息配对，包括身份证明文件上的全名、签发国家/地区或司法管辖区、类别及号码，并附加于客户的股票买卖交易指令或股票提存指示，以向香港联合交易所（「联交所」）及/或证监会作出申报。<br>
<br>
<b><i>就个人客户、独资及合伙商号（「相关客户」）而言：</i></b><br>
<b>• 尽快提交同意授权及确保最新和优先的客户识别信息</b><br>
请相关客户尽快向本行提交同意声明，并确认客户所给予本行及/或经纪的客户识别信息均属有效、真实、完整、准确及最新，以及符合证监会要求的身份证明文件排序表^，<b>否则于实施日后不能买入、将股份转入或将实体证书存入账户内</b>，惟只可出售、转出或提取现有的证券持仓（如有）。若相关客户于实施日后提交同意，本行将于收妥相关客户的同意声明后，预计两个交易日内生效。<br>
<br>
<b>• 提交同意授权的方式</b><br>
如相关客户仍未提交同意声明，持有本行手机银行或网上银行服务的合资格单名或联名账户#，请尽快于手机银行(登入 &gt; 投资 &gt; 证券)或网上银行(登入 &gt; 港股证券 &gt; 香港投资者识别码制度个人资料使用授权) 提交同意，其他相关客户亦可前往本行任何一家分行办理。<br>
<br>
<b><i>就公司客户（不适用于独资及合伙商号）而言：</i></b><br>
<b>• 确保最新和优先的客户识别信息</b><br>
请公司客户尽快检视及确认客户所给予本行及/或经纪的客户识别信息均属有效、真实、完整、准确及最新，并符合证监会要求的身份证明文件排序表^，<b>如客户识别信息有所更改及/或有更优先的身份证明文件，请于2023年2月20日前通知本行，否则本行及/或经纪将按照客户现行纪录作为最新及优先的资料，以向联交所及/或证监会作出申报。</b>请注意，为确保资料最新及准确，本行将暂不会为由2019年11月1日起至实施日未曾叙做股票交易的公司客户编配券商客户编码，如相关公司客户于实施日后欲进行股票买入、将股份转入或将实体证书存入账户交易，请先联络本行，本行将另行跟进。此外，公司客户为相关受规管中介人(例如券商)，本行将另行通知有关安排。<br>
<br>
如有任何查询，欢迎致电本行个人客户服务热线（852） 3988 2388或企业客户服务热线（852）3988 2288。<br>
<br>
备注：<br>
^ 身份证明文件排序表：<br>
(i) 就相关客户而言将按以下优先次序︰(1)香港身份证；(2)国民身份证明文件；(3)护照<br>
(注：不接受往来港澳通行证、前往港澳通行证及香港特别行政区签证身份书)<br>
(ii) 就公司客户而言将按以下优先次序：(1)法律实体识别编码（legal entity identifier，简称LEI）登记文件；(2)公司注册证明书；(3)商业登记证；(4)其他同等文件<br>
# 该同意书适用于相关客户名下的所有证券账户（包括但不限于联名账户）。如属联名账户，所有相关客户均须各自提供同意，方可执行买入指令或交易，或将股份转入或将实体证书存入账户内。如属独资及合伙商号，则须与个人账户分开提交同意书。<br>
- 如中英版本有任何歧异，概以中文版本为准。<br>
							</div>
							<div class="its_news_line" id = "line_12"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_13" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_13','content_13','images_up_13','images_down_13')">
								<div class="its_news_title" id="title_13">中银信用卡温馨提示</div>
								<div class="publishDate" id="publishDate_13">
										2022-12-13
								</div>
								<div class="images_up" id = "images_up_13" style="display: block;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_13" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_13" style="display:none;">
								本行设有严谨的机制保障阁下之中银信用卡。凡不属您授权的网上交易，经调查核实后，您毋须为有关交易负责。<br>
<br>
倘怀疑信用卡出现未经授权交易：<br>
<br>
1. 请您登入手机银行或网上银行，将该信用卡的网上消费限额调整至0元，直至您认为安全时可随时提高限额。设定步骤如下：<br>
<br>
<b>手机银行</b><br>
右下角「选单」＞设定＞设定网上消费限额<br>
<br>
<b>网上银行</b><br>
个人设定＞信用卡每月网上消费限额设定<br>
<br>
您亦可透过手机银行或网上银行的在线客服（Online Chat）办理暂停或报失卡服务；<br>
<br>
2. 如您没有开立手机银行或网上银行，可致电中银信用卡24小时客户服务热线(852) 2853 8828或中银信用卡24小时报失热线(852) 2544 2222。<br>
<br>
请尽量保留有关截图 / 凭证（如适用）以向本行提出跟进。详情可参阅以下网址：<br>
www.bochk.com/tc/creditcard/service/chargeback.html<br>
							</div>
							<div class="its_news_line" id = "line_13"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_14" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_14','content_14','images_up_14','images_down_14')">
								<div class="its_news_title" id="title_14">认可作押股票调整通知</div>
								<div class="publishDate" id="publishDate_14">
										2022-12-02
								</div>
								<div class="images_up" id = "images_up_14" style="display: block;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_14" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_14" style="display:none;">
								<p>感谢您使用中国银行(香港)有限公司（「本行」）的「财富组合融资」透支授信 / 一般银行贷款 (股票抵押贷款)服务。<br>
<br>
本行已完成认可作押股票名单（「名单」）的定期重检，名单将于2022年12月12日生效（「生效日」）。调整名单如下：</p>
<table border="1" cellspacing="0" cellpadding="0" width="340">
<tbody><tr><td rowspan="2" width="40">变化</td>
<td rowspan="2" valign="top">股票号码/ 股票名称</td>
<td width="208" colspan="2" valign="top">贷款比例(作押比率)</td>
</tr><tr><td valign="top">生效前</td>
<td valign="top">生效后</td>
</tr><tr><td width="64" valign="top"><p>新增</p>
</td>
<td width="293" valign="top"><p>1252/中国天瑞水泥</p>
</td>
<td width="104" valign="top"><p>0%</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>83/信和置业</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>135/昆仑能源</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>144/招商局港口</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>151/中国旺旺</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>168/青岛啤酒股份</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>268/金蝶国际</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>270/粤海投资</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>285/比亚迪电子</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>293/国泰航空</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>322/康师傅控股</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>336/华宝国际</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>30%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>354/中国软件国际</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>358/江西铜业股份</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>384/中国燃气</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>425/敏实集团</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>522/ASMPT Ltd</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>586/海螺创业</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>728/中国电信</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>753/中国国航</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>772/阅文集团</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>780/同程旅行</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>788/中国铁塔</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>836/华润电力</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>853/微创医疗</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>902/华能国际电力股份</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>914/海螺水泥</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>916/龙源电力</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>998/中信银行</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1024/快手</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1066/威高股份</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1099/国药控股</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1138/中远海能</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1171/兖矿能源</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1193/华润燃气</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1209/华润万象生活</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1268/美东汽车</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1288/农业银行</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1308/海丰国际</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1313/华润水泥控股</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1336/新华保险</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1339/中国人民保险集团</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1347/华虹半导体</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1368/特步国际</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1385/复旦微电</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1548/金斯瑞生物科技</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1579/颐海国际</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1585/雅迪控股</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1658/邮储银行</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1772/赣锋锂业</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1776/广发证券</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1799/新特能源</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1800/中国交通建设</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1801/信达生物</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1816/中广核电力</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1818/招金矿业</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1821/ESR GROUP LTD</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1877/君实生物</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1898/中煤能源</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1910/新秀丽</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1919/中远海控</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1988/民生银行</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>1999/敏华控股</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2196/复星医药</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2208/金风科技</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2238/广汽集团</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2328/中国财险</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2333/长城汽车</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2338/潍柴动力</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2359/药明康德</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2380/中国电力</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2600/中国铝业</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2601/中国太保</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2618/京东物流</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2800/香港盈富基金</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2828/恒生中国企业指数上市基金</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2883/中海油田服务</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2888/渣打集团</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>2899/紫金矿业</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3311/中国建筑国际</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3320/华润医药</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3323/中国建材</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3328/交通银行</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3347/泰格医药</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3606/福耀玻璃</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3759/康龙化成</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3800/协鑫科技</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3888/金山软件</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3898/时代电气</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3908/中金公司</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3993/洛阳钼业</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>3998/波司登</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>6030/中信证券</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>6060/众安在线</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>6078/海吉亚医疗</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>6110/滔搏</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>6160/百济神州</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>6185/康希诺</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>6186/中国飞鹤</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>6618/京东健康</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>6690/海尔智家</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>6823/香港电讯－ＳＳ</p>
</td>
<td width="104" valign="top"><p>60%</p>
</td>
<td width="104" valign="top"><p>55%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>6865/福莱特玻璃</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>9626/哔哩哔哩</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>9698/万国数据</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>40%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>9922/九毛九</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>9987/百胜中国</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>9992/泡泡玛特</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr><tr><td width="64" valign="top"><p>调整</p>
</td>
<td width="293" valign="top"><p>9995/荣昌生物</p>
</td>
<td width="104" valign="top"><p>50%</p>
</td>
<td width="104" valign="top"><p>45%</p>
</td>
</tr></tbody></table>
<p><br>
<br>
由于上述重检可能涉及作押股票及/或贷款比例(作押比率)的调整，亦可能对您的「财富组合融资」透支授信及/或一般银行贷款 (股票抵押贷款)之贷款额度造成影响。如您的「财富组合融资」透支授信及/或一般银行贷款 (股票抵押贷款)的实际用款超出本行调整贷款比例(作押比率)后的额度，您有可能被要求于短时间内存入额外的资金以回复额内用款。假如未能在本行指定时间内回复额内用款，本行有权把您的「财富组合融资」透支授信及/或一般银行贷款 (股票抵押贷款)账户中抵押给本行的证券出售，而无需给予事先通知。<br>
<br>
您可于生效日起在本行官方网站(www.bochk.com)浏览详情。如有任何查询，请亲临任何一家分行或致电 (852) 3988 2388。 为免生疑问，相关融资/贷款的条款和条件适用，本行在该等条款和条件下的权利均不受影响。<br>
<br>
中英文文本如有歧义，概以英文本为准。</p>
							</div>
							<div class="its_news_line" id = "line_14"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_15" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_15','content_15','images_up_15','images_down_15')">
								<div class="its_news_title" id="title_15">孖展九九金及公斤条转价通知</div>
								<div class="publishDate" id="publishDate_15">
										2022-11-28
								</div>
								<div class="images_up" id = "images_up_15" style="display: block;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_15" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_15" style="display:none;">
								请注意，客户持有的孖展九九金（99G）及孖展公斤条（KLG）合约将于 2022年 12 月 30 日以金银业贸易场在 2022 年 12 月 30 日下午厘定的结算价作公价转价。任何因此造成的盈亏连同仓费及宿仓费，将经客户的贵金属及外汇孖展买卖账户存入或扣除。如有任何查询， 请致电本行投资服务热线（852）3988 2688。
							</div>
							<div class="its_news_line" id = "line_15"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_16" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_16','content_16','images_up_16','images_down_16')">
								<div class="its_news_title" id="title_16">警方防骗宣传《喜怒哀「落」》</div>
								<div class="publishDate" id="publishDate_16">
										2022-11-14
								</div>
								<div class="images_up" id = "images_up_16" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_16" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_16" style="display:none;">
								警方反诈骗协调中心开展新一浪防骗宣传活动《喜怒哀「落」》，以剖析骗徒在电话骗案、求职骗案、网恋骗案、投资骗案中使用的心理技巧，及其他行骗伎俩，以提醒市民避免堕入骗局。<br>
<br>
相关警方反诈骗协调中心防骗信息及短片请见以下网页:<br>
https://www.adcc.gov.hk/zh-cn/emotional-tolls.html
							</div>
							<div class="its_news_line" id = "line_16"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_17" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_17','content_17','images_up_17','images_down_17')">
								<div class="its_news_title" id="title_17">防范「网络钓鱼」攻击：数码KEY 睇紧啲，揿LINK 前要三思！</div>
								<div class="publishDate" id="publishDate_17">
										2022-09-06
								</div>
								<div class="images_up" id = "images_up_17" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_17" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_17" style="display:none;">
								<img width="311" src="https://www.bochk.com/dam/document/platforms/personal/Pishingnotice20220914.jpg" alt=""><br>
<br>
1. 网上银行的登入资料（包括账户号码、使用者名称、登入密码和一次性密码）在互联网世界就等如家里门匙一样重要，必须妥善保管。<br>
<br>
2. 中银香港不会透过短讯或电邮超连结、二维条码或附件，引导客户到本行网站或流动应用程序进行交易，更不会透过超连结要求客户提供个人资料（包括登入密码和一次性密码），也不会透过预录语音讯息联络客户。<br>
<br>
3. 如客户收到声称由本行发出的可疑手机短讯或电邮，要求点击内附的超连结提供任何个人资料，必须马上提高警觉，应「三思而后行」。如有怀疑，可致电本行客户服务热线(852) 3988 2388以辨别短讯真伪。<br>
<br>
4. 切勿下载来历不明的流动应用程序，客户应透过官方应用程序商店或本行官方网站下载手机银行及BoC Pay流动应用程序。<br>
<br>
<br>
相关香港金融管理局防骗信息请见以下超链接:<br>
<br>
https://www.youtube.com/watch?v=GTa6BbFJWPw (30秒版本)<br>
<br>
https://www.youtube.com/watch?v=vmxPqh2xwas (足本版)
							</div>
							<div class="its_news_line" id = "line_17"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_18" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_18','content_18','images_up_18','images_down_18')">
								<div class="its_news_title" id="title_18">有关伪冒银行职员来电或电话讯息的重要提示</div>
								<div class="publishDate" id="publishDate_18">
										2022-09-01
								</div>
								<div class="images_up" id = "images_up_18" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_18" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_18" style="display:none;">
								中国银行（香港）（「中银香港」） 提醒客户及公众人士，慎防冒充中银香港的诈骗来电或电话讯息，意图骗取客户的个人资料或金钱。<br>
<br>
近日有客户收到冒认中银香港职员的来电或电话讯息，并附上伪冒中银香港的名片，讹称可向客户提供低息借贷、按揭或信用卡申请等优惠，意图诱骗客户向其透露身份证及银行户口等敏感资料。不法之徒可能会要求客户下载不明来历的应用程序或于伪冒网站输入个人资料，甚至欺骗客户存入款项至指定户口，作为申请贷款、按揭或信用卡之保证金。<br>
<br>
中银香港重申不会以电话，或电邮、短讯、网上超链接、二维条形码或附件等方式，索取客户的敏感个人资料，包括银行账户数据、网上银行用户名称、登入密码、单次密码或信用卡号码。如客户收到可疑来电、电邮或短讯，请马上提高警觉，应致电本行以辨别真伪。<br>
<br>
本行呼吁客户提高警觉，慎防受骗:<br>
<br>
• 请小心保护个人资料，切勿向任何人透露个人资料及密码，包括电话短讯的单次密码。<br>
• 切勿下载/安装不明来历的应用程序，及将任何数据输入到不明来历的应用程序或网址。<br>
• 如客户收到怀疑冒认本行职员的诈骗电话，请保持冷静，并实时挂断电话及联络中银香港客户服务热线(852) 3988 2388（选取语言后，按 8）以核实来电者身份。<br>
• 如客户曾向来电者提供数据，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2），并向警方举报。若客户曾向来电者透露密码，请立即作出更改。<br>
<br>
本行会不时于本行网页更新有关诈骗信息提示，详情请浏览www.bochk.com/tc/aboutus/fraudalert.html。有关电子银行服务的保安信息，请浏览 www.bochk.com/tc/security.html。<br>
							</div>
							<div class="its_news_line" id = "line_18"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_19" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_19','content_19','images_up_19','images_down_19')">
								<div class="its_news_title" id="title_19">提防网上投资骗案</div>
								<div class="publishDate" id="publishDate_19">
										2022-08-31
								</div>
								<div class="images_up" id = "images_up_19" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_19" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_19" style="display:none;">
								<p><img width="311" src="https://www.bochk.com/dam/document/platforms/personal/FMLIT_20220914.jpg" alt=""><br>
<br>
中国银行（香港）（「中银香港」）提醒客户，提防网上投资骗案。<br>
<br>
近日，有骗徒发布虚假網上投资广告或财务消息并载有高官及名人相片，诱使客户点击，继而连接到可疑交易平台。<br>
<br>
本行呼吁客户提高警觉，慎防受骗:<br>
• 如发现有关名人的财务消息或投资成功的报导/广告，应主动核实其真伪。切勿点击该报导/广告或所附连结；<br>
• 请小心保护个人资料，切勿向任何人透露个人资料及密码，包括网上银行账户数据、信用卡数据或电话短讯的一次性密码；<br>
• 切勿打开来历不明的电邮、附件或超链接。如有怀疑，请即停止操作，切勿输入任何数据，关闭窗口，并向银行查询；<br>
• 切勿将任何数据输入到不明来历的应用程序或网址；<br>
• 虚假投资网站一般有错别字、无效链接或语法不通等问题，客户应多加留意；<br>
• 如声称「投资公司」为透过个人银行账户或电子货币包收取投资资金，客户应多加留意，慎防受骗；<br>
• 如客户曾登入怀疑伪冒网站并提供数据，请即致电客户服务热线(852) 3988 2388（选取语言后，按 3、#、2），并向警方举报。若客户曾透露密码，请立即作出更改。<br>
<br>
相关警方防骗信息请见以下网页:</p>
<p>https://www.adcc.gov.hk/zh-cn/anti-deception-month-detail-05.html</p>
<p>https://www.adcc.gov.hk/zh-cn/alerts-detail/alerts-1541618242942144513.html</p>
<p>https://cyberdefender.hk/zh-cn/investment_fraud/</p>
							</div>
							<div class="its_news_line" id = "line_19"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_20" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_20','content_20','images_up_20','images_down_20')">
								<div class="its_news_title" id="title_20">便宜莫贪 勿卖Account</div>
								<div class="publishDate" id="publishDate_20">
										2022-08-03
								</div>
								<div class="images_up" id = "images_up_20" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_20" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_20" style="display:none;">
								<img src="https://www.bochk.com/dam/document/platforms/personal/sellacc_20220914.jpg" alt=""><br>
<br>
中银香港提醒客户，提高防范意识，保障自身利益。犯罪集团会透过传销电话或社交平台，以「搵快钱」吸引客户出售或借出户口，又或者利用客户的个人资料来开户，然后用这些「傀儡户口」收取骗款或其他犯罪得益。<br>
<br>
中银香港呼吁客户切勿出售或借出户口予他人，因为户口可能会被操控用作非法用途，对客户构成洗黑钱罪，最高刑罚为监禁14年及罚款港币500万。<br>
<br>
有关详情，请见香港金融管理局相关网页: https://www.hkma.gov.hk/gb_chi/smart-consumers/dont-lend-sell-your-account/
							</div>
							<div class="its_news_line" id = "line_20"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_21" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_21','content_21','images_up_21','images_down_21')">
								<div class="its_news_title" id="title_21">有关外汇挂钩投资的电子结单及电子通知书服务通知</div>
								<div class="publishDate" id="publishDate_21">
										2022-07-18
								</div>
								<div class="images_up" id = "images_up_21" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_21" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_21" style="display:none;">
								为提供更好的网上投资服务，由2022年7月24日起，中国银行(香港)有限公司(「本行」)将推出外汇挂钩投资的电子结单及电子通知书服务 。本行个人客户可透过本行手机银行或网上银行 登记投资产品电子结单及电子通知书服务(统称「电子结单服务」)。客户成功登记电子结单服务后，可登入本行手机银行或网上银行查阅或下载投资产品的电子结单及电子通知书。另外，本行会透过电邮通知客户新结单或 通知书已上载至本行手机银行及网上银行。<br>
<br>
若客户于2021年11月21日或之后已成功登记使用投资产品电子结单服务，届时外汇挂钩投资的结单及通知书便会自动转为电子版本 ，不会邮寄实物结单及通知书予客户。客户可透过本行手机银行或网上银行取消电子结单服务 并登记收取投资产品实物结单及通知书。<br>
<br>
上述产品及服务受条款约束 。<br>
<br>
如有查询，请联络我们的在线客服或客户服务热线(852) 3988 2388/私人银行客户服务热线(852) 3982 6988。
							</div>
							<div class="its_news_line" id = "line_21"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_22" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_22','content_22','images_up_22','images_down_22')">
								<div class="its_news_title" id="title_22">有关客户遗失或被盗银行密码及支票而衍生被冒用风险的重要提示</div>
								<div class="publishDate" id="publishDate_22">
										2022-07-08
								</div>
								<div class="images_up" id = "images_up_22" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_22" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_22" style="display:none;">
								中国银行（香港）（「中银香港」） 提醒客户，提防遗失或被盗银行密码及支票而衍生被冒用风险。<br>
<br>
本行呼吁客户须采取以下合理步骤及措施以妥善保管任何银行密码及支票以防止欺诈行为：<br>
• 销毁印有其银行密码的文件。<br>
<br>
• 切勿让任何人士使用其银行密码。<br>
<br>
• 不应直接写下或记录银行密码，而不加掩藏。尤其是连同其他银行数据(如账户号码等)一并保存。<br>
<br>
• 定期更改密碼及避免用出生日期或電話號碼。<br>
<br>
• 不應在不同機構的賬戶及/或網上平台共用同一組密碼作登入或認證。<br>
<br>
• 客户应小心保管支票簿，支票簿应存放在可上锁的抽屉或保险箱内及锁好，锁匙不应放在任何人均能取得的地方。<br>
<br>
• 如遗失已签名的支票、空白支票或支票簿，应尽快报失，以便在支票被提交兑现之前停止付款。<br>
<br>
• 客户亦不应预先签署空白支票。<br>
<br>
• 若损失是因客户严重疏忽，客户可能须要承担所有损失，严重疏忽情况可能包括：<br>
- 在知情情况下容许他人使用其银行密码或支票簿；<br>
- 没有采取合理步骤及措施以妥善保管任何银行密码/支票簿；<br>
- 在知情情況下容許第三方手機應用程式使用其銀行密碼或在第三方手機應用程式輸入了其銀行密碼而導致銀行密碼遭泄露；<br>
- 发觉或相信其银行密码遭泄露或支票簿遭遗失或被盗用，又或其账户曾录得未经授权交易后，未能在合理切实可行的情况下尽快通知银行。<br>
<br>
• 客户若遗失或怀疑其银行数据报括密码及支票可能或已被盗窃，应立即致电本行客户服务热线 3988 2388 寻求协助及立即更改密碼。<br>
<br>
本行会不时于本行网页更新有关诈骗信息提示，详情请浏览<br>
www.bochk.com/sc/aboutus/fraudalert.html。有关电子银行服务的保安信息，请浏览 www.bochk.com/sc/security.html。有关中银卡的保安信息，请浏览<br>
www.bochk.com/sc/more/boccard/card_security.html。
							</div>
							<div class="its_news_line" id = "line_22"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_23" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_23','content_23','images_up_23','images_down_23')">
								<div class="its_news_title" id="title_23">中国银行（香港）殷切提醒客户: 慎防领取消费券相关诈骗</div>
								<div class="publishDate" id="publishDate_23">
										2022-06-22
								</div>
								<div class="images_up" id = "images_up_23" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_23" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_23" style="display:none;">
								BoC Pay获香港特区政府甄选为新一轮消费券计划第二阶段的储值支付工具之一(此计划)。中国银行（香港）（「中银香港」）现殷切提醒客户及公众人士，慎防与领取消费券相关的诈骗。<br>
<b><br>
 有关消费券的防骗提示<br>
 <br>
 </b>•&nbsp;请在登记领取消费券时，小心填写及核对所提交的资料，包括政府消费券特定识别号码，确保消费券款项正确存入您所设定的账户中；<br>
<br>
•&nbsp;谨记切勿向陌生人透露个人资料，包括姓名、身份证号码、银行户口号码、网上及手机银行账户及密码、以及BoC Pay应用程式密码；<br>
<br>
•&nbsp;如您发现身份被盗用作登记领取消费券，请即致电中银香港查询热线(电话号码:&nbsp;(852) 3988 1822)及消费券计划热线(电话号码: (852) 185000)通知计划秘书处；<br>
<br>
•&nbsp;请查看您透过BoC Pay消费券账户进行的交易纪录，并请保存有关商户发出的购物单据。日后如与商户有任何交易争议，可凭单据与商户进行磋商；<br>
<br>
•&nbsp;消费券必须用于本地零售、餐饮及服务业商户，包括其实体店铺及网店；有关消费券使用详情请浏览www.consumptionvoucher.gov.hk；<br>
<br>
•&nbsp;商户不可以向使用消费券的客户收取额外手续费或设定最低消费金额，消费券亦不可以用作兑换现金。<br>
<b><br>
 其他防骗提示<br>
 <br>
 </b>中银香港重申不会以电话，网上超链接、二维条形码，或以电邮或短讯内附件等方式，索取客户的敏感个人资料，包括银行账户资料、网上银行用户名称、登入密码、一次性密码或信用卡号码。客户请提高警觉，慎防受骗:<br>
<br>
•&nbsp;请小心保护个人资料，切勿向任何人透露个人资料及密码，包括电话短讯的一次性密码。<br>
<br>
•&nbsp;切勿打开来历不明的电邮、附件或超链接。切勿下载/安装不明来历的应用程式，及将任何资料输入到不明来历的应用程式或网址。如有怀疑，请即停止操作，切勿输入任何资料，关闭窗口/应用程式，并向银行查询。<br>
<br>
•&nbsp;如您收到有关绑定流动支付服务或网上银行的可疑讯息，请立即报警求助及与本行联络。<br>
<br>
•&nbsp;如您收到怀疑冒认本行职员的诈骗电话，请保持冷静，并即时挂断电话及致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 8）核实来电者身份。<br>
<br>
•&nbsp;如您曾登入怀疑伪冒网站并提供资料或曾向来电者提供资料，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2），并向警方举报。若您曾透露密码，请立即作出更改。<br>
<br>
中银香港会不时于本行网页更新有关诈骗资讯提示，详情请浏览 www.bochk.com/sc/aboutus/fraudalert.html。有关电子银行服务的保安资讯，请浏览 www.bochk.com/sc/security.html。&nbsp;
							</div>
							<div class="its_news_line" id = "line_23"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_24" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_24','content_24','images_up_24','images_down_24')">
								<div class="its_news_title" id="title_24">有关实施香港投资者识别码制度及场外证券交易汇报制度之重要通知</div>
								<div class="publishDate" id="publishDate_24">
										2022-05-29
								</div>
								<div class="images_up" id = "images_up_24" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_24" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_24" style="display:none;">
								感谢阁下使用中国银行(香港)有限公司(「本行」)的证券服务。<br>
<br>
兹通知证券及期货事务监察委员会(「证监会」)所制定之香港投资者识别码制度及场外证券交易汇报制度(「汇报制度」)预期分别于2022年下半年及2023年上半年实施^。<br>
<br>
在汇报制度下，本行及/或相关经纪(「经纪」)须为每位客户编配唯一的券商客户编码，并与客户的识别信息配对，包括身份证明文件上的全名、签发国家/地区或司法管辖区、类别及号码，以向香港联合交易所（「联交所」）提交配对档案。本行及/或经纪必须将客户之券商客户编码附加于客户的股票买卖交易指令或股票提存指示，以向联交所及/或证监会作出申报。<br>
<br>
就个人客户、独资及合伙商号（「相关客户」）而言，由于上述程序涉及收集、储存、处理、使用、披露及转移与相关客户有关的个人资料，本行须就上述程序获取相关客户书面同意声明。如相关客户未有提交同意声明，则于汇报制度实施后不能买入、将股份转入或将实体证书存入账户内，惟只可出售、转出或提取现有的证券持仓（如有），直至提交同意声明为止。<br>
<br>
根据联交所与证监会的规则和规定，客户应知悉及理解有关身份证明文件排序表，并根据排序表提供所需的身份证明文件（如尚未提供）或身份证明文件的更新资料（如适用），以遵从汇报制度的规定。客户的客户识别信息应收集自以下清单首述的身份证明文件，除非客户并无持有该文件，则应使用所提述的下一份文件，如此类推：<br>
(i) 就个人客户而言将按以下优先次序︰(1)香港身份证；或(2)国民身份证明文件；或(3)护照；(注：不接受往来港澳通行证、前往港澳通行证及香港特别行政区签证身份书)<br>
(ii) 就公司客户而言将按以下优先次序：(1)法律实体识别编码（legal entity identifier，简称LEI）登记文件；或(2)公司注册证明书；或(3)商业登记证；或(4)其他同等文件；<br>
(iii) 就信托而言，(i)或(ii)（视情况而定）的受托人资料。然而，若信托是一个投资基金，则应收集该信托在本行开立交易帐户的资产管理公司或个别基金（视何者适用而定）的客户识别信息；<br>
<br>
客户须确认就客户账户及各项交易给予银行及/或经纪的所有资料(包括客户识别信息）均属有效、真实、完整、准确及最新，如客户识别信息或其他资料有所更改及/或有更优先的身份证明文件，客户应从速通知银行。<br>
<br>
由5月29日起，持有本行手机银行或网上银行服务的合资格单名或联名账户#，请尽快登入手机银行或网上银行服务详阅「香港投资者识别码制度下的个人资料/其他客户资料收集声明」(「收集声明」) 并提交同意，相关客户亦可前往本行任何一家分行办理。相关客户日后可随时透过书面通知本行撤回有关收集声明。<br>
<br>
就相关客户而言，如本行于汇报制度实施日前仍未收到相关客户的同意声明，本行只能接受该客户的沽出股票指示或股票提取指示。<br>
<br>
如有任何查询，欢迎致电3988 2388 与我们联络。<br>
<br>
备注：<br>
^ 确实日期有待证监会公布为准，有关详情请参阅证监会网站。<br>
# 该同意书适用于相关客户名下的所有证券账户（包括但不限于联名账户）。如属联名账户，所有相关客户均须各自提供同意，方可执行买入指令或交易，或将股份转入或将实体证书存入账户内。如属独资及合伙商号，则须与个人账户分开提交同意书。<br>
- 本行收妥相关客户的同意声明后，预计两个交易日内生效。<br>
- 如中英版本有任何歧异，概以中文版本为准。
							</div>
							<div class="its_news_line" id = "line_24"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_25" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_25','content_25','images_up_25','images_down_25')">
								<div class="its_news_title" id="title_25">提防虚假招聘广告诈骗手法</div>
								<div class="publishDate" id="publishDate_25">
										2022-05-26
								</div>
								<div class="images_up" id = "images_up_25" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_25" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_25" style="display:none;">
								中银香港提醒客户提防虚假招聘广告诈骗手法，提高防范意识，保障自身利益。<br>
<br>
相关警方防骗信息及短片请见以下网页连结:<br>
<br>
https://www.adcc.gov.hk/zh-cn/alerts-detail/alerts-1509000900093759490.html<br>
https://www.adcc.gov.hk/zh-cn/alerts-detail/alerts-1504047794545315842.html<br>
https://www.adcc.gov.hk/zh-cn/video-detail/video-1490531498432221185.html
							</div>
							<div class="its_news_line" id = "line_25"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_26" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_26','content_26','images_up_26','images_down_26')">
								<div class="its_news_title" id="title_26">关于《说明 - 贵金属及外汇孖展》的更新通知</div>
								<div class="publishDate" id="publishDate_26">
										2022-05-20
								</div>
								<div class="images_up" id = "images_up_26" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_26" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_26" style="display:none;">
								感谢您对中国银行（香港）有限公司（「本行」）的一贯支持。兹通知本行将于2022年6月21日对《说明 - 贵金属及外汇孖展》*作出下列更新：<br>
<br>
更新部分<br>
网上银行贵金属及外汇孖展服务时间<br>
<br>
更新内容<br>
• 标题由 「网上银行贵金属及外汇孖展服务时间」更新至「网上/手机银行贵金属及外汇孖展服务时间」。<br>
<br>
• 注释部份的第五点将被删除：<br>
<br>
注<br>
5.如星期六悬挂起黑色暴雨警告信号或八号烈风或暴风信号，将不提供有关涉及兑换的保证金调拨及保证金兑换服务；如该黑色暴雨警告信号于08:30或以后悬挂，则照常提供服务(特殊情况将另行通知)。<br>
<br>
*您可于登入本行的网上银行后，于「贵金属及外汇孖展」项下的「产品详情」下载《说明 - 贵金属及外汇孖展》<br>
<br>
如有任何查询，欢迎致电客户服务热线 (852) 3669 3668。
							</div>
							<div class="its_news_line" id = "line_26"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_27" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_27','content_27','images_up_27','images_down_27')">
								<div class="its_news_title" id="title_27">有关投资产品及服务之电子结单／通知书服务通知</div>
								<div class="publishDate" id="publishDate_27">
										2022-04-29
								</div>
								<div class="images_up" id = "images_up_27" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_27" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_27" style="display:none;">
								为提供更好的网上投资服务，由2022年6月3日起，指定客户(即于2022年4月8日或之前已开立本行网上银行户口并收取邮寄版投资产品及服务通知书及已向本行提供有效的电邮地址或手提电话号码的客户)首次前往网上银行「投资」&gt;「交易或相关」版面或手机银行「投资」&gt;「交易或相关」版面，即代表同意以电子结单/通知书代替邮寄版收取投资产品及服务之结单／通知书的服务(「取览服务」)。客户登入上述版面后，本行将向客户发出电邮或短讯确认及通知取览服务之生效日期，亦会述明客户撤销对取览服务的同意之方法。<br>
<br>
上述产品及服务受条款约束。<br>
<br>
如有查询，请联络我们的在线客服或客户服务热线(852) 3988 2388 / 私人银行客户服务热线(852) 3982 6988。
							</div>
							<div class="its_news_line" id = "line_27"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_28" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_28','content_28','images_up_28','images_down_28')">
								<div class="its_news_title" id="title_28">认可作押股票调整通知</div>
								<div class="publishDate" id="publishDate_28">
										2022-04-08
								</div>
								<div class="images_up" id = "images_up_28" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_28" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_28" style="display:none;">
								<p>感谢您使用中国银行(香港)有限公司（「本行」）的「财富组合融资」透支授信 / 一般银行贷款 (股票抵押贷款)服务（「该服务」）。<br>
<br>
为符合监管规定，本行将对该服务认可作押股票进行以下调整，并将于2022年4月14日生效（「生效日」）：<br>
</p>
<table border="1" cellspacing="0" cellpadding="0">
<tbody><tr><td width="204" rowspan="2" valign="top"><br>
股票号码/<br>
<br>
股票名称<br>
</td>
<td width="361" colspan="2" valign="top"><br>
贷款比例(作押比率)<br>
</td>
</tr><tr><td width="185" valign="top"><br>
于生效日之前<br>
已存入押记予本行之证券账户或已押记予本行之股票<br>
</td>
<td width="176" valign="top"><br>
生效日当日或之后存入押记予本行之证券账户的股票（无论新买入或新存入之股票）<br>
</td>
</tr><tr><td width="234" valign="top"><br>
3988/中国银行<br>
</td>
<td width="170" valign="top"><br>
60% (维持不变)<br>
</td>
<td width="161" valign="top"><br>
0%<br>
</td>
</tr></tbody></table>
<p><br>
按上述修订，任何于生效日当日或之后存入押记予本行之证券账户的3988/中国银行股票（无论新买入或新存入之股票）将不会被押记予本行。于生效日之前已存入押记予本行或已押记予本行之证券账户的3988/中国银行股票将仍然继续押记予本行，有关押记安排维持不变。<br>
<br>
由于上述修订可能涉及作押股票及/或贷款比例(作押比率)的调整，亦可能对您的「财富组合融资」透支授信及/或一般银行贷款 (股票抵押贷款)服务之贷款额度造成影响。如您的「财富组合融资」透支授信及/或一般银行贷款 (股票抵押贷款)服务的实际用款超出本行调整贷款比例(作押比率)后的额度，您有可能被要求于短时间内存入额外的资金以回复额内用款。假如未能在本行指定时间内回复额内用款，本行有权把您的「财富组合融资」透支授信及/或一般银行贷款 (股票抵押贷款)服务账户中抵押给本行的证券出售，而无需给予事先通知。<br>
<br>
为免生疑问，相关融资/贷款的条款和条件适用，本行在该等条款和条件下的权利均不受影响。本行保留随时更改作押股票及有关抵押率资料的权利，而无需给予事先通知。<br>
<br>
您可于本行网页浏览最新就该服务认可作押股票名单及作押比率。<br>
<br>
如有任何查询，请亲临本行任何一家分行或致电本行客户服务热线 (852) 3988 2388。</p>
							</div>
							<div class="its_news_line" id = "line_28"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_29" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_29','content_29','images_up_29','images_down_29')">
								<div class="its_news_title" id="title_29">提防新近诈骗手法</div>
								<div class="publishDate" id="publishDate_29">
										2022-03-28
								</div>
								<div class="images_up" id = "images_up_29" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_29" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_29" style="display:none;">
								中银香港提醒客户提防新近诈骗手法，提高防范意识，保障自身利益。<br>
<br>
相关警方防骗信息及短片请见以下网页<br>
<br>
https://www.adcc.gov.hk/zh-cn/anti-deception-month.html
							</div>
							<div class="its_news_line" id = "line_29"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_30" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_30','content_30','images_up_30','images_down_30')">
								<div class="its_news_title" id="title_30">风险管理提示</div>
								<div class="publishDate" id="publishDate_30">
										2022-02-25
								</div>
								<div class="images_up" id = "images_up_30" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_30" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_30" style="display:none;">
								鉴于俄罗斯及乌克兰局势升级，市场波动性大幅增加，敬请阁下密切留意相关投资项目及其风险。投资涉及风险，如欲知悉最新市况，欢迎与本行职员联络。资料只供参考。
							</div>
							<div class="its_news_line" id = "line_30"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_31" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_31','content_31','images_up_31','images_down_31')">
								<div class="its_news_title" id="title_31">有关伪冒电邮的声明</div>
								<div class="publishDate" id="publishDate_31">
										2022-01-29
								</div>
								<div class="images_up" id = "images_up_31" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_31" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_31" style="display:none;">
								<p>中国银行(香港)有限公司 (「中银香港」) 提醒客户及公众人士，慎防以下伪冒由中银香港发出的虚假电子邮件，电邮地址如下：</p>
<p>privatebanking @bochk-invest.com</p>
<p>该伪冒电邮意图骗取客户的金钱。中银香港特此声明与该伪冒电邮没有任何关系，并已将有关情况知会香港金融管理局及香港警方。</p>
<p>中银香港建议客户应先核实任何声称由中银香港发出的电邮，切勿开启可疑电邮及其附件，并应实时将其删除。如客户曾收到上述伪冒电邮，并付款或提供个人资料，请即致电中银香港客户服务热线 (852) 3988 2388（选取语言后，按 3、#、2）。</p>
							</div>
							<div class="its_news_line" id = "line_31"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_32" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_32','content_32','images_up_32','images_down_32')">
								<div class="its_news_title" id="title_32">切勿借/卖户口</div>
								<div class="publishDate" id="publishDate_32">
										2021-12-30
								</div>
								<div class="images_up" id = "images_up_32" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_32" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_32" style="display:none;">
								<b>切勿贪心搵快钱<br>
户口借人洗黑钱</b><br>
<br>
中银香港提醒客户，提高防范意识，保障自身利益。犯罪集团会透过传销电话或社交平台，以「搵快钱」吸引客户出售或借出户口，又或者利用客户的个人资料来开户，然后用这些「傀儡户口」收取骗款或其他犯罪得益。<br>
<br>
中银香港呼吁客户切勿出售或借出户口予他人，因为户口可能会被操控用作非法用途，对客户构成洗黑钱罪，最高刑罚为监禁14年及罚款500万港元。<br>
<br>
请见香港金融管理局相关网页:<br>
https://www.hkma.gov.hk/gb_chi/smart-consumers/dont-lend-sell-your-account/
							</div>
							<div class="its_news_line" id = "line_32"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_33" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_33','content_33','images_up_33','images_down_33')">
								<div class="its_news_title" id="title_33">关于征收财务汇报局(“财汇局”)交易征费</div>
								<div class="publishDate" id="publishDate_33">
										2021-12-01
								</div>
								<div class="images_up" id = "images_up_33" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_33" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_33" style="display:none;">
								财汇局将于2022年1月1日起收取交易征费(经中华通服务交易证券除外) 。证券买卖双方须分别缴纳每宗交易金额0.00015%的财汇局交易征费 (计至最接近的仙位数)，详情请浏览财汇局『经费来源及征费』网页。
							</div>
							<div class="its_news_line" id = "line_33"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_34" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_34','content_34','images_up_34','images_down_34')">
								<div class="its_news_title" id="title_34">有关结构性投资、贵金属存折账户及新股融资还款记录通知书的电子通知书服务通知</div>
								<div class="publishDate" id="publishDate_34">
										2021-12-01
								</div>
								<div class="images_up" id = "images_up_34" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_34" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_34" style="display:none;">
								中国银行(香港)有限公司(「本行」)现推出结构性投资及贵金属存折账户的电子通知书服务。本行个人客户可透过本行电子渠道登记投资产品电子结单及电子通知书服务(统称「电子结单服务」)。客户成功登记电子结单服务后，可随时随地登入本行电子渠道查阅或下载投资产品的电子结单及电子通知书。新服务设有免费电邮及/或短讯提示，通知新结单及/或通知书亦会上载至本行电子渠道。<br>
<br>
原有的“新股融资还款记录通知书”亦同时新增了电子通知书服务，客户若已登记使用证券电子结单服务，此通知书便会自动转为电子通知书，不会邮寄实物通知书予客户。<br>
<br>
上述产品及服务受条款约束。<br>
<br>
如有查询，请联络我们的在线客服或客户服务热线(852) 3988 2388。
							</div>
							<div class="its_news_line" id = "line_34"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_35" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_35','content_35','images_up_35','images_down_35')">
								<div class="its_news_title" id="title_35">切勿贪心搵快钱  户口借人洗黑钱</div>
								<div class="publishDate" id="publishDate_35">
										2021-09-10
								</div>
								<div class="images_up" id = "images_up_35" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_35" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_35" style="display:none;">
								中银香港提醒客户及公众人士，提高防范意识，保障自身利益。近日，有不法之徒透过传销电话及社交平台，以「搵快钱」吸引客户出售或借出银行户口，或利用客户的个人资料开户，然后利用这些「傀儡户口」收取骗款或其他犯罪得益，亦即是「洗黑钱」。<br>
<br>
中银香港呼吁客户切勿向他人出售或借出银行户口，因为有关户口可能会被操控用作非法用途，而对客户构成洗黑钱罪，最高刑罚为罚款港币500万元及监禁14年。
							</div>
							<div class="its_news_line" id = "line_35"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_36" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_36','content_36','images_up_36','images_down_36')">
								<div class="its_news_title" id="title_36">有关虚假WhatsApp短讯和WhatsApp来电的声明</div>
								<div class="publishDate" id="publishDate_36">
										2021-07-16
								</div>
								<div class="images_up" id = "images_up_36" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_36" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_36" style="display:none;">
								中国银行（香港）有限公司（「中银香港」）提醒客户及公众人士，慎防冒充中银香港和中银信用卡的WhatsApp短讯和WhatsApp来电，意图骗取客户的个人资料。<br>
<br>
该等伪冒WhatsApp短讯和WhatsApp来电自称是中银香港或中银信用卡职员，声称客户有待领文件、要求客户缴交内地信用卡欠款，或藉词查询信贷服务意见等，以不同借口意图骗取客户的个人及银行账户资料。中银香港特此声明与该等虚假短讯及来电没有任何关系，并已将有关情况知会香港金融管理局及香港警方。<br>
<br>
中银香港重申不会透过WhatsApp短讯及WhatsApp外拨电话向客户索取个人资料，如银行账户详情、网上银行用户名称及登入密码等，或通知客户其账户及信用卡出现异常情况，并于过程中要求客户按键。<br>
<br>
中银香港建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程式商店或可信来源下载的中银香港流动应用程式，接驳至网上银行或手机银行账户，切勿透过短讯、电邮、网上的超连结、二维条码或附件登入该等账户或提供个人资料（包括密码）。本行会不时于本行网页更新有关诈骗资讯提示，详情请浏览www.bochk.com/tc/aboutus/fraudalert.html。有关电子银行服务的保安资讯，请浏览 www.bochk.com/tc/security.html。<br>
<br>
客户如怀疑受骗，请致电本行客户服务热线 (852) 3988 2388（选取语言后，按 3、#、2）及与香港警方联络。
							</div>
							<div class="its_news_line" id = "line_36"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_37" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_37','content_37','images_up_37','images_down_37')">
								<div class="its_news_title" id="title_37">重要保安提示</div>
								<div class="publishDate" id="publishDate_37">
										2021-07-07
								</div>
								<div class="images_up" id = "images_up_37" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_37" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_37" style="display:none;">
								<b>慎防伪冒银行职员的骗徒<br>
 讹称代为登记领取「香港特区政府港币5,000元电子消费券」骗取个人及银行账户资料</b><br>
<br>
提防受骗小贴士<br>
• 切勿下载来历不明的应用程式。<br>
• 切勿开启来历不明的电邮及短讯内的超链结或附件。<br>
• 切勿向他人透露个人及银行账户资料，包括银行账户资料、网上银行用户名称、登入密码、单次密码或信用卡号码。<br>
<br>
中银香港<br>
• 不会以电话、电话录音、电邮、短讯、网上超链结、二维条码或附件等方式，索取客户的敏感个人资料。<br>
<br>
<b>银行户口咪乱借 银行密码切勿Share</b><br>
<br>
如有怀疑，请致电中银香港客户服务热线(852) 3988 2388或警方「防骗易」热线 (852) 18222。
							</div>
							<div class="its_news_line" id = "line_37"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_38" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_38','content_38','images_up_38','images_down_38')">
								<div class="its_news_title" id="title_38">有关虚假短讯及伪冒网站的声明</div>
								<div class="publishDate" id="publishDate_38">
										2021-06-21
								</div>
								<div class="images_up" id = "images_up_38" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_38" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_38" style="display:none;">
								中国银行（香港）有限公司（「中银香港」）提醒客户及公众人士慎防以下虚假短讯及伪冒中银香港网站：<br>
<br>
https: // boc-hk-secure.com<br>
<br>
该虚假短讯及伪冒网站意图盗取客户的资料，如网上银行号码/用户名称及网上银行密码。中银香港特此声明与该短讯及网站没有任何关系，并已将有关情况知会香港金融管理局及香港警方。<br>
<br>
中银香港建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程式商店或可信来源下载的中银香港流动应用程式，接驳至网上银行或手机银行账户，切勿透过短讯、电邮、网上的超连结、二维条码或附件登入该等账户或提供个人资料（包括密码）。本行会不时于本行网页更新有关诈骗资讯提示，详情请浏览www.bochk.com/tc/aboutus/fraudalert.html。有关电子银行服务的保安资讯，请浏览 www.bochk.com/tc/security.html。<br>
<br>
任何人士如曾登入上述伪冒网站并提供客户资料，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_38"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_39" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_39','content_39','images_up_39','images_down_39')">
								<div class="its_news_title" id="title_39">有关虚假短讯及伪冒网站的声明</div>
								<div class="publishDate" id="publishDate_39">
										2021-06-18
								</div>
								<div class="images_up" id = "images_up_39" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_39" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_39" style="display:none;">
								中国银行（香港）有限公司（「中银香港」）提醒客户及公众人士慎防以下虚假短讯及伪冒中银香港网站：<br>
<br>
https: // secure-boc-cn.com<br>
<br>
该虚假短讯及伪冒网站意图盗取客户的资料，如网上银行号码/用户名称及网上银行密码。中银香港特此声明与该短讯及网站没有任何关系，并已将有关情况知会香港金融管理局及香港警方。<br>
<br>
中银香港建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程式商店或可信来源下载的中银香港流动应用程式，接驳至网上银行或手机银行账户，切勿透过短讯、电邮、网上的超连结、二维条码或附件登入该等账户或提供个人资料（包括密码）。本行会不时于本行网页更新有关诈骗资讯提示，详情请浏览www.bochk.com/sc/aboutus/fraudalert.html。有关电子银行服务的保安资讯，请浏览 www.bochk.com/sc/security.html。<br>
<br>
任何人士如曾登入上述伪冒网站并提供客户资料，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_39"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_40" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_40','content_40','images_up_40','images_down_40')">
								<div class="its_news_title" id="title_40">有关伪冒电邮的声明</div>
								<div class="publishDate" id="publishDate_40">
										2021-06-07
								</div>
								<div class="images_up" id = "images_up_40" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_40" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_40" style="display:none;">
								中国银行(香港)有限公司 (「中银香港」) 提醒客户及公众人士，慎防伪冒由中银香港发出的虚假电子邮件，电邮地址为“bank.china.hongkong@ gmail.com”。<br>
<br>
中银香港特此声明与由该电邮地址发出的伪冒电邮没有任何关系，并已将有关情况知会香港金融管理局及香港警方。<br>
<br>
中银香港建议客户应先核实任何声称由中银香港发出的电邮，切勿开启可疑电邮及其附件，并应即时将其删除。如客户曾收到上述伪冒电邮，并付款或提供个人资料，请即致电中银香港客户服务热线 (852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_40"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_41" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_41','content_41','images_up_41','images_down_41')">
								<div class="its_news_title" id="title_41">有关伪冒电邮的声明</div>
								<div class="publishDate" id="publishDate_41">
										2021-05-12
								</div>
								<div class="images_up" id = "images_up_41" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_41" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_41" style="display:none;">
								中国银行(香港)有限公司 (「中银香港」) 提醒客户及公众人士，慎防伪冒由中银香港私人银行发出的虚假电子邮件，电邮域名为 “bochkprivatebank. com”。<br>
<br>
中银香港特此声明与由该域名发出的伪冒电邮没有任何关系，并已将有关情况知会香港金融管理局及香港警方。<br>
<br>
中银香港建议客户应先核实任何声称由中银香港发出的电邮，切勿开启可疑电邮及其附件，并应即时将其删除。如客户曾收到上述伪冒电邮，并付款或提供个人资料， 请即致电中银香港客户服务热线 (852) 3988 2388（选取语言后，按 3、#、2）
							</div>
							<div class="its_news_line" id = "line_41"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_42" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_42','content_42','images_up_42','images_down_42')">
								<div class="its_news_title" id="title_42">有关虚假短讯及伪冒网站的声明（2021年4月18日）</div>
								<div class="publishDate" id="publishDate_42">
										2021-04-18
								</div>
								<div class="images_up" id = "images_up_42" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_42" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_42" style="display:none;">
								中国银行（香港）（「中银香港」）提醒客户及公众人士慎防虚假短讯及伪冒中银香港网站。伪冒中银香港网站网址如下：<br>
<br>
https: // www .itslbochk.com<br>
<br>
该等虚假短讯及伪冒网站会以不同网域名称出现，或在中银香港官方网址www.bochk.com 上稍作改动，如加上不同组合的英文字母、数字或符号，企图误导客户及盗取客户的资料，如网上银行号码/用户名称、网上银行密码及电话短讯单次密码。中银香港特此声明与该等短讯及网站没有任何关系，并已将有关情况知会香港金融管理局及香港警方。<br>
<br>
中银香港建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程式商店或可信来源下载的中银香港流动应用程式，接驳至网上银行或手机银行账户，切勿透过短讯、电邮、网上的超连结、二维条码或附件登入该等账户或提供个人资料（包括密码）。本行会不时于本行网页更新有关诈骗资讯提示，详情请浏览www.bochk.com/sc/aboutus/fraudalert.html。有关电子银行服务的保安资讯，请浏览 www.bochk.com/sc/security.html。<br>
<br>
任何人士如曾登入上述伪冒网站并提供客户资料，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_42"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_43" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_43','content_43','images_up_43','images_down_43')">
								<div class="its_news_title" id="title_43">有关虚假短讯及伪冒网站的声明（2021年4月17日）</div>
								<div class="publishDate" id="publishDate_43">
										2021-04-17
								</div>
								<div class="images_up" id = "images_up_43" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_43" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_43" style="display:none;">
								中国银行（香港）（「中银香港」）提醒客户及公众人士慎防虚假短讯及伪冒中银香港网站。伪冒中银香港网站网址如下：<br>
<br>
https: // www .itsabochk.com<br>
<br>
该等虚假短讯及伪冒网站会以不同网域名称出现，或在中银香港官方网址www.bochk.com 上稍作改动，如加上不同组合的英文字母、数字或符号，企图误导客户及盗取客户的资料，如网上银行号码/用户名称、网上银行密码及电话短讯单次密码。中银香港特此声明与该等短讯及网站没有任何关系，并已将有关情况知会香港金融管理局及香港警方。<br>
<br>
中银香港建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程式商店或可信来源下载的中银香港流动应用程式，接驳至网上银行或手机银行账户，切勿透过短讯、电邮、网上的超连结、二维条码或附件登入该等账户或提供个人资料（包括密码）。本行会不时于本行网页更新有关诈骗资讯提示，详情请浏览www.bochk.com/sc/aboutus/fraudalert.html。有关电子银行服务的保安资讯，请浏览 www.bochk.com/sc/security.html。<br>
<br>
任何人士如曾登入上述伪冒网站并提供客户资料，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_43"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_44" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_44','content_44','images_up_44','images_down_44')">
								<div class="its_news_title" id="title_44">有关虚假短讯及伪冒网站的声明（2021年4月16日）</div>
								<div class="publishDate" id="publishDate_44">
										2021-04-16
								</div>
								<div class="images_up" id = "images_up_44" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_44" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_44" style="display:none;">
								中国银行（香港）（「中银香港」）提醒客户及公众人士慎防虚假短讯及伪冒中银香港网站。伪冒中银香港网站网址如下：<br>
<br>
https: // www .itsxbochk.com<br>
<br>
该等虚假短讯及伪冒网站会以不同网域名称出现，或在中银香港官方网址www.bochk.com 上稍作改动，如加上不同组合的英文字母、数字或符号，企图误导客户及盗取客户的资料，如网上银行号码/用户名称、网上银行密码及电话短讯单次密码。中银香港特此声明与该等短讯及网站没有任何关系，并已将有关情况知会香港金融管理局及香港警方。<br>
<br>
中银香港建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程式商店或可信来源下载的中银香港流动应用程式，接驳至网上银行或手机银行账户，切勿透过短讯、电邮、网上的超连结、二维条码或附件登入该等账户或提供个人资料（包括密码）。本行会不时于本行网页更新有关诈骗资讯提示，详情请浏览www.bochk.com/sc/aboutus/fraudalert.html。有关电子银行服务的保安资讯，请浏览 www.bochk.com/sc/security.html。<br>
<br>
任何人士如曾登入上述伪冒网站并提供客户资料，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_44"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_45" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_45','content_45','images_up_45','images_down_45')">
								<div class="its_news_title" id="title_45">有关虚假短讯及伪冒网站的声明（2021年4月16日）</div>
								<div class="publishDate" id="publishDate_45">
										2021-04-16
								</div>
								<div class="images_up" id = "images_up_45" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_45" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_45" style="display:none;">
								中国银行（香港）（「中银香港」）提醒客户及公众人士慎防虚假短讯及伪冒中银香港网站。伪冒中银香港网站网址如下：<br>
<br>
https: // www .itsnbochk.com<br>
<br>
该等虚假短讯及伪冒网站会以不同网域名称出现，或在中银香港官方网址www.bochk.com 上稍作改动，如加上不同组合的英文字母、数字或符号，企图误导客户及盗取客户的资料，如网上银行号码/用户名称、网上银行密码及电话短讯单次密码。中银香港特此声明与该等短讯及网站没有任何关系，并已将有关情况知会香港金融管理局及香港警方。<br>
<br>
中银香港建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程式商店或可信来源下载的中银香港流动应用程式，接驳至网上银行或手机银行账户，切勿透过短讯、电邮、网上的超连结、二维条码或附件登入该等账户或提供个人资料（包括密码）。本行会不时于本行网页更新有关诈骗资讯提示，详情请浏览www.bochk.com/sc/aboutus/fraudalert.html。有关电子银行服务的保安资讯，请浏览 www.bochk.com/sc/security.html。<br>
<br>
任何人士如曾登入上述伪冒网站并提供客户资料，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_45"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_46" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_46','content_46','images_up_46','images_down_46')">
								<div class="its_news_title" id="title_46">有关虚假短讯及伪冒网站的声明</div>
								<div class="publishDate" id="publishDate_46">
										2021-04-15
								</div>
								<div class="images_up" id = "images_up_46" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_46" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_46" style="display:none;">
								中国银行（香港）（「中银香港」）提醒客户及公众人士慎防以下虚假短讯（请见截图）及伪冒中银香港网站：<br>
<br>
https://www.itssbochk.com<br>
<br>
https://www.itsobochk.com<br>
<br>
该等虚假短讯及伪冒网站会以不同网域名称出现，或在中银香港官方网址www.bochk.com 上稍作改动，如加上不同组合的英文字母、数字或符号，企图误导客户及盗取客户的资料，如网上银行号码/用户名称、网上银行密码及电话短讯单次密码。中银香港特此声明与该等短讯及网站没有任何关系，并已将有关情况知会香港金融管理局及香港警方。<br>
<br>
中银香港建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程式商店或可信来源下载的中银香港流动应用程式，接驳至网上银行或手机银行账户，切勿透过短讯、电邮、网上的超连结、二维条码或附件登入该等账户或提供个人资料（包括密码）。本行会不时于本行网页更新有关诈骗资讯提示，详情请浏览https://www.bochk.com/sc/aboutus/fraudalert.html。有关电子银行服务的保安资讯，请浏览 www.bochk.com/sc/security.html。<br>
<br>
任何人士如曾登入上述伪冒网站并提供客户资料，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_46"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_47" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_47','content_47','images_up_47','images_down_47')">
								<div class="its_news_title" id="title_47">有关伪冒网站的声明</div>
								<div class="publishDate" id="publishDate_47">
										2021-03-19
								</div>
								<div class="images_up" id = "images_up_47" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_47" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_47" style="display:none;">
								<p>中国银行（香港）有限公司（「中银香港」）提醒客户及公众人士慎防以下伪冒中银香港网站：</p>
<p>http: // <a href="http://www.bankofchina100.com">www.bankofchina100.com</a></p>
<p>上述伪冒网站讹称为中银香港海外咨询介绍，并提供一系列服务，如香港及新加坡银行开户及公司注册、审计、海外商标注册及移民等。</p>
<p>中银香港特此声明及澄清与该网站及中银香港海外咨询介绍没有任何关系，并已将有关情况知会香港金融管理局及香港警方。客户如怀疑受骗，请即致电中银香港客户热线 (852) 3988 2388 （选取语言后，按 3、#、2）查询及与香港警方联络。</p>
							</div>
							<div class="its_news_line" id = "line_47"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_48" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_48','content_48','images_up_48','images_down_48')">
								<div class="its_news_title" id="title_48">有关伪冒网站的声明</div>
								<div class="publishDate" id="publishDate_48">
										2021-03-17
								</div>
								<div class="images_up" id = "images_up_48" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_48" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_48" style="display:none;">
								<p>中国银行（香港）（「中银香港」）提醒客户及公众人士慎防以下伪冒中银香港网站：</p>
<p>http: // www.hkxxwo.com / static / bb / index.html</p>
<p>上述伪冒网站意图盗取客户的资料，如网上银行号码/用户名称、网上银行密码、姓名、身份证号码、手机号码及验证码。中银香港特此声明与上述网站没有任何关系，并已将有关情况知会香港金融管理局及香港警方。</p>
<p>伪冒网站通常会以不同网域名称出现，或在中银香港官方网址 www.bochk.com上稍作改动，如加上不同组合的英文字母、数字或符号，企图误导客户及盗取客户的资料。中银香港建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程式商店或可信来源下载的中银香港流动应用程式，接驳至网上银行或手机银行账户，切勿透过短讯、电邮、网上的超连结、二维条码或附件登入该等账户或提供个人资料（包括密码）。</p>
<p>本行会不时于本行网页更新有关诈骗资讯提示，详情请浏览 www.bochk.com/sc/aboutus/fraudalert.html。有关电子银行服务的保安资讯，请浏览 www.bochk.com/sc/security.html。</p>
<p>任何人士如曾登入上述伪冒网站并提供客户资料，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2）。</p>
							</div>
							<div class="its_news_line" id = "line_48"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_49" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_49','content_49','images_up_49','images_down_49')">
								<div class="its_news_title" id="title_49">有关伪冒网站的声明（2021年3月5日）</div>
								<div class="publishDate" id="publishDate_49">
										2021-03-05
								</div>
								<div class="images_up" id = "images_up_49" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_49" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_49" style="display:none;">
								中国银行（香港）（「中银香港」）提醒客户及公众人士慎防以下伪冒中银香港网站：<br>
<br>
https://www.bochkg.com<br>
<br>
https://www.bochkj.com<br>
<br>
https://www.bochkgd.com<br>
<br>
https://www.bochkgj.com<br>
<br>
https://www.bochkgk.com<br>
<br>
https://www.bochkgo.com<br>
<br>
https://www.bochkgu.com<br>
<br>
此伪冒网站会以不同网域名称出现，或在中银香港官方网址 www.bochk.com 上稍作改动，如加上不同组合的英文字母、数字或符号，企图误导客户及盗取客户的资料，如网上银行号码/用户名称、网上银行密码及电话短讯单次密码。中银香港特此声明与上述网站没有任何关系，并已将有关情况知会香港金融管理局及香港警方。<br>
<br>
中银香港建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程式商店或可信来源下载的中银香港流动应用程式，接驳至网上银行或手机银行账户，切勿透过短讯、电邮、网上的超连结、二维条码或附件登入该等账户或提供个人资料（包括密码）。本行会不时于本行网页更新有关诈骗资讯提示，详情请浏览 www.bochk.com/sc/aboutus/fraudalert.html。有关电子银行服务的保安资讯，请浏览 www.bochk.com/sc/security.html。<br>
<br>
任何人士如曾登入上述伪冒网站并提供客户资料，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_49"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_50" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_50','content_50','images_up_50','images_down_50')">
								<div class="its_news_title" id="title_50">有关虚假短讯及伪冒网站的重要提示</div>
								<div class="publishDate" id="publishDate_50">
										2021-03-05
								</div>
								<div class="images_up" id = "images_up_50" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_50" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_50" style="display:none;">
								近日有骗徒发出附有伪冒中国银行(香港) （「本行」）网站超连结的虚假短讯，讹称客户户口设定出现异常或验证未成功等，要求客户点击短讯内的超连结进行验证或申请三重验证，诱骗客户在伪冒网站内输入个人资料，如网上银行号码/用户名称、网上银行密码及单次短讯密码等。本行已将有关情况知会香港金融管理局及香港警方。<br>
<br>
这些虚假短讯及伪冒网站的超连结会以不同网域名称出现，或在本行官方网址www.bochk.com上稍作改动，如加上不同组合的英文字母、数字或符号，企图误导客户及盗取客户的资料。<br>
<br>
<b>下列为一些伪冒短讯的常见特征</b>：<br>
<br>
• 伪冒短讯一般使用与本行极为相近的发送人名称或号码。<br>
• 内容通常涉及本行的重要讯息，或要求收件人提供个人资料以核实账户，例如︰大额转账的交易通知或须启用新的安全功能的通知，并要求收件人点击超连结或开启附件。<br>
<br>
本行呼吁客户提高警觉，慎防受骗。本行重申不会以手机短讯、电邮、网上的超连结、二维条码或附件，要求客户登入账户或提供任何个人资料，包括账户号码、网上银行号码/用户名称、登入密码和单次短讯密码，也不会透过预录语音讯息联络客户。如您收到声称由本行发出的可疑银行短讯，要求点击内附的超连结及提供任何个人资料，应先联络本行以辨别短讯真伪。此外，在登入网上银行时，请注意登入版面有否出现任何异常情况。如有怀疑，请即停止操作，切勿输入任何资料，并请关闭视窗及与本行联络。<br>
<br>
本行建议您经电子渠道进行交易时，应在浏览器直接输入本行官方网址（www.bochk.com），或透过官方应用程式商店或可信来源下载的中银香港流动应用程式，登入网上银行或手机银行账户。本行会不时于本行网页更新有关诈骗资讯提示，详情请浏览 www.bochk.com/sc/aboutus/fraudalert.html。有关电子银行服务的保安资讯，请浏览 www.bochk.com/sc/security.html。<br>
<br>
如您曾登入怀疑伪冒网站并提供资料，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_50"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_51" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_51','content_51','images_up_51','images_down_51')">
								<div class="its_news_title" id="title_51">有关虚假短讯及伪冒网站的声明（2021年3月4日）</div>
								<div class="publishDate" id="publishDate_51">
										2021-03-04
								</div>
								<div class="images_up" id = "images_up_51" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_51" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_51" style="display:none;">
								中国银行（香港）（「中银香港」）提醒客户及公众人士慎防以下虚假短讯及伪冒中银香港网站：<br>
<br>
https://www.bochkoa.com<br>
<br>
此虚假短讯及伪冒网站会以不同网域名称出现，或在中银香港官方网址www.bochk.com 上稍作改动，如加上不同组合的英文字母、数字或符号，企图误导客户及盗取客户的资料，如网上银行号码/用户名称、网上银行密码及电话短讯单次密码。中银香港特此声明与该短讯及网站没有任何关系，并已将有关情况知会香港金融管理局及香港警方。<br>
<br>
中银香港建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程式商店或可信来源下载的中银香港流动应用程式，接驳至网上银行或手机银行账户，切勿透过短讯、电邮、网上的超连结、二维条码或附件登入该等账户或提供个人资料（包括密码）。本行会不时于本行网页更新有关诈骗资讯提示，详情请浏览www.bochk.com/sc/aboutus/fraudalert.html。有关电子 银行服务的保安资讯，请浏览 www.bochk.com/sc/security.html。<br>
<br>
任何人士如曾登入上述伪冒网站并提供客户资料，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_51"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_52" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_52','content_52','images_up_52','images_down_52')">
								<div class="its_news_title" id="title_52">有关伪冒网站的声明（2021年3月4日）</div>
								<div class="publishDate" id="publishDate_52">
										2021-03-04
								</div>
								<div class="images_up" id = "images_up_52" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_52" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_52" style="display:none;">
								中国银行（香港）（「中银香港」）提醒客户及公众人士慎防以下伪冒中银香港网站：<br>
<br>
https://www.bochkgs.com<br>
<br>
此伪冒网站会以不同网域名称出现，或在中银香港官方网址 www.bochk.com 上稍作改动，如加上不同组合的英文字母、数字或符号，企图误导客户及盗取客户的资料，如网上银行号码/用户名称、网上银行密码及电话短讯单次密码。中银香港特此声明与上述网站没有任何关系，并已将有关情况知会香港金融管理局及香港警方。<br>
<br>
中银香港建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程式商店或可信来源下载的中银香港流动应用程式，接驳至网上银行或手机银行账户，切勿透过短讯、电邮、网上的超连结、二维条码或附件登入该等账户或提供个人资料（包括密码）。本行会不时于本行网页更新有关诈骗资讯提示，详情请浏览www.bochk.com/sc/aboutus/fraudalert.html。有关电子银行服务的保安资讯，请浏览 www.bochk.com/sc/security.html。<br>
<br>
任何人士如曾登入上述伪冒网站并提供客户资料，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_52"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_53" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_53','content_53','images_up_53','images_down_53')">
								<div class="its_news_title" id="title_53">有关虚假短讯及伪冒网站的声明（2021年3月3日）</div>
								<div class="publishDate" id="publishDate_53">
										2021-03-03
								</div>
								<div class="images_up" id = "images_up_53" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_53" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_53" style="display:none;">
								中国银行（香港）（「中银香港」）提醒客户及公众人士慎防以下虚假短讯及伪冒中银香港网站：<br>
<br>
https://bit.ly/3bZeuuS<br>
<br>
https://www.malaysiamay.com/static/bb/index.html<br>
<br>
此等虚假短讯及伪冒网站会以不同域名出现，或在中银香港官方网址www.bochk.com 上稍作改动，如加上不同组合的英文字母、数字或符号，企图误导客 户及盗取客户的数据，如网上银行号码/用户名称、网上银行密码及电话短讯单次密码。中银香港特此声明与该等短讯及网站没有任何关系，并已将有关情况知会香港金 融管理局及香港警方。<br>
<br>
中银香港建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程序商店或可信来源下载的中银香港流动应用 程序，接驳至网上银行或手机银行账户，切勿透过短讯、电邮、网上的超链接、二维条形码或附件登入该等账户或提供个人资料（包括密码）。本行会不时于本行网页更 新有关诈骗信息提示，详情请浏览 www.bochk.com/tc/aboutus/fraudalert.html。有关电子银行服务的保安信息，请浏览 www.bochk.com/tc/security.html。<br>
<br>
任何人士如曾登入上述伪冒网站并提供客户数据，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_53"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_54" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_54','content_54','images_up_54','images_down_54')">
								<div class="its_news_title" id="title_54">有关虚假短讯及伪冒网站的声明（2021年3月3日）</div>
								<div class="publishDate" id="publishDate_54">
										2021-03-03
								</div>
								<div class="images_up" id = "images_up_54" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_54" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_54" style="display:none;">
								中国银行（香港）（「中银香港」）提醒客户及公众人士慎防以下虚假短讯及伪冒中银香港网站：<br>
<br>
https://www.bochkoa.com<br>
<br>
https://www.bochkos.com<br>
<br>
https://www.bochkow.com<br>
<br>
https://www.bohkc.com<br>
<br>
此等虚假短讯及伪冒网站会以不同域名出现，或在中银香港官方网址www.bochk.com 上稍作改动，如加上不同组合的英文字母、数字或符号，企图误导客 户及盗取客户的数据，如网上银行号码/用户名称、网上银行密码及电话短讯单次密码。中银香港特此声明与该等短讯及网站没有任何关系，并已将有关情况知会香港金 融管理局及香港警方。<br>
<br>
中银香港建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程序商店或可信来源下载的中银香港流动应用 程序，接驳至网上银行或手机银行账户，切勿透过短讯、电邮、网上的超链接、二维条形码或附件登入该等账户或提供个人资料（包括密码）。本行会不时于本行网页更 新有关诈骗信息提示，详情请浏览 www.bochk.com/tc/aboutus/fraudalert.html。有关电子银行服务的保安信息，请浏览 www.bochk.com/tc/security.html。<br>
<br>
任何人士如曾登入上述伪冒网站并提供客户数据，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_54"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_55" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_55','content_55','images_up_55','images_down_55')">
								<div class="its_news_title" id="title_55">有关伪冒网站的声明（2021年3月2日）</div>
								<div class="publishDate" id="publishDate_55">
										2021-03-02
								</div>
								<div class="images_up" id = "images_up_55" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_55" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_55" style="display:none;">
								中国银行（香港）（「中银香港」）提醒客户及公众人士慎防以下伪冒中银香港网站：<br>
<br>
https://www.bochkeg.com<br>
<br>
https://www.bochkf.com<br>
<br>
此等伪冒网站会以不同网域名称出现，或在中银香港官方网址 www.bochk.com 上稍作改动，如加上不同组合的英文字母、数字或符号，企图误导客户及盗取客户的 资料，如网上银行号码/用户名称、网上银行密码及电话短讯单次密码。中银香港特此声明与上述网站没有任何关系，并已将有关情况知会香港金融管理局及香港警方。<br>
<br>
 中银香港建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程式商店或可信来源下载的中银香港流动应用 程式，接驳至网上银行或手机银行账户，切勿透过短讯、电邮、网上的超连结、二维条码或附件登入该等账户或提供个人资料（包括密码）。有关电子银行服务的保安资 讯，请浏览 www.bochk.com/sc/security.html。<br>
<br>
任何人士如曾登入上述伪冒网站并提供客户资料，请即致电中银香港客户服务热 线(852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_55"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_56" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_56','content_56','images_up_56','images_down_56')">
								<div class="its_news_title" id="title_56">有关虚假短讯及伪冒网站的声明（2021年3月2日）</div>
								<div class="publishDate" id="publishDate_56">
										2021-03-02
								</div>
								<div class="images_up" id = "images_up_56" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_56" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_56" style="display:none;">
								中国银行（香港）（「中银香港」）提醒客户及公众人士，近日有骗徒发出附有伪冒中银香港网站超连结的虚假短讯，讹称客户户口设定出现异常或验证未成功等，要 求客户点击短讯内的超连结，诱骗客户在伪冒网站内输入个人资料，如网上银行号码/用户名称、网上银行密码及电话短讯单次密码等。中银香港特此声明与该等短讯及 网站没有任何关系，并已将有关情况知会香港金融管理局及香港警方。<br>
<br>
该等虚假短讯内伪冒网站的超连结会以不同网域名称出现，或在中银香港官方网址 www.bochk.com 上稍作改动，如加上不同组合的英文字母、数字或符号（如下）， 企图误导客户。<br>
<br>
https://www.bochkee.com<br>
<br>
https://www.bochkem.com<br>
<br>
https://www.bochkeo.com<br>
<br>
https://www.bochkep.com<br>
<br>
https://www.bochkeu.com<br>
<br>
https://www.bochkew.com<br>
<br>
本行呼吁客户提高警觉，慎防受骗。中银香港重申不会以手机短讯、电邮、网上的超连结、二维条码或附件，要求客户提供任何敏感的个人资料，包括账户号码、网 上银行用户名称、登入密码和单次短讯密码，也不会透过预录语音讯息联络客户。客户切勿透过手机短讯、电邮、网上的超连结、二维条码或附件登入该等账户或提供个 人资料（包括密码）。客户如收到声称由本行发出的可疑银行短讯，要求点击内附的超连结提供任何个人资料，请马上提高警觉，应致电本行以办别短讯真伪。<br>
<br>
本行建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程式商店或可信来源下载的中银香港流动应用程 式，接驳至网上银行或手机银行账户。本行会不时于本行网页更新有关诈骗资讯提示，详情请浏览 www.bochk.com/sc/aboutus/fraudalert.html。有关电子银行服务的保安资讯，请浏览 www.bochk.com/sc/security.html。<br>
<br>
任何人士如曾登入上述伪冒网站并提供客户资料，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_56"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_57" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_57','content_57','images_up_57','images_down_57')">
								<div class="its_news_title" id="title_57">有关伪冒网站的声明（2021年2月28日）</div>
								<div class="publishDate" id="publishDate_57">
										2021-02-28
								</div>
								<div class="images_up" id = "images_up_57" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_57" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_57" style="display:none;">
								中国银行（香港）（「中银香港」）提醒客户及公众人士慎防以下伪冒中银香港网站：<br>
<br>
https: // www.bochkva.com<br>
<br>
https: // www.bochkvd.com<br>
<br>
https: // www.bochkvf.com<br>
<br>
上述伪冒网站意图盗取客户的资料，如网上银行号码/用户名称、网上银行密码及电话短讯单次密码。中银香港特此声明与上述网站没有任何关系，幷已将有关情况知会香港金融管理局及香港警方。<br>
<br>
中银香港建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程式商店或可信来源下载的中银香港流动应用程式，接驳至网上银行或手机银行账户，切勿透过短讯、电邮、网上的超连结、二维条码或附件登入该等账户或提供个人资料（包括密码）。有关电子银行服务的保安资讯，请浏览 www.bochk.com/tc/security.html。<br>
<br>
任何人士如曾登入上述伪冒网站幷提供客户资料，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_57"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_58" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_58','content_58','images_up_58','images_down_58')">
								<div class="its_news_title" id="title_58">有关虚假短讯及伪冒网站的声明（2021年2月27日）</div>
								<div class="publishDate" id="publishDate_58">
										2021-02-27
								</div>
								<div class="images_up" id = "images_up_58" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_58" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_58" style="display:none;">
								中国银行（香港）（「中银香港」）提醒客户及公众人士慎防以下虚假短讯及伪冒中银香港网站：<br>
<br>
https: // www.bochkx.com<br>
<br>
https: // www.bochkn.com<br>
<br>
https: // www.bochkv.com<br>
<br>
https: // www.bochkvo.com<br>
<br>
https: // www.bochkvp.com<br>
<br>
https: // www.bochkvw.com<br>
<br>
该等虚假短讯及伪冒网站意图盗取客户的资料，如网上银行号码/用户名称、网上银行密码及电话短讯单次密码。中银香港特此声明与该等短讯及网站没有任何关系，并已将有关情况知会香港金融管理局及香港警方。<br>
<br>
中银香港建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程式商店或可信来源下载的中银香港流动应用程式，接驳至网上银行或手机银行账户，切勿透过短讯、电邮、网上的超连结、二维条码或附件登入该等账户或提供个人资料（包括密码）。有关电子银行服务的保安资讯，请浏览 www.bochk.com/sc/security.html。<br>
<br>
任何人士如曾登入上述伪冒网站并提供客户资料，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_58"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_59" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_59','content_59','images_up_59','images_down_59')">
								<div class="its_news_title" id="title_59">有关伪冒网站的声明（2021年2月27日）</div>
								<div class="publishDate" id="publishDate_59">
										2021-02-27
								</div>
								<div class="images_up" id = "images_up_59" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_59" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_59" style="display:none;">
								中国银行（香港）（「中银香港」）提醒客户及公众人士慎防以下伪冒中银香港网站：<br>
<br>
https: // www.bochkm.com<br>
<br>
https: // www.bochkp.com<br>
<br>
https: // www.bochkq.com<br>
<br>
https: // www.bochks.com<br>
<br>
https: // www.bochkt.com<br>
<br>
https: // www.bochku.com<br>
<br>
上述伪冒网站意图盗取客户的资料，如网上银行号码/用户名称、网上银行密码及电话短讯单次密码。中银香港特此声明与上述网站没有任何关系，并已将有关情况知会香港金融管理局及香港警方。<br>
<br>
中银香港建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程式商店或可信来源下载的中银香港流动应用程式，接驳至网上银行或手机银行账户，切勿透过短讯、电邮、网上的超连结、二维条码或附件登入该等账户或提供个人资料（包括密码）。有关电子银行服务的保安资讯，请浏览 www.bochk.com/sc/security.html。<br>
<br>
任何人士如曾登入上述伪冒网站并提供客户资料，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_59"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_60" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_60','content_60','images_up_60','images_down_60')">
								<div class="its_news_title" id="title_60">有关虚假短讯及伪冒网站的声明（2021年2月26日）</div>
								<div class="publishDate" id="publishDate_60">
										2021-02-26
								</div>
								<div class="images_up" id = "images_up_60" style="display: none;">
									<img src="images/tr-down.png"/>
								</div>
								<div class="images_down" id = "images_down_60" style="display:none;">
									<img src="images/tr-up.png"/>
								</div>
							</div>
							<div class="its_news_content" id="content_60" style="display:none;">
								中国银行（香港）（「中银香港」）提醒客户及公众人士慎防以下虚假短讯及伪冒中银香港网站：<br>
<br>
https : // bit.ly/ 2P4beXo<br>
<br>
http : // www.malaysiamam.com/static/bb/index.html<br>
<br>
该等虚假短讯及伪冒网站意图盗取客户的资料，如网上银行号码/用户名称、密码、卡号、客户姓名、身份证号码、手机号码、验证码及由流动保安编码所产生的单次密码。中银香港特此声明与该等短讯及网站没有任何关系，并已将有关情况知会香港金融管理局及香港警方。<br>
<br>
中银香港建议客户经电子银行服务进行交易时，应在浏览器直接输入中银香港网址（www.bochk.com），或经官方应用程式商店或可信来源下载的中银香港流动应用程式，接驳至网上银行或手机银行账户，切勿透过短讯、电邮、网上的超连结、二维条码或附件登入该等账户或提供个人资料（包括密码）。有关电子银行服务的保安资讯，请浏览 https://www.bochk.com/sc/security.html。<br>
<br>
任何人士如曾登入上述伪冒网站并提供客户资料，请即致电中银香港客户服务热线(852) 3988 2388（选取语言后，按 3、#、2）。
							</div>
							<div class="its_news_line" id = "line_60"  style="display: none;"></div>
						
						
							<br>
							<div class="moreCount"><a class="more_btn_right" id="moreCount_btn" onclick="DisplaySubheader_more('60')"></a></div>
						
					</div>
				
					<ul id="iconbtn">
						<li>
							<a class="more" href="javascript:openHelp('/cmm.before_commonInformation.do?langType=S&bkCode=012&title=security')"><span class="more-left"></span><span class="more-right"></span><span class="icon-1"></span><span>保安资讯</span></a>
							<p>如何确保您的网上交易安全稳妥？请<a href="javascript:openHelp('/cmm.before_commonInformation.do?langType=S&bkCode=012&title=security')">按此</a>。<p>
						</li>
						<li>
							<a class="more" href="https://its.bochk.com/reg.entry.do?langType=S&amp;bkCode=012"><span class="more-left"></span><span class="more-right"></span><span class="icon-2"></span><span>登记信用卡网上服务</span></a>
							<p>如您持有信用卡账户，可使用此功能登记信用卡网上服务。</p>
						</li>
						<li>
							<a id="SysUS" class="more" href="javascript:openHelp('/cmm.maintenanceSchedule.do?langType=S',550,400)"><span class="more-left"></span><span class="more-right"></span><span class="icon-3"></span><span>系统提升时间表</span></a>
							<p>客户服务热线：<br>+852 3988 2388</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
	<div id="footer">
		<div id="footer-nav">
			<img src="images/ie6/best-choice-icon.png" alt="">
			<ul id="nav-bottom">
				<li><a href="javascript:openHelp('/cmm.before_commonInformation.do?langType=S&bkCode=012&title=importantnotice')" title="重要声明及私隐政策声明">重要声明及私隐政策声明</a></li>
				<li><a href="javascript:openHelp('/cmm.before_commonInformation.do?langType=S&bkCode=012&title=conditionsforservices')" title="服务条款">服务条款</a></li>
				<li><a href="javascript:openHelp('/information/faq/faq_main_s.html')" title="常见问题">常见问题</a></li>
				<li><a href="javascript:openHelp('/cmm.before_commonInformation.do?langType=S&bkCode=012&title=hyperlinkpolicy')" title="超连结政策">超连结政策</a></li>
				<li><a href="javascript:openHelp('https://www.bochk.com/sc/servicecharge.html')" title="一般银行服务收费表">一般银行服务收费表</a></li>
			</ul>
			<div>© 中国银行(香港)有限公司。版权所有。</div>
		</div> 
	</div>
	<div id = 'captchaWrapper'>&nbsp;</div>
	<bgsound id="bgSoundAudioCaptcha" src="ibs_lgn_index_s.jsp" loop="1" autostart="false">
<script type="text/javascript">
 
	ibsInitOcs(012,'https://ocs.bochk.com/webchat/webchat.html?pageFlage=IBS','https://ocs.bochk.com/dbsrv/','S','lgn.index','lgn/index');



	var latestNewsListSize = 60;
	showNewsBtn(latestNewsListSize);


	showImportInfoContent();


	changeImage();

</script>
</body>
</html>