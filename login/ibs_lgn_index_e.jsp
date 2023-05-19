



<html xmlns="http://www.w3.org/1999/xhtml" lang="en" class="en">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso8859-1">
<title>BOCHK Internet Banking</title>
<meta http-equiv="x-ua-compatible" content="IE=EmulateIE9,IE=EmulateIE10,IE=EmulateIE11,IE=Edge">
<META http-equiv="Pragma" content="no-cache">
<META http-equiv="Cache-Control" content="no-cache">
<META http-equiv="Expires" content="11 Sep 2006 07:16:41 GMT">
<link href="../css/IbsLgn.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../css/linkui.css" type="text/css"/>
<link rel="shortcut icon" href="data:," >
<link rel="apple-touch-icon" href="data:," >
<link rel="apple-touch-icon" sizes="120x120" href="data:," >
<link rel="apple-touch-icon" sizes="152x152" href="data:," >
<script type="text/javascript" src="../js/IbsDelay.js"></script>
<script type="text/javascript" src="../js/IbsCommon.js?t=e&amp;v=20230428163500"></script>
<script type="text/javascript" src="../js/IbsDelay.js"></script>
<script type="text/javascript" src="../js/IbsValidForm.js?t=e&amp;v=20230428163500"></script>
<script type="text/javascript" src="../js/promote/IbsBanner.js?t=e"></script>
<script type="text/javascript" src="../js/browser_detect.js?v=20230428163500"></script>
<script type="text/javascript" src="../js/promote/IbsMaint.js?t=e"></script>
<script type="text/javascript" src="../js/promote/IbsContingency.js"></script>
<script type="text/javascript" src="../js/promote/IbsBannerDr.js?t=e"></script>
<script type="text/javascript" src="../js/e2ee/ame2eea.js?t=e"></script>
<script src="../js/jquery-2.2.4.js" type="text/javascript"></script>
<script src="../js/IbsLgnFontSize.js?t=e&amp;v=20230428163500"></script>
<script type="text/javascript" src="../js/audio.js"></script>
<script type="text/javascript" src="../js/LinkUiKit.js"></script>
<script type="text/javascript" src="../js/IbsFmpDeviceFingerprint.js"></script>
<script type="text/javascript" src="../js/IbsLogin_e.js"></script>
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
		alert("Your browser does not support cookies, please enable this function first.");

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

	items 	 = new Array();
	items[0] = new item(f.text_str_dispID, " Internet Banking No. / User Name ", "loginID", 0,8,16);
	
		items[1] = new item(f.text_str_dispPass, "  Password  ", "Blank", 0,6,12);
	
	
	
		items[2] = new item(f.verCodeInput, "Verification Code", "verCode", 0,4,4);
	 
	result   = validForm("E", items);
	
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
			
			
			var e2eeSid = '0001pV_vdbdywd3QMQAQI-N4FZ6qbb9Qi9_4apxRkdNpIa2L81Xxah1o9t6ec_S_q0DSQURT-SbBjm00UpX47tQR7X49yXywqyhR-SqwOPGT_tSV6Q';
			var pubKey = 'C5110EA16E2038E70F8A68ED040EAF2896F08EA540E5196332A6108FF9E020CD3B2A45701E94BE96E422BA98957C29485E00194EA912BED026D6037FD4590FA0AF93F726D99DAAE7BA722B3B8F889F92AAB1CCC59B4644E728FADE79C30C3C686AAFADCD68F23CB9CE15DCC446C77C55863870A0EC32DC8D415C87490596D47E989017F2D493F0EF799D13544C0C07C969D4D2426F0B7D9170AB8985636BE4B6760FA1A4AA140CFC0CD76CA571268D7D807B0AE2AE4583393916B688FE15EC0DD9E1F4C9E0658099A83C5CC24EBB453E99CA756499BF026DD470367A76AF84B7CDECDC895A8494AFCDFC45DF8924CBFE8482E5452762146F836A668BACC24459,0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C0A9,NO_KCV';
			var randomNumber = '9DC3017CF811753E9A32C5F776D52852';
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
		alert('If you are required to login Internet Banking via mobile device, please be reminded to enhance the security settings of your mobile device.\nFor details, please refer to Security Information.');
		return false;
	}	
}

function online() {
		var width = 540;
		var height = 420;
		var left = window.screen.availWidth/2 - width/2;
		var top = window.screen.availHeight/2 - height/2;
		var subWin = window.open('https://onc.bochk.com/infoweb/uentry/UEntry.aspx?lang=E','webchat','width='+width+',height='+height+',left='+left+',top='+top+',status=no,scrollbars=yes,resizable=yes,menubar=0,location=0,directories=0');
		subWin.focus();
	}
	
</script>

<script type="text/javascript">var wrt_request_id='0000F3850005fc0e8d97ed62001CF025';var wrt_request_url='https://its.bochk.com/login/ibs_lgn_index_e.jsp';var wrt_correlator='0000F3850005fc0e8d97ed62001CF025';</script>
<script language="JavaScript" src="wrt_perf_timing.js" type="text/javascript"></script>
</head>
<body id="login" onload="setCookie('from','012',null,'/');document.form_login.text_str_dispID.focus();getScreenWidth();isDenyAccess();tipsAlert();">

<div id="header">
	<div id="header-top">
		<a id="logo" title="Bank of China (Hong Kong) Limited"><img src="images/ie6/logo.jpg" alt="Bank of China (Hong Kong) Limited" /></a>
		<ul id="nav-top">
			<li><a href="ibs_lgn_index_c.jsp">繁體</a></li>
			<li><a href="ibs_lgn_index_s.jsp">简体</a></li>
			<li><div id="fontsize"><a href="ibs_lgn_index_e.jsp#" class="en-text" title="Font Size: Default Size"><span class="access">Font Size: Default Size (</span>A<span class="access">)</span></a><a href="ibs_lgn_index_e.jsp#" class="en-text" title="Font Size: Larger"><span class="access">Font Size: Larger(</span>A<span class="access">)</span></a><a href="ibs_lgn_index_e.jsp#" class="en-text" title="Font Size: Largest"><span class="access">Font Size: Largest (</span>A<span class="access">)</span></a></div></li>
			<li><a href="javascript:openHelp('/cmm.cnuMainBeforeLogin.do?langType=E&bkCode=012',600,670)">Contact Us</a></li>
		</ul>
	</div>
	<div id="separator"><div id="separator-red"></div></div>
</div>
<div id="importInfo">
	<div id="importInfo_box">
		
		<div class="style-b_boc" >
			<div class="its_news" >
				<div class="its_news_header">Important Message</div>
				
				
					<div class="its_news_body">
						<p class="its_news_subheader">
							<ul><li type="disc">Hong Kong Investor Identification Regime ("HKIDR") has been implemented on 20 March 2023. Please submit consent now</li></ul>
						</p>
						<div class="importInfo_content" id ="importInfo_content_0">
							For investors who have not provided the consent regarding HKIDR, please submit now. Otherwise, you will not be allowed to buy or deposit HK stocks after the implementation date.<br>
<br>
Please login to Internet Banking (select: Investment &gt; HK Securities &gt; HKIDR) to submit the consent. Kindly note that once the investors submit the consent, it shall take effect within 2 trading days.<br>
<br>
Investment involves risk. Terms &amp; Conditions apply.
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
						<h1>Login Hong Kong Internet Banking</h1>
						<p>For those who have already registered / applied for Internet Banking Service</p>
						<form name="form_login" method="post" action="https://its.bochk.com/lgn.default.do"	target="_top">
						    <span><label for="username">Internet Banking No. / User Name&nbsp;
							<div id="tips">
					  			<div id="tips_mark">
									<img id="tips_image" src="srp/images/tips.jpg" alt="">
								</div>
								<!-- must use embedded display for tips_box show/hide -->
								<div id="tips_box" style="display: none;">
									<div id="tips_box_statement">
										<h3>Forgot your Internet Banking Number / Username</h3>
										<div id="images_Statement_e">
											<img src="images/e-Statement-EN.png"/>
										</div>
										<h4>First page of consolidated statement</h4>
										<p>Your customer number equals to Internet Banking Number.</p>
									</div>
									<div id="tips_box_creditCard">
										<div id="images_creditCardBackside">
											<img src="images/creditCardBackside.png"/>
										</div>
										<h4>BOC card(ATM card)</h4>
										<p>For Private Wealth or Wealth Management customer, your customer number is located on the back of the BOC card(ATM card).</p>
									</div>
								</div>
							</div>
							</label>
							<input id="username" name="text_str_dispID" type="text" maxlength="16"/></span>
							<span><label for="password">Internet Banking Password</label><input type="password" id="password" name="text_str_dispPass" maxlength="12" autocomplete="off"/></span>
							
								<span style="display:inline"><label for="checkCode">Verification Code<div style="display:inline; margin-left:-5px"><img id="verifyImg" src="../portal/images/trans.gif" onclick="changeImage()" title='Refresh Image'/></div>
								</label><input id="checkCode" name="verCodeInput" size="4" maxlength="4" autocomplete="off"/>
								<input type="hidden" name="txt_verCodeInput" value="">
								<br/>
								<label><div style="display:inline-block; margin-left:49px"><a class="apply" href="javascript:changeImage();" style="border-bottom:0px;text-decoration:underline; vertical-align:2.5px; padding-right:10px" tabindex="-1">Refresh Image</a>
								<script type="text/javascript" language="javascript">
			                    play('en',false);
								</script></div></label>
								</span>	
							
							<input type="hidden" name="b_login" value="true">             				
	          				<input type="hidden" name="txt_loginID" value="">
	          				<input type="hidden" name="langType" value="E">
	          				<input type="hidden" name="bkCode" value="012">
	          				<input type="hidden" name="txt_loginPass" value="">
	          				<input type="hidden" name="txt_loginValue" value="0.25806487951267343">
	          				<input type="hidden" name="screenWidth" value="0">
	          				<input type="hidden" name="empnum" value="null">
	          				<input type="hidden" name="empbankCode" value="null">
	          				
	          				<input type="hidden" name="ssolink" value="null">          				
	          				<input name="E2EE_RPIN" type="hidden" >
	          				<input type="hidden" name="referer" value="">
	          				<input type="hidden" name="deviceNumber" value=""> 
						</form>
						<p id="loginbox-nav">
							<a class="more" href="javascript:sub_step()" ><span class="more-left"></span><span>Login</span><span class="more-right"></span></a>
							<a class="apply" href="javascript:openHelp('/information/apply/ibs_hta_main_e.html')" style="border-bottom:0px;text-decoration:underline;">How to Apply</a>
						</p>
						<p id="forgotpwd">If you <a href="javascript:openHelp('/login/srp/help/ibs_srp_help_boc_e.html')">forgot your Internet Banking No. / User Name </a>, <a href="https://its.bochk.com/srp.resettingPass.do?langType=E&amp;bkCode=012">Reset Internet Banking password</a>.</p>
					</div>
					<div class="right">
						<h2></h2>
						
							<div class="important_notes"><img src="images/greyExclamationMark.png">&nbsp;Important Notes</div>
							<p class="shortDesc"><p>The terms &amp; conditions of the services delivered through this channel will be provided in electronic format. Please contact Online Chat for enquiry.</p>
<p>Customers are reminded to stay vigilant to anything abnormal when logging into the Internet Banking service (e.g. unusual pop-up screens, unusually slow browser response, multiple requests for password input etc.). In case of doubt, please do not follow the instructions of the suspicious web page or input any data, and call our customer service hotline (852) 3988 2388. Please refer to <a></a><a href="https://www.bochk.com/en/security.html">Security Information</a> for details</p>
</p>
							
								<p class="moreCount" ><a class="more-right" href="javascript:openHelp('/cmm.loginPageNotice.do?langType=E&bkCode=012',600,670)">More</a></p>
							
						
						</br><p>If you would like to know more about the operation of Internet Banking, please access to the <a style="border-bottom:0px;text-decoration:underline;" href="javascript:openHelp('https://www.bochk.com/dam/more/ibs/operational_guidelines_EN.pdf')">operational guidelines</a>.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="style-a_boc">
			<div>
				<div>
				
					<div class="its_news">
						<div class="its_news_header">What's New</div>
						
							<div class="its_news_subheader" id = "subheader_1" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_1','content_1','images_up_1','images_down_1')">
								<div class="its_news_title" id="title_1">Phishing Alert - Avoid Payment Card Scam</div>
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
								Bank of China (Hong Kong) (“BOCHK”) would like to alert customers and the general public to phishing emails / SMS messages which are intended to steal personal information and payment card credentials (including credit cards and BOC cards).<br>
<br>
Fraudsters recently sent out phishing emails or SMS messages embedded with fraudulent website hyperlinks which purported to be from Online Shopping Platform / Reward Scheme Platform / Postal Service / Courier Services / Government Departments / Banks for verification, reward redemption, refund, fee payment or information update.&nbsp; These phishing emails or SMS messages made different false claims such as falsely claiming that customers’ information in the platform should be updated to continue the services, or customer’s parcels could not be delivered and thus personal information should be updated or extra fee is required, or customer’s account was overcharged or automatic payment failed and thus credit card information should be provided to handle immediately, etc., and lured customers to click on the embedded hyperlinks in the messages and enter personal and payment card information.<br>
<br>
The hyperlinks of these fake emails / SMS messages and fraudulent websites will appear under different domain names or with slight variations from the official website addresses by adding a similar combination of letters, numbers or symbols. Senders’ names appearing in the fake SMS messages may be as same as the genuine merchants, resulting in the fake SMS messages being displayed together with the previous SMS messages received from genuine merchants, with intent to mislead and steal customers’ personal and payment card information for various illegal acts including binding Mobile Payment &amp; Services for unauthorized local or overseas transactions, or to directly use it on unauthorized online transactions.<br>
<br>
BOCHK reiterates that we would not ask for sensitive personal information such as bank account details, Internet Banking usernames, login passwords, one-time passwords or payment card numbers/security code, through phone calls, phone call recordings, emails, SMS messages, hyperlinks, QR codes, attachments,<br>
<br>
The Bank reminds customers to be vigilant against possible scams:<br>
<br>
• Please carefully protect your payment card, personal information and payment card information (including card number, expiry date, CVC code, SMS one-time password). Do not disclose your personal information, payment card credentials and passwords, including the SMS one-time password.<br>
• Even though “AutoFill” function is available on mobile devices, before inputting the one-time password for any authorized transaction, please verify transaction details and message content carefully, such as merchant name, transaction type, transaction amount and currency, that whether it matches with the usage and the transaction.<br>
• Ensure the website is genuine and reliable before inputting any information or conducting transaction.<br>
• Do not open email, SMS messages, attachments or click on the hyperlink from unknown sources. In case of doubt, please stop the operation and do not input any data. Please close the window and contact the Bank immediately, or verify through official contact point of the genuine merchant.<br>
• If customers have provided personal information to suspected fraudulent websites, please immediately contact the Bank’s Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection), and contact the Police.<br>
• If customers have received any suspicious message on binding Mobile Payment Services or internet transaction, please contact the Police and the Bank immediately.<br>
• Review transactions record of credit cards and BOC cards frequently through internet banking, mobile banking or statements to check if there is any suspicious or unauthorized transaction.<br>
• If cardholders fail to take reasonable care to keep the credit card / BOC card, personal information and payment card credentials (including card number, expiry date, CVC code, SMS one-time password), or ignore BOCHK’s transaction notifications, in accordance with the credit card agreement / credit card user agreement, terms and conditions, important notice of BOC ATM card and Conditions for Services, cardholders may be liable for the transactions and losses.<br>
<br>
BOCHK will update the fraud alerts on the Bank’s website from time to time. For details, please visit www.bochk.com/en/aboutus/fraudalert.html. For more security information about our electronic banking services, please visit www.bochk.com/en/security.html.<br>
<br>
							</div>
							<div class="its_news_line" id = "line_1"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_2" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_2','content_2','images_up_2','images_down_2')">
								<div class="its_news_title" id="title_2">Notice of System Maintenance on 21 May 2023</div>
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
								Due to BOCHK system maintenance, FPS-related services including fund transfer, direct debit authorisation and addressing registration will not be available from 3:20 a.m. to 7:00 a.m. on 21 May 2023 (Sunday). Customer may wish to make advance arrangements for their payment activities if necessary.
							</div>
							<div class="its_news_line" id = "line_2"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_3" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_3','content_3','images_up_3','images_down_3')">
								<div class="its_news_title" id="title_3">Notice on the closure of Enrich Banking Priority Counter Services at branches</div>
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
								Please be informed that starting from 19 June 2023 (Monday), branches of Bank of China (Hong Kong) will be renovated in phases and Enrich Banking Priority Services Counter will be terminated to provide more convenient and high-quality banking service. During this period, branches will continue to operate and maintain services as usual. Enrich Banking customers who need to use general banking services can use self-service machine or other service counters.<br>
<br>
Customers can also enjoy our convenient banking services through our diversified electronic channels like Internet Banking, Mobile Banking, Phone Banking and ATMs.<br>
<br>
For enquiries, please call Enrich Banking Services Hotline at (852) 3988 2988.<br>
<br>
Should there be any discrepancy between the Chinese and the English version of this letter, the Chinese version shall prevail.<br>
							</div>
							<div class="its_news_line" id = "line_3"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_4" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_4','content_4','images_up_4','images_down_4')">
								<div class="its_news_title" id="title_4">Two-way alert SMS on credit card transaction / activity</div>
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
								If unusual transaction / activity is detected on your credit card, Bank of China (Hong Kong) (“the Bank”) will send you a two-way alert SMS to your registered mobile phone number, inviting you to reply whether you have authorised / initiated it. Please carefully verify the details in the SMS, such as merchant name, transaction type, transaction amount and currency, before replying to that SMS.<br>
<br>
If you have authorised the transaction / initiated the activity, please reply with &quot;1&quot; after verifying that the SMS content is correct. If you have not authorised / initiated it, or the SMS content is incorrect, please reply with &quot;9&quot;. The Bank will follow up per your response, including immediate suspension of your credit card and contacting you for further details after receiving the reply of “9”.<br>
<br>
Please note that:<br>
1. Do not provide any personal and credit card information when replying that SMS. You may be charged for sending SMS by your telecom service provider.<br>
<br>
2. If you have incorrectly replied that SMS, please contact the Bank immediately.<br>
<br>
3. If you receive that SMS overseas, please contact the Bank immediately and do not reply that SMS.<br>
<br>
							</div>
							<div class="its_news_line" id = "line_4"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_5" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_5','content_5','images_up_5','images_down_5')">
								<div class="its_news_title" id="title_5">Termination Notice of “BOC Wealth Express” Service</div>
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
								<p>Please be informed that with effect from 20 June 2023 (“Effective Date”), Bank of China (Hong Kong) Limited (“BOCHK”) and Bank of China Limited (“BOC”) will terminate “BOC Wealth Express” Service, including Wealth Express card and the related functions of “BOC Wealth Express” in Personal Internet Banking.</p>
<p>&nbsp;</p>
<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The following services of “BOC Wealth Express” will be terminated from the Effective Date (Applicable to holder of card issued by BOCHK):</p>
<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ATM &amp; POS service from BOCHK and BOC designated accounts, Flexible Account Management Service, balance checking at ATMs and POS terminals with BOC Wealth Express Card;</p>
<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Account overview, transaction records, remittance to the Mainland and Hong Kong and remittance transaction records<sup>1 </sup>under BOC Wealth Express via BOCHK Personal Internet Banking; and</p>
<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Counter services, cash withdrawal, cash transfer and balance checking via self-service machines at BOC Shenzhen branch.</p>
<p>&nbsp;</p>
<p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Customer can bring the identity documents (e.g. Mainland Travel Permit for Hong Kong and Macau Residents) along with BOC Wealth Express Card to cancel BOC Account at BOC Shenzhen branch. When “BOC Wealth Express” Service is terminated, customer can still visit BOC Shenzhen branch to cancel the account and withdraw the balance. (Applicable to holder of card issued by BOCHK)</p>
<p>&nbsp;</p>
<p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Customer can continue to use BOCHK Personal Internet Banking / Mobile banking services for BOCHK HKD savings account under the Wealth Express Card. You may also apply BOC Card for the HKD savings account.</p>
<p>&nbsp;</p>
<p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BOC Personal Internet Banking services for BOCHK HKD savings account / BOC Wealth Express Card issued by BOC and the related services (including Flexible Account Management Service<sup>2</sup>) will be terminated. For details of BOC Wealth Express Card issued by BOC or BOC Personal Internet Banking services, please contact BOC.</p>
<p>&nbsp;</p>
<p>Should you have any enquiry, please contact BOCHK Customer Service Hotline at (852) 3988 2333 (Monday to Friday, 9 a.m. to 6p.m. or Saturday, 9 a.m. to 1 p.m.) or visit <a href="http://www.bochk.com/">www.bochk.com</a> or BOCHK branches. For enquiries of BOC account / services, please visit BOC branch or contact BOC Customer Service Hotline at (86) 755-95566.</p>
<p>&nbsp;</p>
<p><b>Bank of China (Hong Kong) Limited</b></p>
<p>20 April 2023</p>
<p>&nbsp;</p>
<p>Remarks:</p>
<p><sup>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </sup>After&nbsp;“BOC Wealth Express” Service is terminated, you can also review past transaction records and remittance transaction records of your BOCHK HKD savings account. (Banking &gt; My Account &gt; Transaction Record or Banking &gt; Remittance &gt; Transaction Record / Outward Remittance Enquiry / Inward Remittance Enquiry).</p>
<p>&nbsp;</p>
<p><sup>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </sup>BOC Wealth Express Card Flexible Account Management Service and related services, including ATM &amp; POS services and balance checking for BOCHK HKD savings account. Account overview, transaction records, remittance to the Mainland and Hong Kong, and remittance transaction records under BOC Wealth Express via BOC Internet Banking.</p>
<p>&nbsp;</p>
<p>Should there be any discrepancy between the Chinese and the English versions of this letter, the Chinese version shall prevail.</p>
							</div>
							<div class="its_news_line" id = "line_5"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_6" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_6','content_6','images_up_6','images_down_6')">
								<div class="its_news_title" id="title_6">Reminder on Investment Market Risk </div>
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
								Given recent risk events of a major bank in the Switzerland may trigger market volatility, please pay attention to your relevant investments and their risks. Investment involves risks. If you want to know the latest market conditions, please contact our staff.
							</div>
							<div class="its_news_line" id = "line_6"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_7" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_7','content_7','images_up_7','images_down_7')">
								<div class="its_news_title" id="title_7">One-stop scam and pitfall search engine “Scameter+” mobile application</div>
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
								<p><img width="332" src="https://www.bochk.com/dam/document/platforms/personal/20230315_en.jpg" alt=""><br>
<br>
To fight against the telecommunication and online frauds, the Police has rolled out the one-stop scam and pitfall search engine “Scameter+” mobile application to help the public identify frauds and online pitfalls.&nbsp; When the public encounters suspicious calls, online sellers, friend requests, job advertisements, investment websites, and the like, they can enter the platform account name or number, payment account, phone number, email address, URL, etc. to assess the risk of fraud and cyber security.<br>
<br>
Customers can make good use of this Police search engine to aware of frauds and to protect their own interests.<br>
<br>
Please refer to the following website hyperlinks for Police anti-fraud information:-<br>
https://cyberdefender.hk/en-us/</p>
<p><b>&nbsp;</b></p>
							</div>
							<div class="its_news_line" id = "line_7"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_8" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_8','content_8','images_up_8','images_down_8')">
								<div class="its_news_title" id="title_8">Reminder on Investment Market Risk</div>
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
								Given recent risk events of certain banks in the United States may trigger market volatility, please pay attention to your relevant investments and their risks. Investment involves risks. If you want to know the latest market conditions, please contact our staff.
							</div>
							<div class="its_news_line" id = "line_8"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_9" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_9','content_9','images_up_9','images_down_9')">
								<div class="its_news_title" id="title_9">Notice of Adjustments of the Eligible Loanable Share(s)</div>
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
								<p>Dear Valued Customer,</p>
<p><br>
Thank you for choosing Bank of China (Hong Kong) Limited (the “Bank”) “Wealth Portfolio Financing” Overdraft Facility / General Banking Facilities (secured by shares) Service.</p>
<p><br>
Please be informed that the periodical examination on the Eligible List of Loanable Shares (the “List”) is completed and the List will be effective from and including 27 February 2023 (the “Effective Date”). Adjustment are as follows:</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table border="1" cellspacing="0" cellpadding="0" width="340">
<tbody><tr><td width="97" rowspan="2" valign="top"><p>Changes</p>
</td>
<td width="223" rowspan="2" valign="top"><p>Share Code /<br>
Share Name</p>
</td>
<td width="245" colspan="2" valign="top"><p>Loan Ratios</p>
</td>
</tr><tr><td width="122" valign="top"><p>Before the Effective Date</p>
</td>
<td width="123" valign="top"><p>From and including the Effective Date</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>13/HUTCHMED CHINA L</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>20/SENSETIME GROU-B</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>178/SA SA INTL HLDGS</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>30%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>412/SHANDONG HI-SPEE</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>520/XIABUXIABU</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>546/FUFENG GROUP LTD</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>30%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>1179/H WORLD GP LTD</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>1672/ASCLETIS PHARMA</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>1873/VIVA BIOTECH HOL</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>1880/CHINA TOURISM -H</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>2096/SIMCERE PHARMACE</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>2162/KEYMED BIOSCIENC</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>2252/SHANGHAI MICROPO</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>2273/GUSHENGTANG HOLD</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>2378/PRUDENTIAL PLC</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>3668/YANCOAL AUSTRALI</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>6606/NEW HORIZON HEAL</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>6699/ANGELALIGN TECHN</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>6821/ASYMCHEM LABOR-H</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>6855/ASCENTAGE PHARMA</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>9696/TIANQI LITHIUM C</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>9869/HELENS INTERNATI</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Newly Add</p>
</td>
<td width="223"><p>9961/TRIP.COM GROUP L</p>
</td>
<td width="122"><p>0%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Remove</p>
</td>
<td width="223"><p>580/SUN KING TECHNOL</p>
</td>
<td width="122"><p>30%</p>
</td>
<td width="123"><p>0%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Remove</p>
</td>
<td width="223"><p>665/HAITONG INT'L</p>
</td>
<td width="122"><p>30%</p>
</td>
<td width="123"><p>0%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Remove</p>
</td>
<td width="223"><p>1121/GOLDEN SOLAR NEW</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>0%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Remove</p>
</td>
<td width="223"><p>1521/FRONTAGE HOLDING</p>
</td>
<td width="122"><p>30%</p>
</td>
<td width="123"><p>0%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Remove</p>
</td>
<td width="223"><p>1866/CHINA XLX FERTIL</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>0%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Remove</p>
</td>
<td width="223"><p>2130/CN LOGISTICS INT</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>0%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Remove</p>
</td>
<td width="223"><p>2342/COMBA TELECOM SY</p>
</td>
<td width="122"><p>30%</p>
</td>
<td width="123"><p>0%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Remove</p>
</td>
<td width="223"><p>2727/SHANGHAI ELECT-H</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>0%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>4/WHARF HLDG</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>19/SWIRE PACIFIC-A</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>55%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>81/CHINA OVERSEAS G</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>30%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>220/UNI-PRESIDENT CH</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>293/CATHAY PAC AIR</p>
</td>
<td width="122"><p>45%</p>
</td>
<td width="123"><p>55%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>302/CMGE TECHNOLOGY</p>
</td>
<td width="122"><p>30%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>322/TINGYI</p>
</td>
<td width="122"><p>55%</p>
</td>
<td width="123"><p>60%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>323/MAANSHAN IRON-H</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>30%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>345/VITASOY INTL HLD</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>347/ANGANG STEEL-H</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>30%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>358/JIANGXI COPPER-H</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>55%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>384/CHINA GAS HOLDIN</p>
</td>
<td width="122"><p>55%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>425/MINTH GROUP LTD</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>50%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>551/YUE YUEN IND</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>30%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>586/CONCH VENTURE</p>
</td>
<td width="122"><p>55%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>587/CHINA CONCH ENVI</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>694/BEIJING CAP AI-H</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>696/TRAVELSKY TECH-H</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>753/AIR CHINA LTD-H</p>
</td>
<td width="122"><p>55%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>819/TIANNENG POWER</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>50%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>855/CHINA WATER AFFA</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>50%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>867/CHINA MEDICAL SY</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>874/BAIYUNSHAN PH-H</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>50%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>956/CHINA SUNTIEN-H</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>55%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>966/CHINA TAIPING IN</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>55%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>991/DATANG INTL PO-H</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1071/HUADIAN POWER-H</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1072/DONGFANG ELECT-H</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1108/LUOYANG GLASS-H</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>30%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1157/ZOOMLION HEAVY-H</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1193/CHINA RES GAS</p>
</td>
<td width="122"><p>55%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1199/COSCO SHIPPING P</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>50%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1208/MMG</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1268/CHINA MEIDONG AU</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1302/LIFETECH SCI</p>
</td>
<td width="122"><p>30%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1310/HKBN LTD</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1357/MEITU INC</p>
</td>
<td width="122"><p>30%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1359/CHINA CINDA-H</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1515/CHINA RESOURCES</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>30%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1530/3SBIO INC</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>55%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1558/YICHANG HEC CH-H</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>30%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1585/YADEA GROUP HOLD</p>
</td>
<td width="122"><p>55%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1776/GF SECURITIES-H</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>55%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1787/SHANDONG GOLD -H</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>55%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1789/AK MEDICAL HOLDI</p>
</td>
<td width="122"><p>30%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1798/CHINA DATANG C-H</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1800/CHINA COM CONS-H</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>55%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1816/CGN POWER-H</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>55%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1833/PING AN HEALTHCA</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1882/HAITIAN INTL</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>50%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1896/MAOYAN ENTERTAIN</p>
</td>
<td width="122"><p>30%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1919/COSCO SHIP HOL-H</p>
</td>
<td width="122"><p>55%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1958/BAIC MOTOR-H</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>50%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1972/SWIREPROPERTIES</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>55%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1988/CHINA MINSHENG-H</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>55%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>1999/MAN WAH HOLDINGS</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>2005/SSY GROUP LTD</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>50%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>2009/BBMG CORP-H</p>
</td>
<td width="122"><p>30%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>2018/AAC TECHNOLOGIES</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>2186/LUYE PHARMA GROU</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>50%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>2314/LEE &amp; MAN PAPER</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>2357/AVICHINA INDUS-H</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>55%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>2611/GUOTAI JUNAN S-H</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>50%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>2666/GENERTEC UNIVERS</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>50%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>2689/NINE DRAGONS PAP</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>3331/VINDA INTL HLDGS</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>3799/DALI FOODS GROUP</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>3808/SINOTRUK HK LTD</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>3868/XINYI ENERGY HOL</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>3898/CRRC TIMES ELEC</p>
</td>
<td width="122"><p>45%</p>
</td>
<td width="123"><p>55%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>3908/CHINA INTERNAT-H</p>
</td>
<td width="122"><p>55%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>3933/THE UNITED LABOR</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>50%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>3958/DFZQ-H</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>50%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>3998/BOSIDENG INTL</p>
</td>
<td width="122"><p>55%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>6049/POLY PROPERTY-H</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>6690/HAIER SMART H-H</p>
</td>
<td width="122"><p>55%</p>
</td>
<td width="123"><p>60%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>6881/CGS-H</p>
</td>
<td width="122"><p>50%</p>
</td>
<td width="123"><p>55%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>9926/AKESO INC - B</p>
</td>
<td width="122"><p>40%</p>
</td>
<td width="123"><p>45%</p>
</td>
</tr><tr><td width="97" valign="top"><p>Adjust</p>
</td>
<td width="223"><p>9969/INNOCARE PHARMA</p>
</td>
<td width="122"><p>30%</p>
</td>
<td width="123"><p>40%</p>
</td>
</tr></tbody></table>
<p><br>
Please note that the above examination may involve the adjustment of loanable shares, and/or loan ratios, and it may affect the total facility/loan limit of your “Wealth Portfolio Financing” Overdraft Facility and/or General Banking Facilities (secured by shares).&nbsp; You may be, amongst others, demanded to make additional payment to settle the excess facility/loan amount within a very short period when the actual outstanding facility/loan of your “Wealth Portfolio Financing” Overdraft Facility and/or General Banking Facilities (secured by shares) exceeds the total facility/loan limit at any relevant time. If the additional payments are not made within the Bank’s prescribed period, any or all of the charged securities in your “Wealth Portfolio Financing” Overdraft Facility and/or General Banking Facilities (secured by shares) will be sold without prior notice.<br>
<br>
For further information, please visit the Bank’s website (www.bochk.com) from the Effective Date, or visit any of our branches or call (852) 3988 2388.</p>
<p><br>
For the avoidance of doubt, the terms and conditions of the relevant facilities/ loans apply and nothing shall prejudice our rights under those terms and conditions.<br>
<br>
Bank of China (Hong Kong) Limited</p>
<p><br>
The English version of this email shall prevail whenever there is a discrepancy between the English and Chinese versions.</p>
<p>&nbsp;</p>
							</div>
							<div class="its_news_line" id = "line_9"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_10" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_10','content_10','images_up_10','images_down_10')">
								<div class="its_news_title" id="title_10">Important Notes on Unauthorized Remote Account Opening and Loan Application through Identity Theft</div>
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
								<p>Bank of China (Hong Kong) (“BOCHK” or “the Bank”) would like to alert customers and the general public to unauthorized remote account opening and loan application on internet banking through identity theft.</p>
<p>Fraudsters recently made different false claims to steal personal information for remote account opening and loan application on internet banking, such as purporting to be staff of banks manning street booths and attracting passersby to open bank account remotely, lure victims to take their face images, and provide their identity documents, address proof, financial statements for remote account opening and loan application.&nbsp; On the other hand, fraudsters also made false claims to test the face swapping function with new mobile application, and personal information and documents were being stolen for opening bank accounts and applying loans on internet banking.</p>
<p>The Bank reminds customers to be vigilant against possible scams:</p>
<p>．Please carefully protect your personal information. Do not disclose or provide your personal information, including face images, identity documents, address proof, financial statement;</p>
<p>．Use your own mobile photo or mobile devices for remote account opening and password setup;</p>
<p>．Do not use mobile photo or mobile devices provided by a third party for remote account opening and password setup;</p>
<p>．In case of doubt on any identity of a bank staff, please contact the hotline of the relevant bank or on the website of the Hong Kong Association of Banks for verification.</p>
<p>BOCHK will update the fraud alerts on the Bank’s website from time to time. For details, please visit www.bochk.com/en/aboutus/fraudalert.html. For more security information about our electronic banking services, please visit www.bochk.com/en/security.html.</p>
							</div>
							<div class="its_news_line" id = "line_10"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_11" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_11','content_11','images_up_11','images_down_11')">
								<div class="its_news_title" id="title_11">Phishing Alert - Avoid Credit Card Scam</div>
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
								<p>Bank of China (Hong Kong) (“BOCHK”) would like to alert customers and the general public to phishing emails / SMS messages which are intended to steal personal information and credit card credentials.</p>
<p>Fraudsters recently sent out phishing emails or SMS messages embedded with fraudulent website hyperlinks which purported to be from Online Shopping Platform / Reward Scheme Platform / Postal Service / Courier Services / Banks for verification, fee payment or information update.&nbsp; These phishing emails or SMS messages made different false claims such as falsely claiming that customers’ information in the platform should be updated to continue the services, or customer’s parcels could not be delivered and thus personal information should be updated or extra fee is required, and lured customers to click on the embedded hyperlinks in the messages and enter personal and credit card information.&nbsp;&nbsp;</p>
<p style="text-align: justify;">The hyperlinks of these fake emails / SMS messages and fraudulent websites will appear under different domain names or with slight variations from the official website addresses by adding a similar combination of letters, numbers or symbols.&nbsp; Senders’ names appearing in the fake SMS messages may be as same as the genuine merchants, resulting in the fake SMS messages being displayed together with the previous SMS messages received from genuine merchants, with intent to mislead and steal customers’ personal and credit card information for various illegal acts including <b>binding Mobile Payment &amp; Services</b> for unauthorized local or overseas transactions, or to <b>directly use it on unauthorized online transactions</b>.</p>
<p>BOCHK reiterates that we would not ask for sensitive personal information such as bank account details, Internet Banking usernames, login passwords, one-time passwords or credit card numbers/security code, through phone calls, phone call recordings, emails, SMS messages, hyperlinks, QR codes, attachments, etc.&nbsp;&nbsp;</p>
<p>The Bank reminds customers to be vigilant against possible scams:</p>
<p>• Please carefully protect your personal information. Do not disclose your personal information, credit card credentials and passwords, including the SMS one-time password.</p>
<p>• Even though “AutoFill” function is available on mobile devices, before inputting the one-time password for any authorized transaction, please verify transaction details and message content carefully, such as merchant name, transaction type, transaction amount and currency, that whether it matches with the usage and the transaction.&nbsp;</p>
<p>• Ensure the website is genuine and reliable before inputting any information or conducting transaction.</p>
<p>• Do not open email, SMS messages, attachments or click on the hyperlink from unknown sources.&nbsp; In case of doubt, please stop the operation and do not input any data.&nbsp; Please close the window and contact the Bank immediately, or verify through official contact point of the genuine merchant.</p>
<p>• If customers have provided personal information to suspected fraudulent websites, please immediately contact the Bank’s Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection), and contact the Police.</p>
<p>• If customers have received any suspicious message on binding Mobile Payment &amp; Services or internet transaction, please contact the Police and the Bank immediately.</p>
<p>• Review transactions record frequently through internet banking, mobile banking or statements to check if there is any suspicious or unauthorized transaction.</p>
<p>BOCHK will update the fraud alerts on the Bank’s website from time to time. For details, please visit www.bochk.com/en/aboutus/fraudalert.html. For more security information about our electronic banking services, please visit www.bochk.com/en/security.html.</p>
							</div>
							<div class="its_news_line" id = "line_11"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_12" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_12','content_12','images_up_12','images_down_12')">
								<div class="its_news_title" id="title_12">Important notice of implementation of the investor identification regime in Hong Kong</div>
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
								Thank you for using the securities services of Bank of China (Hong Kong) Limited (“the Bank”).<br>
<br>
Please be informed that the Securities and Futures Commission (“SFC”) will implement the investor identification regime at trading level for the securities market in Hong Kong (“HKIDR”) on 20 March 2023 (“Implementation Date”) which was announced on 12 March 2022.<br>
<br>
Starting from the Implementation Date, the Bank and its related brokers (“the Brokers”) will assign a unique Broker-Client Assigned Number (“BCAN”) to each client so as to enable to provide to the SEHK together with their Client Identification Data (“CID”), including client’s Full Name, ID Issuing Country/Region or Jurisdiction, ID Type &amp; ID Number shown in the identification document for processing their securities orders. The Bank and the Brokers will submit client’s BCAN with their securities order or share withdraw/deposit instruction to the Stock Exchange of Hong Kong (&quot;SEHK&quot;) and/or the SFC for reporting.<br>
<br>
<b><i>For individual clients, sole proprietorships and partnerships (collectively, &quot;Relevant Clients&quot;):</i></b><br>
<br>
<b>• Submit consent as soon as possible and ensure up-to-date personal data in the priority for CID</b><br>
<br>
Relevant Clients are recommended to submit consent to the Bank as soon as possible, and confirm that the CID given to the Bank and/or the Brokers is valid, true, complete, accurate, up-to-date, and meets the order of priority on the type of identity document as required by the SFC ^. If the Relevant Clients have not provided this consent, <b>they will not be allowed to buy, transfers of shares or deposits of physical certificates into the accounts </b>but will only be allowed to sell, transfer out or withdraw their existing holdings of securities, if any, until they do so. If the Relevant Clients submit consent after the Implementation Date, the consent is expected to be taken effect within 2 trading days after the Relevant Clients’ consent has been properly received by the Bank.<br>
<br>
<b>• Ways to submit consent</b><br>
<br>
For qualified single-name or joint-name clients# who have registered for the Bank’s Mobile Banking or Internet Banking Services but have not submitted the consent, please provide the consent to the Bank as soon as possible via Mobile Banking (Login&gt; Invest&gt; Securities) or Internet Banking (Login&gt; HK Securities&gt; HKIDR). Alternatively, other Relevant Clients can visit any branches of the Bank for the relevant arrangement.<br>
<br>
<b><i>For corporate clients (Not applicable to sole proprietorships and partnerships) :</i></b><br>
<br>
<b>• Ensure up-to-date personal data in the priority for CID</b><br>
<br>
Please be reminded to check and confirm the CID given to the Bank and/or the Brokers is valid, true, complete, accurate, up-to-date, and meets the order of priority on the type of identity document as required by the SFC^. <b>If there is any change to the CID and/or higher priority change of the identity document, please notify the Bank before 20 February 2023, otherwise the Bank and/or the Brokers will use the current record of the clients as the most up-to-date information in the priority for CID for reporting to the SEHK and/or the SFC.</b> Please note that the Bank will temporarily not assign BCAN for the corporate clients who do not enter into any securities trading transaction during the period of 1 November 2019 to the Implementation Date, in order to ensure that the CID is up-to-date and accurate. If the relevant corporate clients want to buy, transfers of shares or deposits of physical certificates into the accounts after the Implementation Date, please contact the Bank first for further arrangement. Moreover, for those corporate clients who are Relevant Regulated Intermediaries (e.g. brokers), the Bank will notify them with the relevant arrangement separately.<b></b><br>
<br>
For any enquiries, please call the Bank’s Personal Customer Service Hotline (852) 3988 2388 or Corporate Customer Service Hotline (852) 3988 2288.<br>
<br>
Remarks:<br>
^ The priority of the identity documents:<br>
(i) For an individual client’s order of priority: (1) HKID card; (2) national identification document; (3) passport)<br>
(Note: Exit-entry Permit for Travelling to and from Hong Kong and Macao, Permit for Proceeding to Hong Kong and Macao and HKSAR Document of Identity for Visa Purposes are not accepted)<br>
(ii) For a corporate client’s order of priority: (1) legal entity identifier (“LEI”) registration document; (2) certificate of incorporation; (3) business registration certificate; (4) other equivalent documents<br>
# This Consent Form is applicable to all securities accounts under the name of the Relevant Clients (including but not limited to joint accounts). For joint accounts, all the Relevant Clients in a joint relationship have to provide their own consents in order to effect buy orders or trades, or transfers of shares or deposits of physical certificates into the accounts. For sole proprietorship and partnership, consent forms must be submitted separately from personal accounts.<br>
- Should there be any inconsistency between the English and Chinese versions, the Chinese version shall prevail.<br>
							</div>
							<div class="its_news_line" id = "line_12"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_13" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_13','content_13','images_up_13','images_down_13')">
								<div class="its_news_title" id="title_13">Gentle Reminders for BOC Credit Card</div>
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
								The Bank has a stringent monitoring mechanism to safeguard your BOC Credit Cards. You are not liable for any unauthorised online transaction after our verification.<br>
<br>
If you notice any unauthorised transaction:<br>
<br>
1.&nbsp; You may log into your Mobile Banking or Internet Banking and reduce the Monthly Online Spending Limit to HK$0. You can also raise the limit when you feel safe. The steps are as follows:<br>
<br>
<b>Mobile Banking</b><br>
<br>
Bottom right corner [Menu]&gt;Setting&gt; Setting Online Spending limit<br>
<br>
<b>Internet Banking</b><br>
<br>
Personal setting&gt; Setting Credit Card Monthly Online Spending Limit<br>
<br>
You may use Online Customer Services (Online Chat) in Mobile Banking or Internet Banking for suspension or reporting a lost or stolen credit card;<br>
<br>
2. If you have not registered for Mobile Banking or Internet Banking, you may contact BOC Credit Card 24-hour Customer Services Hotline (852) 2853 8828 or BOC Credit Card 24-hour Lost Card Reporting Hotline at (852) 2544 2222.<br>
<br>
Please try to keep any screen captured images/evidences (if applicable) for our follow-up. For more details, please visit:<br>
www.bochk.com/en/creditcard/service/chargeback.html<br>
							</div>
							<div class="its_news_line" id = "line_13"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_14" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_14','content_14','images_up_14','images_down_14')">
								<div class="its_news_title" id="title_14">Notice of Adjustments of the Eligible Loanable Share(s)</div>
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
								<p>Thank you for choosing Bank of China (Hong Kong) Limited (the “Bank”) “Wealth Portfolio Financing” Overdraft Facility / General Banking Facilities (secured by shares) Service.<br>
<br>
Please be informed that the periodical examination on the Eligible List of Loanable Shares (the “List”) is completed and the List will be effective from and including 12 December 2022 (the “Effective Date”). Adjustment are as follows:</p>
<table border="1" cellspacing="0" cellpadding="0" width="340">
<tbody><tr><td rowspan="2" width="80">Changes</td>
<td rowspan="2">Share Code / Share Name</td>
<td colspan="2" valign="top">Loan Ratios</td>
</tr><tr><td valign="top">Before the Effective Date</td>
<td valign="top">From and including the Effective Date</td>
</tr><tr><td valign="top"><p>Newly Add</p>
</td>
<td valign="top"><p>1252/CHINA TIANRUI GR</p>
</td>
<td valign="top"><p>0%</p>
</td>
<td valign="top"><p>30%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>83/SINO LAND</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>50%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>135/KUNLUN ENERGY</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>144/CHINA MERCHANTS</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>50%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>151/WANT WANT CHINA</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>50%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>168/TSINGTAO BREW-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>268/KINGDEE INTL SFT</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>270/GUANGDONG INVEST</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>285/BYD ELECTRONIC</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>293/CATHAY PAC AIR</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>322/TINGYI</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>336/HUABAO INTL</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>30%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>354/CHINASOFT INTL</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>358/JIANGXI COPPER-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>50%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>384/CHINA GAS HOLDIN</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>425/MINTH GROUP LTD</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>40%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>522/ASMPT LTD</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>586/CONCH VENTURE</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>728/CHINA TELECOM-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>753/AIR CHINA LTD-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>772/CHINA LITERATURE</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>780/TONGCHENG TRAVEL</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>788/CHINA TOWER CO-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>836/CHINA RES POWER</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>853/MICROPORT SCIENT</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>902/HUANENG POWER-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>914/CONCH CEMENT-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>916/CHINA LONGYUAN-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>998/CITIC BANK-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1024/KUAISHOU TECHNOL</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1066/SHANDONG WEIG-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1099/SINOPHARM-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1138/COSCO SHIP ENG-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1171/YANKUANG ENRGY-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1193/CHINA RES GAS</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1209/CHINA RESOURCES</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1268/CHINA MEIDONG AU</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>40%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1288/ABC-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1308/SITC</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1313/CHINA RES CEMENT</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>40%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1336/NEW CHINA LIFE-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1339/PICC GROUP-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1347/HUA HONG SEMI</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1368/XTEP INTL</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1385/SHANGHAI FUDAN-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1548/GENSCRIPT BIOTEC</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1579/YIHAI INTERNATIO</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1585/YADEA GROUP HOLD</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1658/POSTAL SAVINGS-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1772/GANFENG LITHIU-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1776/GF SECURITIES-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>50%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1799/XINTE ENERGY C-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1800/CHINA COM CONS-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>50%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1801/INNOVENT BIOLOGI</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1816/CGN POWER-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>50%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1818/ZHAOJIN MINING-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1821/ESR GROUP LTD</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1877/SHANGHAI JUNSH-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1898/CHINA COAL ENE-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1910/SAMSONITE INTL</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1919/COSCO SHIP HOL-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1988/CHINA MINSHENG-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>50%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>1999/MAN WAH HOLDINGS</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>40%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>2196/FOSUN PHARMA-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>2208/XINJIANG GOLD-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>40%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>2238/GUANGZHOU AUTO-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>2328/PICC P&amp;C-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>2333/GREAT WALL MOT-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>2338/WEICHAI POWER-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>2359/WUAPPTEC CO LT-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>2380/CHINA POWER INTE</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>2600/ALUMINUM CORP-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>2601/CHINA PACIFIC-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>2618/JD LOGISTICS INC</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>2800/TRACKER FUND-HKD</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>2828/HS CH ENT IN-HKD</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>2883/CHINA OILFIELD-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>2888/STANDARD CHARTER</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>50%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>2899/ZIJIN MINING-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>3311/CHINA STATE CONS</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>3320/CHINA RESOURCES</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>3323/CHINA NATL BDG-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>3328/BANKCOMM-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>3347/HANGZHOU TIGER-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>3606/FUYAO GLASS IN-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>3759/PHARMARON BEIJ-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>3800/GCL TECHNOLOGY H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>3888/KINGSOFT CORP</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>3898/CRRC TIMES ELEC</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>3908/CHINA INTERNAT-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>3993/CMOC-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>3998/BOSIDENG INTL</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>6030/CITIC SEC-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>6060/ZHONGAN ONLINE-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>6078/HYGEIA HEALTHCAR</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>6110/TOPSPORTS INTERN</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>40%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>6160/BEIGENE LTD</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>6185/CANSINO BIOLOG-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>6186/CHINA FEIHE LTD</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>6618/JD HEALTH INTERN</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>6690/HAIER SMART H-H</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>6823/HKT-SS</p>
</td>
<td valign="top"><p>60%</p>
</td>
<td valign="top"><p>55%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>6865/FLAT GLASS GRO-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>9626/BILIBILI INC-Z</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>9698/GDS HOLDING-CL A</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>40%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>9922/JIUMAOJIU INTERN</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>9987/YUM CHINA HOLDIN</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>9992/POP MART INTERNA</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr><tr><td valign="top"><p>Adjust</p>
</td>
<td valign="top"><p>9995/REMEGEN CO LTD-H</p>
</td>
<td valign="top"><p>50%</p>
</td>
<td valign="top"><p>45%</p>
</td>
</tr></tbody></table>
<p>Please note that the above examination may involve the adjustment of loanable shares, and/or loan ratios, and it may affect the total facility/loan limit of your “Wealth Portfolio Financing” Overdraft Facility and/or General Banking Facilities (secured by shares).&nbsp; You may be, amongst others, demanded to make additional payment to settle the excess facility/loan amount within a very short period when the actual outstanding facility/loan of your “Wealth Portfolio Financing” Overdraft Facility and/or General Banking Facilities (secured by shares) exceeds the total facility/loan limit at any relevant time. If the additional payments are not made within the Bank’s prescribed period, any or all of the charged securities in your “Wealth Portfolio Financing” Overdraft Facility and/or General Banking Facilities (secured by shares) will be sold without prior notice.<br>
<br>
For further information, please visit the Bank’s website (www.bochk.com) from the Effective Date, or visit any of our branches or call (852) 3988 2388.<br>
<br>
For the avoidance of doubt, the terms and conditions of the relevant facilities/ loans apply and nothing shall prejudice our rights under those terms and conditions.</p>
<p>&nbsp;</p>
							</div>
							<div class="its_news_line" id = "line_14"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_15" style="display: block;" onclick="DisplayNewsContent_onclick('subheader_15','content_15','images_up_15','images_down_15')">
								<div class="its_news_title" id="title_15">Notice of Precious Metal Margin Contracts being Marked to Market</div>
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
								Please be advised that on 30 December 2022, all open margin contracts for Tael Gold (99G) and Kilo Gold (KLG) will be marked to market at the “Settlement Price” as determined by the Chinese Gold and Silver Exchange Society in the afternoon of 30 December 2022. Any gain or loss as a result, together with premium and custodian fee, will be credited to or debited from your Precious Metal/FX Margin Trading Account. For enquiries, please call our Investment Services Hotline at (852) 3988 2688.
							</div>
							<div class="its_news_line" id = "line_15"  style="display: block;"></div>
						
							<div class="its_news_subheader" id = "subheader_16" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_16','content_16','images_up_16','images_down_16')">
								<div class="its_news_title" id="title_16">Hong Kong Police Force’s Anti-Scam Education Campaign “Emotional Disturbances Faced by Scam Victims”</div>
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
								The Anti-Deception Coordination Centre (ADCC) of the Hong Kong Police Force has launched a new anti-scam publicity campaign called “Emotional Disturbances Faced by Scam Victims”, with a view to taking the public through the psychological skills as well as other defrauding tricks used by fraudsters in telephone deception, romance scam, investment fraud and employment fraud, in order to prevent the public from falling into these scams.<br>
<br>
Please refer to the following website for the anti-scam information and education videos from the ADCC:-<br>
https://www.adcc.gov.hk/en-hk/emotional-tolls.html.
							</div>
							<div class="its_news_line" id = "line_16"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_17" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_17','content_17','images_up_17','images_down_17')">
								<div class="its_news_title" id="title_17">To Raise Awareness against Phishing Risks: Protect your Personal Digital Keys; Beware of Fraudulent Links!</div>
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
1. Internet Banking login credentials, including Internet Banking number, usernames, login passwords and one-time passwords (OTPs), are as important in the digital world as your physical keys for home, which should be properly safeguarded.<br>
<br>
2. BOCHK will not send SMS or email messages with embedded hyperlinks, QR codes or attachments directing customers to the Bank’s website or mobile applications to carry out transactions. Nor will the Bank ask you to provide any sensitive personal information, including login passwords and OTPs, via hyperlinks, or contact you via telephone voice messages.<br>
<br>
3. If you receive any suspicious SMS or email messages with embedded hyperlinks purportedly to be from BOCHK requesting you to input any personal information, you should be vigilant and think twice. In case of doubt, please contact BOCHK Customer Service Hotline at (852) 3988 2388.<br>
<br>
4. Do not download any mobile applications from unreliable sources. You should download BOCHK Mobile Banking and BoC Pay mobile application from official application stores or BOCHK official website.<br>
<br>
<br>
Please refer to the following hyperlinks for Hong Kong Monetary Authority anti-deception information:<br>
<br>
https://www.youtube.com/watch?v=qnj4HSGG0Vs (30-second version)<br>
<br>
https://www.youtube.com/watch?v=EH3i6u6fD8g (Full version)
							</div>
							<div class="its_news_line" id = "line_17"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_18" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_18','content_18','images_up_18','images_down_18')">
								<div class="its_news_title" id="title_18">Important Notes on Bogus Phone Calls and Phone Messages</div>
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
								Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the general public to bogus phone calls or phone messages purported to be from BOCHK. These calls and messages have the intention of stealing customers’ personal information or swindling customers out of money.<br>
<br>
Recently, some customers have received bogus phone calls or phone messages from fraudsters impersonating the Bank’s staff by providing forged BOCHK’s name cards as proof. &nbsp;Fraudsters falsely claim that they can offer special offers for personal loan, mortgage, credit card applications, etc., and trick customers into providing sensitive personal information such as Hong Kong Identification Card (HKID) number and bank account details for the applications. Fraudsters may ask customers to input personal information in unknown mobile applications / fraudulent websites, or to transfer funds into designated accounts as security deposits.<br>
<br>
BOCHK reiterates that it would not ask for sensitive personal information such as bank account details, Internet Banking usernames, login passwords, one-time passwords or credit card numbers through phone calls, emails, SMS messages, hyperlinks, QR codes or attachments, etc. &nbsp;Please stay vigilant and contact the Bank immediately for verification if you receive any suspicious calls, emails and SMS messages.<br>
<br>
The Bank reminds customers to be vigilant against possible scams:<br>
<br>
• Please carefully protect your personal information. &nbsp;Do not disclose your personal information and passwords, including the SMS one-time password;<br>
• Do not download/install unknown mobile applications, or input any information into unknown mobile applications or websites;<br>
•&nbsp;If you receive a suspicious call purporting to be the Bank’s staff, please stay calm and end the conversation immediately. &nbsp;Please call the Bank’s Customer Service Hotline at (852) 3988 2388 (press 8 after language selection) directly for verification of the caller’s identity;<br>
•&nbsp;If you have provided your information to the caller, you should immediately call the Bank’s Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection), and report the call to the Police. &nbsp;If you have disclosed your password, please change it immediately.<br>
<br>
BOCHK will update the fraud alerts on the Bank’s website from time to time. &nbsp;For details, please visit www.bochk.com/en/aboutus/fraudalert.html. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.<br>
							</div>
							<div class="its_news_line" id = "line_18"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_19" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_19','content_19','images_up_19','images_down_19')">
								<div class="its_news_title" id="title_19">Beware of Internet Investment Fraud</div>
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
Bank of China (Hong Kong) (“BOCHK” or “the Bank”) would like to remind customers to stay vigilant to Internet Investment Fraud.<br>
<br>
Fraudsters recently publish certain fake investment online advertisements or financial news carrying photos of high-ranking officials and celebrities, lure the public to click on the advertisements and direct them to suspicious transaction platforms.<br>
<br>
The Bank reminds customers to be vigilant against possible scams:<br>
• When customers see financial news, reports or advertisements on celebrities making successful investment, verify their authenticity. Do not click on the reports, advertisements or embedded hyperlinks;<br>
• Please carefully protect your personal information. Do not disclose your personal information and passwords, including e-banking account information, credit card details or SMS one-time passwords;<br>
• Do not open email, attachments or click on the hyperlink from unknown sources. In case of doubt, please stop the operation and do not input any data. Please close the window and contact the Bank immediately;<br>
• Do not input any information into unknown mobile applications or websites;<br>
• Check for spelling mistakes, invalid hyperlinks or faulty grammar which are typical for fake investment websites;<br>
• If the company claiming to be an “investment company” collects investment capital through personal bank account or e-wallet, please stay alert against possible scams;<br>
• If customers have logged in to the aforesaid fraudulent websites and provided personal information, please immediately contact the Bank’s Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection), and contact the Police. If customers have provided any password, please change the password immediately.<br>
<br>
Please refer to the following websites for Police anti-deception information:</p>
<p>https://www.adcc.gov.hk/en-hk/anti-deception-month-detail-05.html</p>
<p>https://www.adcc.gov.hk/en-hk/alerts-detail/alerts-1541618242942144513.html</p>
<p>https://cyberdefender.hk/en-us/investment_fraud/</p>
							</div>
							<div class="its_news_line" id = "line_19"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_20" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_20','content_20','images_up_20','images_down_20')">
								<div class="its_news_title" id="title_20">Don't be tempted by quick money. Don't sell your account.</div>
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
BOCHK would like to remind customers to stay vigilant to protect their own interests.<br>
<br>
Through telemarketing or social media platforms, criminal syndicates would offer the benefit of making quick money and lure customers into selling or lending their bank accounts, or use customers’ personal credentials to open bank accounts. The syndicate will then use these ‘stooge accounts’ to collect and launder fraudulent payments or other crime proceeds.<br>
<br>
BOCHK urges customers not to sell or lend their accounts to others as these may be abused for unlawful purposes and you may expose yourself to the risk of committing money laundering offences of which the maximum penalty is imprisonment for 14 years and a fine of HK$5 million.<br>
<br>
Please refer to relevant webpage of the Hong Kong Monetary Authority for more details: https://www.hkma.gov.hk/eng/smart-consumers/dont-lend-sell-your-account/
							</div>
							<div class="its_news_line" id = "line_20"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_21" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_21','content_21','images_up_21','images_down_21')">
								<div class="its_news_title" id="title_21">Notice on Currency Linked Investments eStatement and eAdvice Service</div>
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
								To provide a better online investment service, starting from 24 July, 2022, Bank of China (Hong Kong) Limited (the “Bank”) will provide a new electronic monthly statement and electronic advice service for currency linked investments. The Bank’s personal customers may register eStatement and eAdvice (“e-Statement Service”) for the investment products via the Bank’s mobile banking or internet banking. After registering the e-Statement Service successfully, customers may check or download the investment product’s statement or advice via the Bank’s mobile banking or internet banking. Also, The Bank will notify customers by email that the new statements or advices has been uploaded to the Bank's mobile banking and internet banking.<br>
<br>
The statements and advices of currency linked investments will automatically switch to electronic versions and will not be sent by post if customer has successfully registered the investment product’s e-Statement Service on or after 21 November, 2021. Customers may unsubscribe the e-Statement Service via the Bank’s mobile banking or internet banking and register the physical form of investments product’s statements and advices.<br>
<br>
The above products and services are subject to the terms and conditions.<br>
<br>
For enquiries, please contact us via Online Chat or call our Customer Service Hotline (852) 3988 2388 / Private Banking Customer Service Hotline (852) 3982 6988.
							</div>
							<div class="its_news_line" id = "line_21"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_22" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_22','content_22','images_up_22','images_down_22')">
								<div class="its_news_title" id="title_22">Important Notes on fraud risk of passwords and cheques have been lost or stolen</div>
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
								Bank of China (Hong Kong) (“BOCHK” or “the Bank”) would like to alert its customers to aware the fraud risk of passwords and cheques have been lost or stolen.<br>
<br>
The Bank reminds customers to take below reasonable steps and measures to keep your passwords and cheques secure and secret in order to prevent fraud:<br>
• destroy the original printed copy of the passwords.<br>
<br>
• do not allow anyone else to use your passwords.<br>
<br>
• do not write down or record the passwords without disguising it, especially do not keep the passwords with other bank documents.<br>
<br>
• regularly change passwords, avoid using birthdays or phone numbers as passwords.<br>
<br>
• do not reuse the same password for login or authentication upon different accounts and/or online platforms.<br>
<br>
• keep your cheque books secure and in the drawer or locker under lock. The key should not be kept in place where others can be obtained.<br>
<br>
• report the loss of any signed cheques, blank cheques or cheque books as soon as possible, so that the cheques may be stopped before it has been presented for payment.<br>
<br>
• cheques should not be pre-signed in blank.<br>
<br>
• customers may also be held liable for all losses if they have acted with gross negligence, this may include cases where:<br>
- customers knowingly allow the use by others of their passwords or cheque books;<br>
- reasonable steps and measures have not been taken to keep the passwords or cheque books secure;<br>
- customers knowingly allow the use by third-party mobile applications of their passwords, or entering their passwords in third-party mobile applications, resulting in the lost or stolen of their passwords;<br>
- customers did not inform the bank as soon as reasonably practicable after they find or believe that their passwords or cheque books have been lost or stolen, or that unauthorized transactions have been conducted over their accounts.<br>
<br>
• If customers’ bank account information, including passwords and cheques, was lost or suspected to be stolen, please contact Customer Service Hotline at 3988 2388 and change the passwords immediately.<br>
<br>
BOCHK will update the fraud alerts on the Bank’s website from time to time. For details, please visit<br>
www.bochk.com/en/aboutus/fraudalert.html. For more security information about BOCHK’s electronic banking services, please visit<br>
www.bochk.com/en/security.html. For more security information about BOC Card, please visit www.bochk.com/en/more/ boccard/card_security.html.
							</div>
							<div class="its_news_line" id = "line_22"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_23" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_23','content_23','images_up_23','images_down_23')">
								<div class="its_news_title" id="title_23">Courtesy Reminder to BOCHK Customers :  Beware of Consumption Vouchers related Scams</div>
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
								BoC Pay has been selected by the HKSAR Government as one of the designated stored value facility operators for Phase II of the new round of Consumption Voucher Scheme (“the Scheme”).&nbsp; Bank of China (Hong Kong) (“BOCHK”)&nbsp;would like to sincerely remind customers and members of the public to beware of consumption vouchers related scams.<br>
<b><u><br>
 </u>Fraud Prevention Advice related to Consumption Vouchers<u><br>
 <br>
 </u></b>•&nbsp;Please stay alert when you register for Consumption Voucher Account.&nbsp; You should carefully verify your registration details including the Specific Identifier for registration to ensure that consumption vouchers will be disbursed to the account designated by you correctly;<br>
<br>
•&nbsp;Do not disclose to strangers your personal information, including your names, HKID card numbers, bank account numbers, online and mobile banking accounts and PIN codes, and BoC Pay password;<br>
<br>
•&nbsp;If you discover fraudulent use of your identity for registration, please call BOCHK hotline (telephone number: (852) 3988 1822) and notify the Consumption Voucher Scheme Secretariat by calling the Scheme hotline (telephone number: (852) 185000);<br>
<br>
•&nbsp;Please check your BoC Pay transaction records made by consumption vouchers, and keep the&nbsp;relevant purchase receipts issued by the merchants.&nbsp; Should there be any subsequent trade dispute, receipts would assist in the negotiation with the merchants;<br>
<br>
•&nbsp;Please note that consumption vouchers must be used at local retail, catering and service outlets, including retail stores and their online platforms; For more information about the consumption vouchers scheme, please visit www.consumptionvoucher.gov.hk;<br>
<br>
•&nbsp;Please be reminded that merchants should not collect any additional fee or set a minimum charge from customers who pay with consumption vouchers, and that consumption vouchers cannot be used for encashment.<br>
<b><u><br>
 </u>Other Fraud Prevention Advice<u><br>
 <br>
 </u></b>BOCHK reiterates that it would not ask for sensitive personal information such as bank account details, Internet Banking usernames, login passwords, one-time passwords or credit card numbers through phone calls, hyperlinks, QR codes or attachments embedded in emails or SMS messages. &nbsp;Please be vigilant against possible scams:<br>
<br>
•&nbsp;Carefully protect your personal information. &nbsp;Do not disclose your personal information and passwords, including the SMS one-time passwords;<br>
<br>
•&nbsp;Do not open email, attachment or click on the hyperlink from unknown sources. &nbsp;Do not download/install unknown mobile application, or input any information into unknown mobile application or website.&nbsp; In case of doubt, stop the operation and do not input any data; close the window / application and contact the Bank immediately;<br>
<br>
•&nbsp;If you have received any email or SMS message on suspicious binding or use of Mobile Payment Services or e-banking, please contact the Police and the Bank immediately;<br>
<br>
•&nbsp;If you receive suspicious call purporting to be the Bank’s staff, please stay calm and end the conversation immediately. Please call the Bank’s Customer Service Hotline at (852) 3988 2388 (press 8 after language selection) directly for verification of the caller’s identity;<br>
<br>
•&nbsp;If you have logged into fraudulent websites and provided personal information, or have provided personal information to suspicious caller, please call the Bank’s Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection) immediately, and report to the Police. If you have disclosed any password, please change it immediately.<br>
<br>
BOCHK will update the fraud alerts on the Bank’s website from time to time. &nbsp;For details, please visit www.bochk.com/en/aboutus/fraudalert.html. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.
							</div>
							<div class="its_news_line" id = "line_23"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_24" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_24','content_24','images_up_24','images_down_24')">
								<div class="its_news_title" id="title_24">Important notice of implementation of the investor identification regime and over-the-counter securities transaction reporting regime in Hong Kong</div>
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
								Thank you for using the securities services of Bank of China (Hong Kong) Limited (“the Bank”).<br>
<br>
Please be informed that Securities and Futures Commission (“SFC”) will launch and implement the investor identification regime (“HKIDR”) and the over the-counter securities transaction reporting regime (“OTCR”) in the second half of 2022 and in the first half of 2023 respectively (collectively, “the reporting regime”) ^.<br>
<br>
Under the reporting regime, the Bank and its related brokers (“the Brokers”) will assign a unique Broker-Client Assigned Number (“BCAN”) to each client so as to enable to provide to the Stock Exchange of Hong Kong (“SEHK”) together with their Client Identification Data (“CID”), including client’s Full Name, ID Issuing Country/Region or Jurisdiction, ID Type &amp; ID Number shown in the identification document for processing their securities orders. The Bank and the Brokers will submit client’s BCAN with their securities order or share withdraw/deposit instruction to the SEHK and/or SFC for reporting.<br>
<br>
For individual clients, sole proprietorship and partnership (collectively, “the relevant clients”), as the abovementioned procedures involve the collection, storage, processing, usage, disclosure and transfer of personal data relating to the relevant clients, the Bank should obtain relevant clients’ written consents in relation to this matter. If the relevant clients have not provided this consent, they will not be allowed to buy, transfers of shares or deposits of physical certificates into the accounts but will only be allowed to sell, transfer out or withdraw their existing holdings of securities, if any, until they do so.<br>
<br>
According to the rules and requirements of SEHK and the SFC, clients should know and understand the list of priority of the identity documents and provide an identity document required under the list (if not already provided) or updated identity document information, as appropriate, for complying with the requirements of HKIDR and OTCR. CID of clients should be collected from the identity document which is first mentioned in the list below save that where the clients do not hold such document, the next mentioned document should be used and so forth:<br>
<br>
(i) For an individual client’s order of priority: (1) HKID card; (2) national identification document; (3) passport); (Note: Exit-entry Permit for Travelling to and from Hong Kong and Macao, Permit for Proceeding to Hong Kong and Macao and HKSAR Document of Identity for Visa Purposes are not accepted)<br>
(ii) For a corporate client’s order of priority: (1) legal entity identifier “LEI” registration document; (2) certificate of incorporation; (3) business registration certificate; (4) other equivalent documents;<br>
(iii) For a client that is a trust: the trustee’s information as in (i) or (ii) (as the case may be). However in the case of a trust which is an investment fund, CID of the asset management company or the individual fund, as appropriate, which has opened a trading account with the relevant licensed or registered person should be obtained.<br>
<br>
Clients should confirm that all information (including CID) given to the Bank and/or the Brokers for the purpose of their accounts and every transaction is valid, true, complete, accurate and up-to-date. Clients should promptly notify the Bank of any material change to their CID or other information, and/or higher priority change of their identity document.<br>
<br>
From 29 May onwards, for qualified single-name or joint-name clients# who had registered for the Bank’s Mobile Banking or Internet Banking Service, please log into Mobile Banking or Internet Banking to read the “Personal Information/Other Client Information Collection Statement concerning investor identification regime at trading level for the securities market in Hong Kong” (“Collection Statement”) carefully and provide consent to the Bank as soon as possible. Alternatively, relevant clients can visit any branches of the Bank for arrangement. Relevant clients may send written notice to the Bank at any time thereafter if they wish to withdraw the consent.<br>
<br>
For relevant clients, if the Bank does not receive the relevant clients’ consent prior to the implementation date of the reporting regime, then the Bank can only accept sell orders or shares withdrawal instructions from such clients.<br>
<br>
For enquiries, please contact us at 3988 2388.<br>
<br>
Remarks:<br>
^ The exact launch dates are to be announced by the SFC. For details, please refer to SFC website.<br>
# This Consent Form is applicable to all securities accounts under the name of the relevant clients (including but not limited to joint accounts). For joint accounts, all the relevant clients in a joint relationship have to provide their own consents in order to effect buy orders or trades, or transfers of shares or deposits of physical certificates into the accounts. For sole proprietorship and partnership, consent forms must be submitted separately from personal accounts.<br>
- The consent shall take effect within 2 trading days after the relevant clients’ consent has been properly received by the Bank.<br>
- Should there be any inconsistency between the English and Chinese versions, the Chinese version shall prevail.
							</div>
							<div class="its_news_line" id = "line_24"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_25" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_25','content_25','images_up_25','images_down_25')">
								<div class="its_news_title" id="title_25">Beware of Employment Fraud</div>
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
								BOCHK would like to remind customers to stay vigilant to the employment fraud to protect their own interests.<br>
<br>
Please refer to the following website hyperlinks for Police anti-deception information and education video:<br>
<br>
https://www.adcc.gov.hk/en-hk/alerts-detail/alerts-1509000900093759490.html<br>
https://www.adcc.gov.hk/en-hk/alerts-detail/alerts-1504047794545315842.html<br>
https://www.adcc.gov.hk/en-hk/video-detail/video-1490531498432221185.html
							</div>
							<div class="its_news_line" id = "line_25"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_26" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_26','content_26','images_up_26','images_down_26')">
								<div class="its_news_title" id="title_26">Notice on the Update of “Instruction - Precious Metal/FX Margin” </div>
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
								Thank you for your continuous support to Bank of China (Hong Kong) Limited (the &quot;Bank&quot;). Please be informed that the《Instruction - Precious Metal/FX Margin》will be updated from 21 June 2022 as follows:<br>
<br>
Section<br>
Service Hours for Precious Metal/FX Margin Trading via Internet Banking<br>
<br>
Updates<br>
• The heading of the section will be updated from &quot;Service Hours for Precious Metal/FX Margin Trading via Internet Banking&quot; to &quot;Service Hours for Precious Metal/FX Margin Trading via Internet/Mobile Banking&quot;<br>
<br>
• Point 5 of “Notes” will be deleted. <br>
<br>
Notes:<br>
5. Margin transfer that involves foreign exchange and margin exchange services are not available on Saturdays which a Black Rainstorm Warning Signal or Typhoon Signal No. 8 is hoisted. However, such services will still be available if the Black Rainstorm Warning Signal is issued at or after 08:30 (subject to further notice in special cases).<br>
<br>
* You may login our internet banking to download the《Instruction - Precious Metal/FX Margin》from the section &quot;Product Details&quot; under the heading of &quot;Precious Metal/ FX Margin&quot;<br>
<br>
Please call our Customer Service Hotline (852) 3669 3668 should you have any question.
							</div>
							<div class="its_news_line" id = "line_26"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_27" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_27','content_27','images_up_27','images_down_27')">
								<div class="its_news_title" id="title_27">Notice on investment products and services e-Statement/e-Advice service</div>
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
								To provide a better online investment service, starting from 3 Jun, 2022, designated clients (who opened online banking accounts with the Bank on or before 8 April, 2022, receive physical copies of investment products and services advices, and have provided the Bank with valid email addresses or mobile phone numbers) who visit the &quot;Investment&quot; &gt; &quot;Trading or Related&quot; page of Internet Banking or the &quot;Investment&quot; &gt; &quot;Trading or Related&quot; page of mobile banking for the first time shall be deemed to have agreed to receive the investment products and services e-statement/e-advice instead of the physical copies by mail (“Access Service”). After the customers log in to the above page, the Bank will send an email or SMS text message to the customers to confirm and notify the customers of the effective date of the Access Service, and to state the method of withdrawing the consent of the Access Service.<br>
<br>
The above products and services are subject to terms and conditions.<br>
<br>
For enquiries, please contact us via Online Chat or call our Customer Service Hotline: (852) 3988 2388 / Private Banking Customer Service Hotline: (852) 3982 6988.
							</div>
							<div class="its_news_line" id = "line_27"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_28" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_28','content_28','images_up_28','images_down_28')">
								<div class="its_news_title" id="title_28">Notice of Adjustments of the Eligible Loanable Share(s)</div>
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
								<p>Thank you for choosing “Wealth Portfolio Financing” Overdraft Facility / General Banking Facilities (secured by shares) Service (the “Services”) of Bank of China (Hong Kong) Limited (the “Bank”)<br>
<br>
In order to comply with the regulatory requirement, the Bank will make the following adjustments in respect of the eligible loanable securities for the Services, which will become effective from and on 14 April 2022 (the “Effective Date”):<br>
</p>
<table border="1" cellspacing="0" cellpadding="0">
<tbody><tr><td width="204" rowspan="2" valign="top"><br>
Share Code/<br>
<br>
Share Name<br>
</td>
<td width="361" colspan="2" valign="top"><br>
Loan Ratios<br>
</td>
</tr><tr><td width="185" valign="top"><br>
Securities deposited in the charged securities account or being charged to the Bank before the Effective Date<br>
</td>
<td width="176" valign="top"><br>
Securities deposited in the charged securities account (whether they are newly purchased or transferred into the said account) on or after the Effective Date<br>
</td>
</tr><tr><td width="234" valign="top"><br>
3988/<br>
Bank of China Limited<br>
</td>
<td width="170" valign="top"><br>
60% (Unchanged)<br>
</td>
<td width="161" valign="top"><br>
0%<br>
</td>
</tr></tbody></table>
<p><br>
In light of the aforesaid change, any securities holdings of 3988/Bank of China Limited deposited in the charged securities account (whether they are newly purchased or transferred into the said account) on or after the Effective Date are not being charged to the Bank. The securities holdings of 3988/Bank of China Limited deposited in the charged securities account or being charged to the Bank before the Effective Date shall remain charged to the Bank.<br>
<br>
Please note that the above adjustments may involve the adjustment of loanable shares, and/or loan ratios, and it may affect the total facility/loan limit of your “Wealth Portfolio Financing” Overdraft Facility and/or General Banking Facilities (secured by shares). You may be, amongst others, demanded to make additional payment to settle the excess facility/loan amount within a very short period when the actual outstanding facility/loan of your “Wealth Portfolio Financing” Overdraft Facility and/or General Banking Facilities (secured by shares) exceeds the total facility/loan limit at any relevant time. If the additional payments are not made within the Bank’s prescribed period, any or all of the charged securities in your “Wealth Portfolio Financing” Overdraft Facility and/or General Banking Facilities (secured by shares) will be sold without prior notice.<br>
<br>
For the avoidance of doubt, the terms and conditions of the relevant facilities/ loans apply and nothing shall prejudice the Bank’s rights under those terms and conditions. The Bank reserves the right to amend the loanable securities list and the loan ratios without prior notice.<br>
<br>
Please visit the Bank’s official website for the latest eligible list of securities for the Services and the loan ratios.<br>
<br>
Should you have any enquiry, please visit any of our branches or call our customer services hotline (852) 3988 2388.</p>
							</div>
							<div class="its_news_line" id = "line_28"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_29" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_29','content_29','images_up_29','images_down_29')">
								<div class="its_news_title" id="title_29">Beware of Prevalent Types of Frauds</div>
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
								BOCHK would like to remind customers to stay vigilant to the recent fraud types to protect their own interests.<br>
<br>
Please refer to the following website for Police anti-deception information and education videos:-<br>
<br>
https://www.adcc.gov.hk/en-hk/anti-deception-month.html
							</div>
							<div class="its_news_line" id = "line_29"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_30" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_30','content_30','images_up_30','images_down_30')">
								<div class="its_news_title" id="title_30">Risk Notification</div>
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
								In view of the escalation of the situation in Russia and Ukraine, market volatility has increased significantly. You are reminded to pay close attention to your investment with related risk exposure. Investment involves risks, please contact our staff for the latest market situation. The information is for reference only.
							</div>
							<div class="its_news_line" id = "line_30"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_31" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_31','content_31','images_up_31','images_down_31')">
								<div class="its_news_title" id="title_31">Statement on phishing email</div>
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
								<p>Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the general public to a phishing email purported to be sent by BOCHK, with email address as follows:</p>
<p>privatebanking @bochk-invest.com</p>
<p>The phishing email intends to swindle customers out of money. BOCHK declares that it has no connection with this phishing email. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.</p>
<p>BOCHK advises its customers to verify any emails that claim to be sent from BOCHK. Please delete suspicious emails and attachments immediately without opening them. Customers who have received the aforesaid phishing email and made payments or provided personal information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).</p>
							</div>
							<div class="its_news_line" id = "line_31"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_32" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_32','content_32','images_up_32','images_down_32')">
								<div class="its_news_title" id="title_32">Don’t Lend/Sell Your Account</div>
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
								<b>Don’t be tempted by quick money<br>
Don’t lend your account to anyone to launder money</b><br>
<br>
BOCHK would like to remind customers to stay vigilant to protect their own interests.<br>
<br>
Through telemarketing or social media platforms, criminal syndicates would offer the benefit of making quick money and lure you into selling or lending your accounts, or use your personal credentials to open accounts. The syndicate will then use these “stooge accounts” to receive/launder fraudulent payments or other crime proceeds.<br>
<br>
BOCHK urges customers not to sell or lend their accounts to others as these may be abused for unlawful purposes and you may expose yourself to the risk of committing money laundering offences of which the maximum penalty is imprisonment for 14 years and a fine of HK$5 million.<br>
<br>
Please refer to relevant webpage of the Hong Kong Monetary Authority:<br>
https://www.hkma.gov.hk/eng/smart-consumers/dont-lend-sell-your-account/
							</div>
							<div class="its_news_line" id = "line_32"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_33" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_33','content_33','images_up_33','images_down_33')">
								<div class="its_news_title" id="title_33">Commencement of the payment of transaction levy to Financial Reporting Council (“FRC”)</div>
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
								From January 1, 2022, the FRC will commence the charge of transaction levy (except the securities transaction through China Connect Service). The FRC transaction levy is calculated at 0.00015% per side of the consideration of a securities transaction (rounded to the nearest cent). For details, please refer to the “Funding and Levies” section of the FRC website.
							</div>
							<div class="its_news_line" id = "line_33"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_34" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_34','content_34','images_up_34','images_down_34')">
								<div class="its_news_title" id="title_34">Notice on Structured Investment, Notional Precious Metals Passbook Account and The Notice of IPO Financing Repayment eAdvice Service</div>
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
								Bank of China (Hong Kong) Limited (the “Bank”) now provides a new electronic advice service for structured investment and notional precious metals passbook account. The Banks’s personal customers may register eStatement and eAdvice (“e-Statement Service”) for the investment products via the Bank’s electronic channel. After registering the e-Statement Service successfully, customers may check or download the investment product's statement or advice anywhere and anytime via the Bank’s electronic channel. Also, free-of-charge email alert and/or SMS alert are available to notify you once the statement and/or advice is uploaded to the Bank’s electronic channel.<br>
<br>
The “Notice of IPO Financing Repayment” advice also provide a new electronic advice service. This notice will automatically switch to eAdvice and will not send by post if customer has been registered securities eStatement service.<br>
<br>
The above products and services are subject to the terms and conditions.<br>
<br>
For enquiries, please contact us via Online Chat or call our Customer Service Hotline (852) 3988 2388.
							</div>
							<div class="its_news_line" id = "line_34"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_35" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_35','content_35','images_up_35','images_down_35')">
								<div class="its_news_title" id="title_35">Don’t be Tempted by Quick Money. Don’t Lend Your Bank Account to Anyone to Launder Money.</div>
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
								BOCHK would like to remind customers and the general public to stay vigilant to protect their own interests.<br>
<br>
Through telemarketing or social media platforms, criminal syndicates would offer the benefit of making quick money and lure customers into selling or lending their bank accounts, or use customers’ personal credentials to open bank accounts. The syndicate will then use these ‘stooge accounts’ to collect and launder fraudulent payments or other crime proceeds.<br>
<br>
BOCHK urges customers not to sell or lend their bank accounts/ personal credentials to third parties as these could be used for unlawful purposes. Otherwise, you may expose yourself to the risk of committing the offence of money laundering, and could face a maximum penalty of a HK$ 5 million fine and 14 years’ imprisonment upon conviction.
							</div>
							<div class="its_news_line" id = "line_35"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_36" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_36','content_36','images_up_36','images_down_36')">
								<div class="its_news_title" id="title_36">Statement on phishing WhatsApp messages and WhatsApp calls</div>
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
								Bank of China (Hong Kong) Limited (“BOCHK”) would like to alert its customers and the general public to fraudulent WhatsApp messages and WhatApp calls purporting to be from BOCHK or BOC Credit Card. These messages and calls aimed to steal personal information from customers.<br>
<br>
These fraudulent messages and calls claimed to come from BOCHK or BOC Credit Card Centre staff members, asking customers to pick up a document, settle an outstanding payment of their mainland credit cards or offer feedback on certain loan service and etc., with the intention to steal customers’ personal data and bank account information. BOCHK declares that it has no connection with the aforesaid fraudulent WhatsApp messages and WhatsApp calls. Meanwhile, the cases have been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
BOCHK reiterates that it would not ask customers to provide personal data such as bank account details, Internet Banking usernames, and login passwords etc. via WhatsApp messages and WhatsApp calls, nor would the bank inform customers that their accounts are in abnormal status and ask customers to input any data in the process.<br>
<br>
When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMS messages, e-mails or on websites. BOCHK will update the fraud alerts on the bank’s website from time to time. For details, please visit www.bochk.com/en/aboutus/fraudalert.html. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.<br>
<br>
Any customers who suspect that they have been deceived should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection), and the Hong Kong Police Force.
							</div>
							<div class="its_news_line" id = "line_36"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_37" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_37','content_37','images_up_37','images_down_37')">
								<div class="its_news_title" id="title_37">Important Security Notes</div>
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
								<b>Beware of fraudsters purporting to be bank staff offering to register &quot;HKSAR Government HK$5,000 Electronic Consumption Voucher&quot; for customers to steal personal and bank account information </b><br>
<br>
Customers are reminded to be vigilant against possible scams:<br>
• Do not download mobile applications from unknown sources.<br>
• Do not open hyperlinks or attachments embedded in unknown emails or SMS messages.<br>
• Do not disclose your personal and banking information to third parties.<br>
<br>
BOCHK：<br>
• would not ask for sensitive personal information such as bank account details, Internet Banking usernames, login passwords, one-time passwords or credit card numbers through phone calls, phone voice messages, or hyperlinks, QR codes or attachments embedded in emails or SMS messages.<br>
<br>
<b>Don't share bank account<br>
 Don't share bank password</b><br>
<br>
Should you have any query, please call BOCHK’s Customer Service Hotline at (852) 3988 2388 or the Police's &quot;Anti-Scam Helpline&quot; 18222
							</div>
							<div class="its_news_line" id = "line_37"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_38" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_38','content_38','images_up_38','images_down_38')">
								<div class="its_news_title" id="title_38">Statement on phishing SMS message and fraudulent website</div>
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
								Bank of China (Hong Kong) Limited (“BOCHK”) would like to alert its customers and the general public to the following phishing SMS message and fraudulent website, which purported to be from BOCHK.<br>
<br>
https: // boc-hk-secure.com<br>
<br>
The phishing SMS message and fraudulent website intend to steal customers’ information, including Internet Banking number/username and Internet Banking password. BOCHK declares that it has no connection with the phishing SMS message and fraudulent website. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMS messages, e-mails or on websites. BOCHK will update the fraud alerts on the bank’s website from time to time. For details, please visit www.bochk.com/en/aboutus/fraudalert.html. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.<br>
<br>
Anyone who has logged into the aforesaid fraudulent website and provided their information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_38"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_39" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_39','content_39','images_up_39','images_down_39')">
								<div class="its_news_title" id="title_39">Statement on phishing SMS message and fraudulent website</div>
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
								Bank of China (Hong Kong) Limited (“BOCHK”) would like to alert its customers and the general public to the following phishing SMS message and fraudulent website, which purported to be from BOCHK.<br>
<br>
https: // secure-boc-cn.com<br>
<br>
The phishing SMS message and fraudulent website intend to steal customers’ information, including Internet Banking number/username and Internet Banking password. BOCHK declares that it has no connection with the phishing SMS message and fraudulent website. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMS messages, e-mails or on websites. BOCHK will update the fraud alerts on the bank’s website from time to time. For details, please visit www.bochk.com/en/aboutus/fraudalert.html. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.<br>
<br>
Anyone who has logged into the aforesaid fraudulent website and provided their information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_39"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_40" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_40','content_40','images_up_40','images_down_40')">
								<div class="its_news_title" id="title_40">Statement on phishing email</div>
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
								Bank of China (Hong Kong) Limited (“BOCHK”) would like to alert its customers and the general public to a phishing email purported to be sent by BOCHK. The email address is “bank.china.hongkong@ gmail.com”.<br>
<br>
BOCHK declares that it has no connection with any phishing email sent from the aforementioned email address. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force. BOCHK advises its customers to verify any email that claims to be sent from BOCHK.<br>
<br>
Please delete suspicious emails and attachments immediately without opening them. Customers who have received the aforesaid phishing email and made payments or provided personal information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_40"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_41" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_41','content_41','images_up_41','images_down_41')">
								<div class="its_news_title" id="title_41">Statement on phishing email</div>
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
								Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the general public to a phishing email purported to be sent by BOCHK Private Banking. The email domain is “bochkprivatebank. com”.<br>
<br>
BOCHK declares that it has no connection with any phishing email sent from the aforementioned email domain. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
BOCHK advises its customers to verify any emails that claim to be sent from BOCHK. Please delete suspicious emails and attachments immediately without opening them. Customers who have received the aforesaid phishing email and made payments or provided personal information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_41"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_42" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_42','content_42','images_up_42','images_down_42')">
								<div class="its_news_title" id="title_42">Statement on Phishing SMS Messages and Fraudulent Website (18 April 2021)</div>
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
								Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the general public to phishing SMS messages and fraudulent website, which purported to be from BOCHK. The fraudulent website address is as follows:<br>
<br>
https: // www .itslbochk.com<br>
<br>
In an attempt to mislead customers, the fraudulent websites will appear under different domain names or with slight modifications or variations of the official BOCHK website address www.bochk.com by adding a combination of letters, numbers or symbols. The aforesaid phishing SMS messages and fraudulent websites intend to steal customers’ data, such as Internet Banking number/username, Internet Banking password and one-time password sent via SMS. BOCHK declares that it has no connection with the aforesaid phishing SMS messages and fraudulent websites. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMS messages, e-mails or on websites. BOCHK will update the fraud alerts on the bank’s website from time to time. For details, please visit www.bochk.com/en/aboutus/fraudalert.html. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.<br>
<br>
Anyone who has logged into the aforesaid fraudulent websites and provided their information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_42"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_43" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_43','content_43','images_up_43','images_down_43')">
								<div class="its_news_title" id="title_43">Statement on Phishing SMS Messages and Fraudulent Website (17 April 2021)</div>
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
								Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the general public to phishing SMS messages and fraudulent website, which purported to be from BOCHK. The fraudulent website address is as follows:<br>
<br>
https: // www .itsabochk.com<br>
<br>
In an attempt to mislead customers, the fraudulent websites will appear under different domain names or with slight modifications or variations of the official BOCHK website address www.bochk.com by adding a combination of letters, numbers or symbols. The aforesaid phishing SMS messages and fraudulent websites intend to steal customers’ data, such as Internet Banking number/username, Internet Banking password and one-time password sent via SMS. BOCHK declares that it has no connection with the aforesaid phishing SMS messages and fraudulent websites. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMS messages, e-mails or on websites. BOCHK will update the fraud alerts on the bank’s website from time to time. For details, please visit www.bochk.com/en/aboutus/fraudalert.html. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.<br>
<br>
Anyone who has logged into the aforesaid fraudulent websites and provided their information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_43"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_44" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_44','content_44','images_up_44','images_down_44')">
								<div class="its_news_title" id="title_44">Statement on Phishing SMS Messages and Fraudulent Website (16 April 2021)</div>
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
								Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the general public to phishing SMS messages and fraudulent website, which purported to be from BOCHK. The fraudulent website address is as follows:<br>
<br>
https: // www .itsxbochk.com<br>
<br>
In an attempt to mislead customers, the fraudulent websites will appear under different domain names or with slight modifications or variations of the official BOCHK website address www.bochk.com by adding a combination of letters, numbers or symbols. The aforesaid phishing SMS messages and fraudulent websites intend to steal customers’ data, such as Internet Banking number/username, Internet Banking password and one-time password sent via SMS. BOCHK declares that it has no connection with the aforesaid phishing SMS messages and fraudulent websites. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMS messages, e-mails or on websites. BOCHK will update the fraud alerts on the bank’s website from time to time. For details, please visit www.bochk.com/en/aboutus/fraudalert.html. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.<br>
<br>
Anyone who has logged into the aforesaid fraudulent websites and provided their information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_44"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_45" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_45','content_45','images_up_45','images_down_45')">
								<div class="its_news_title" id="title_45">Statement on Phishing SMS Messages and Fraudulent Website (16 April 2021)</div>
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
								Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the general public to phishing SMS messages and fraudulent website, which purported to be from BOCHK. The fraudulent website address is as follows:<br>
<br>
https: // www .itsnbochk.com<br>
<br>
In an attempt to mislead customers, the fraudulent websites will appear under different domain names or with slight modifications or variations of the official BOCHK website address www.bochk.com by adding a combination of letters, numbers or symbols. The aforesaid phishing SMS messages and fraudulent websites intend to steal customers’ data, such as Internet Banking number/username, Internet Banking password and one-time password sent via SMS. BOCHK declares that it has no connection with the aforesaid phishing SMS messages and fraudulent websites. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMS messages, e-mails or on websites. BOCHK will update the fraud alerts on the bank’s website from time to time. For details, please visit www.bochk.com/en/aboutus/fraudalert.html. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.<br>
<br>
Anyone who has logged into the aforesaid fraudulent websites and provided their information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_45"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_46" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_46','content_46','images_up_46','images_down_46')">
								<div class="its_news_title" id="title_46">Statement on Phishing SMS Messages and Fraudulent Websites</div>
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
								Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the general public to the following phishing SMS messages (please refer to the screenshots on the next page) and fraudulent websites, which purported to be from BOCHK.<br>
<br>
https://www.itssbochk.com<br>
<br>
https://www.itsobochk.com<br>
<br>
In an attempt to mislead customers, the fraudulent websites will appear under different domain names or with slight modifications or variations of the official BOCHK website address www.bochk.com by adding a combination of letters, numbers or symbols. The aforesaid phishing SMS messages and fraudulent websites intend to steal customers’ data, such as Internet Banking number/username, Internet Banking password and one-time password sent via SMS. BOCHK declares that it has no connection with the aforesaid phishing SMS messages and fraudulent websites. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMS messages, e-mails or on websites. BOCHK will update the fraud alerts on the bank’s website from time to time. For details, please visit http://www.bochk.com/en/aboutus/fraudalert.html. For more security information about BOCHK’s electronic banking services, please visit http://www.bochk.com/en/security.html.<br>
<br>
Anyone who has logged into the aforesaid fraudulent websites and provided their information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_46"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_47" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_47','content_47','images_up_47','images_down_47')">
								<div class="its_news_title" id="title_47">Statement on fraudulent website</div>
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
								<p>Bank of China (Hong Kong) Limited (“BOCHK”) would like to alert its customers and the general public to the following fraudulent website.</p>
<p>http: // <a href="http://www.bankofchina100.com">www.bankofchina100.com</a></p>
<p>The website claims itself “BOCHK Overseas Consulting”providing a series of services, such as bank account opening and company registration in Hong Kong and Singapore, auditing, overseas trademark registration and immigration, etc.</p>
<p>BOCHK hereby declares and clarifies that it has no connection with the aforesaid fraudulent website nor “BOCHK Overseas Consulting”. BOCHK has reported this to the Hong Kong Monetary Authority and the Hong Kong Police Force. Customers who suspect that they may have become victims of any fraudulent acts should immediately contact BOCHK at its customer hotline (852) 3988 2388 (press 3, # and 2 after language selection) and report the case to the Hong Kong Police Force.</p>
							</div>
							<div class="its_news_line" id = "line_47"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_48" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_48','content_48','images_up_48','images_down_48')">
								<div class="its_news_title" id="title_48">Statement on fraudulent website</div>
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
								<p>Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the general public to the following fraudulent website, which purported to be from BOCHK.</p>
<p>http: // www.hkxxwo.com / static / bb / index.html</p>
<p>The aforesaid fraudulent website intends to steal customers’ data, such as Internet Banking number/username, Internet Banking password, name, HKID card number, mobile phone number and verification code. BOCHK declares that it has no connection with the aforesaid fraudulent website. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.</p>
<p>In an attempt to mislead customers, fraudulent websites will appear under different domain names or with slight modifications or variations of the official BOCHK website address www.bochk.com by adding a combination of letters, numbers or symbols. When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMS messages, e-mails or on websites.</p>
<p>BOCHK will update the fraud alerts on the bank’s website from time to time. For details, please visit www.bochk.com/en/aboutus/fraudalert.html. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.</p>
<p>Anyone who has logged into the aforesaid fraudulent website and provided their information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).</p>
							</div>
							<div class="its_news_line" id = "line_48"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_49" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_49','content_49','images_up_49','images_down_49')">
								<div class="its_news_title" id="title_49">Statement on Fraudulent Websites (5 March 2021)</div>
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
								Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the general public to the following fraudulent websites, which purported to be from BOCHK.<br>
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
In an attempt to mislead customers, the fraudulent websites will appear under different domain names or with slight modifications or variations of the official BOCHK website address www.bochk.com by adding a combination of letters, numbers or symbols. The aforesaid fraudulent websites intend to steal customers’ data, such as Internet Banking number/username, Internet Banking password and one-time password sent via SMS. BOCHK declares that it has no connection with the aforesaid fraudulent websites. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMS messages, e-mails or on websites. BOCHK will update the fraud alerts on the bank’s website from time to time. For details, please visit www.bochk.com/en/aboutus/fraudalert.html. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.<br>
<br>
Anyone who has logged into the aforesaid fraudulent websites and provided their information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_49"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_50" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_50','content_50','images_up_50','images_down_50')">
								<div class="its_news_title" id="title_50">Important Notes on Prevention of Phishing SMS Messages and Websites</div>
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
								Fraudsters recently sent out phishing SMS messages embedded with fraudulent website hyperlinks that purported to be from Bank of China (Hong Kong) (“the Bank”). Those phishing SMS messages falsely claimed that customer’s account settings were abnormal or customer’s verifications were unsuccessful etc, and requested customer to click on the embedded hyperlinks in the SMS messages and enter personal information, such as Internet Banking number/username, Internet Banking password and one-time password sent via SMS on the fraudulent websites for verification or application of three-factor authentication. The Bank has reported the case to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
In an attempt to mislead customer, the hyperlinks of these fake SMS messages and fraudulent websites will appear under different domain names or with slight modifications or variations of the official website address of the Bank www.bochk.com by adding a combination of letters, numbers or symbols to steal your information.<br>
<br>
<b>Some common signs of phishing SMS messages are listed below:</b><br>
<br>
• The name of the sender or number shown in phishing SMS messages may be almost the same as the Bank’s name.<br>
• It usually appears as an important notification from the Bank or request for personal information to verify your account details, such as notification for a huge amount of fund transfer or notification for a new security function activation, that you are required to click the hyperlink or open an attachment.<br>
<br>
The Bank reminds customers to be vigilant against possible scams. The Bank reiterates that the Bank will not request customers to log in to Internet Banking or provide any personal information, including account number, Internet Banking number/username, Internet Banking password and SMS one-time password, through SMS, e-mails, hyperlinks on websites, QR codes or attachments, and will not contact you via pre-recorded voice messages. If you receive any suspicious SMS messages claiming to be sent by the Bank requesting you to click on the hyperlink and provide any personal information, please call the Bank immediately to verify the authenticity of the SMS messages. Also, please be reminded to stay vigilant to anything abnormal when logging in to Internet Banking. In case of doubt, please stop the operation and do not input any data. And you should close the window and contact the Bank immediately.<br>
<br>
When conducting transactions through electronic channels, you are advised to access Internet Banking by typing the official website address of the Bank （www.bochk.com）directly into the browser address bar, or access Mobile Banking through the BOCHK Mobile Application downloaded from official App stores or reliable sources. The Bank will update the fraud alerts on the Bank’s website from time to time, please visit www.bochk.com/en/aboutus/fraudalert.html for details. For more security information about e-banking services, please visit www.bochk.com/en/security.html.<br>
<br>
If you have logged in to the suspected fraudulent websites and provided your information, you should immediately contact the Bank’s Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_50"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_51" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_51','content_51','images_up_51','images_down_51')">
								<div class="its_news_title" id="title_51">Statement on phishing SMS message and fraudulent website (4 March 2021)</div>
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
								Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the general public to the following phishing SMS message and fraudulent website, which purported to be from BOCHK.<br>
<br>
https://www.bochkoa.com<br>
<br>
In an attempt to mislead customers, the fraudulent website will appear under different domain names or with slight modifications or variations of the official BOCHK website address www.bochk.com by adding a combination of letters, numbers or symbols. The aforesaid phishing SMS message and fraudulent website intend to steal customers’ data, such as Internet Banking number/username, Internet Banking password and one-time password sent via SMS. BOCHK declares that it has no connection with the aforesaid phishing SMS message and fraudulent website. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMS messages, e-mails or on websites. BOCHK will update the fraud alerts on the bank’s website from time to time. For details, please visit www.bochk.com/en/aboutus/fraudalert.html. For more security information about BOCHK’s electronic banking services, please visit ww.bochk.com/en/security.html.<br>
<br>
Anyone who has logged into the aforesaid fraudulent website and provided their information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_51"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_52" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_52','content_52','images_up_52','images_down_52')">
								<div class="its_news_title" id="title_52">Statement on Fraudulent Website (4 March 2021)</div>
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
								Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the general public to the following fraudulent website, which purported to be from BOCHK.<br>
<br>
https://www.bochkgs.com<br>
<br>
In an attempt to mislead customers, the fraudulent website will appear under different domain names or with slight modifications or variations of the official BOCHK website address www.bochk.com by adding a combination of letters, numbers or symbols. The aforesaid fraudulent website intends to steal customers’ data, such as Internet Banking number/username, Internet Banking password and one-time password sent via SMS. BOCHK declares that it has no connection with the aforesaid fraudulent website. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMS messages, e-mails or on websites. BOCHK will update the fraud alerts on the bank’s website from time to time. For details, please visit www.bochk.com/en/aboutus/fraudalert.html. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.<br>
<br>
Anyone who has logged into the aforesaid fraudulent website and provided their information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_52"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_53" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_53','content_53','images_up_53','images_down_53')">
								<div class="its_news_title" id="title_53">Statement on phishing SMS messages and fraudulent websites (3 March 2021)</div>
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
								Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the general public to the following phishing SMS message and fraudulent websites, which purported to be from BOCHK.<br>
<br>
https://bit.ly/3bZeuuS<br>
<br>
https://www.malaysiamay.com/static/bb/index.html<br>
<br>
In an attempt to mislead customers, the fraudulent websites will appear under different domain names or with slight modifications or variations of the official BOCHK website address www.bochk.com by adding a combination of letters, numbers or symbols. The aforesaid phishing SMS message and fraudulent websites intend to steal customers’ data, such as Internet Banking number/username, Internet Banking password and one-time password sent via SMS. BOCHK declares that it has no connection with the aforesaid fraudulent websites. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMS messages, e-mails or on websites. BOCHK will update the fraud alerts on the bank’s website from time to time. For details, please visit www.bochk.com/en/aboutus/fraudalert.html. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.<br>
<br>
Anyone who has logged into the aforesaid fraudulent websites and provided their information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_53"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_54" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_54','content_54','images_up_54','images_down_54')">
								<div class="its_news_title" id="title_54">Statement on phishing SMS messages and fraudulent websites (3 March 2021)</div>
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
								Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the general public to the following phishing SMS messages and fraudulent websites, which purported to be from BOCHK.<br>
<br>
https://www.bochkoa.com<br>
<br>
https://www.bochkos.com<br>
<br>
https://www.bochkow.com<br>
<br>
https://www.bohkc.com<br>
<br>
The phishing SMS messages and fraudulent websites intend to steal customers’ data, such as Internet Banking number/username, Internet Banking password, and one-time password sent via SMS. BOCHK declares that it has no connection with the phishing SMS messages and fraudulent websites. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMS messages, e-mails or on websites. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.<br>
<br>
Anyone who has logged into the aforesaid fraudulent websites and provided their information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_54"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_55" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_55','content_55','images_up_55','images_down_55')">
								<div class="its_news_title" id="title_55">Statement on fraudulent websites (2 March 2021)</div>
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
								Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the general public to the following fraudulent websites, which purported to be from BOCHK.<br>
<br>
https://www.bochkeg.com<br>
<br>
https://www.bochkf.com<br>
<br>
In an attempt to mislead customers, the fraudulent websites will appear under different domain names or with slight modifications or variations of the official BOCHK website address www.bochk.com by adding a combination of letters, numbers or symbols. The aforesaid fraudulent websites intend to steal customers’ data, such as Internet Banking number/username, Internet Banking password and one-time password sent via SMS. BOCHK declares that it has no connection with the aforesaid fraudulent websites. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMSs, e-mails or on websites. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.<br>
<br>
Anyone who has logged into the aforesaid fraudulent websites and provided their information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_55"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_56" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_56','content_56','images_up_56','images_down_56')">
								<div class="its_news_title" id="title_56">Statement on phishing SMS messages and fraudulent websites (2 March 2021)</div>
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
								Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the generalpublic that fraudsters recently sent out phishing SMS messages embedded with fraudulent website hyperlinks that purported to be from BOCHK. Those phishing SMS messages falsely claimed that customers’ account settings were abnormal or their verifications were unsuccessful etc, and requested customers to click on the embedded hyperlinks in the SMS messages and enter personal information, such as Internet Banking number/username, Internet Banking password and one-time password sent via SMS on the fraudulent BOCHK websites. BOCHK declares that it has no connection with the phishing SMS messages and fraudulent websites. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
In an attempt to mislead customers, the hyperlinks of these fraudulent websites will appear under different domain names or with slight modifications or variations of the official BOCHK website address www.bochk.com by adding a combination of letters, numbers or symbols, such as described below:<br>
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
BOCHK reminds customers to be vigilant against possible scams. BOCHK reiterates that it will not request customers to provide any sensitive personal information, including account numbers, Internet Banking number/username, Internet Banking password and one-time password, through hyperlinks, QR codes or attachments embedded in SMS messages, e-mails or on websites, and will not contact customers via pre-recorded voice messages. Customers must not login to their banking accounts or provide personal information (including password) through SMS messages, e-mails, hyperlinks, QR codes or attachments. If customers receive any suspicious SMS message claiming to be sent by BOCHK requesting to click on the hyperlink to provide any personal information, please be alert and call BOCHK immediately to verify the authenticity of the SMS message.<br>
<br>
When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMS messages, e-mails or on websites. BOCHK will update the fraud alerts on the bank’s website from time to time. For details, please visit www.bochk.com/en/aboutus/fraudalert.html. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.<br>
<br>
Anyone who has logged into the aforesaid fraudulent websites and provided their information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_56"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_57" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_57','content_57','images_up_57','images_down_57')">
								<div class="its_news_title" id="title_57">Statement on fraudulent websites (28 February 2021)</div>
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
								Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the general public to the following fraudulent websites, which purported to be from BOCHK.<br>
<br>
https: // www.bochkva.com<br>
<br>
https: // www.bochkvd.com<br>
<br>
https: // www.bochkvf.com<br>
<br>
The aforesaid fraudulent websites intend to steal customers’ data, such as Internet Banking number/username, Internet Banking password and one-time password sent via SMS. BOCHK declares that it has no connection with the aforesaid fraudulent websites. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMSs, e-mails or on websites. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.<br>
<br>
Anyone who has logged into the aforesaid fraudulent websites and provided their information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_57"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_58" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_58','content_58','images_up_58','images_down_58')">
								<div class="its_news_title" id="title_58">Statement on phishing SMS messages and fraudulent websites (27 February 2021)</div>
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
								Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the general public to the following phishing SMS messages and fraudulent websites, which purported to be from BOCHK.<br>
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
The phishing SMS messages and fraudulent websites intend to steal customers’ data, such as Internet Banking number/username, Internet Banking password, and one-time password sent via SMS. BOCHK declares that it has no connection with the phishing SMS messages and fraudulent websites. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMS messages, e-mails or on websites. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.<br>
<br>
Anyone who has logged into the aforesaid fraudulent websites and provided their information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_58"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_59" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_59','content_59','images_up_59','images_down_59')">
								<div class="its_news_title" id="title_59">Statement on fraudulent websites (27 February 2021)</div>
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
								Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the general public to the following fraudulent websites, which purported to be from BOCHK.<br>
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
The aforesaid fraudulent websites intend to steal customers’ data, such as Internet Banking number/username, Internet Banking password and one-time password sent via SMS. BOCHK declares that it has no connection with the aforesaid fraudulent websites. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMSs, e-mails or on websites. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.<br>
<br>
Anyone who has logged into the aforesaid fraudulent websites and provided their information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_59"  style="display: none;"></div>
						
							<div class="its_news_subheader" id = "subheader_60" style="display: none;" onclick="DisplayNewsContent_onclick('subheader_60','content_60','images_up_60','images_down_60')">
								<div class="its_news_title" id="title_60">Statement on phishing SMS messages and fraudulent websites (26 February 2021)</div>
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
								Bank of China (Hong Kong) (“BOCHK”) would like to alert its customers and the general public to the following phishing SMS and fraudulent websites, which purported to be from BOCHK.<br>
<br>
https : // bit.ly/ 2P4beXo<br>
<br>
http : // www.malaysiamam.com/static/bb/index.html<br>
<br>
The phishing SMS and fraudulent websites intend to steal customers’ data, such as Internet Banking number/username, password, card number, customer name, ID number, mobile phone number, verification code and one-time security code generated by a mobile token. BOCHK declares that it has no connection with the phishing SMS and fraudulent websites. Meanwhile, the case has been reported to the Hong Kong Monetary Authority and the Hong Kong Police Force.<br>
<br>
When conducting transactions through electronic channels, customers are advised to access their Internet Banking or Mobile Banking accounts by typing the website address of BOCHK (www.bochk.com) directly into the browser address bar, or through the BOCHK Mobile Application downloaded from official App stores or reliable sources. Customers should not access such accounts or provide personal information (including passwords) through hyperlinks, QR codes or attachments embedded in SMSs, e-mails or on websites. For more security information about BOCHK’s electronic banking services, please visit www.bochk.com/en/security.html.<br>
<br>
Anyone who has logged into the aforesaid fraudulent websites and provided their information should immediately contact BOCHK Customer Service Hotline at (852) 3988 2388 (press 3, # and 2 after language selection).
							</div>
							<div class="its_news_line" id = "line_60"  style="display: none;"></div>
						
						
							<br>
							<div class="moreCount"><a class="more_btn_right" id="moreCount_btn" onclick="DisplaySubheader_more('60')"></a></div>
						
					</div>
				
					<ul id="iconbtn">
						<li id="seconline">
							<a class="more" href="javascript:openHelp('/cmm.before_commonInformation.do?langType=E&bkCode=012&title=security')"><span class="more-left"></span><span class="more-right"></span><span class="icon-1"></span><span>Online Security</span></a>
							<p>How to protect your online transactions? Please <a href="javascript:openHelp('/cmm.before_commonInformation.do?langType=E&bkCode=012&title=security')">click here</a>.<p>
						</li>
						<li id="cdcOnline" >
							<a class="more" href="https://its.bochk.com/reg.entry.do?langType=E&amp;bkCode=012"><span class="more-left"></span><span class="more-right"></span><span class="icon-2"></span><span>Credit Card Online Services Registration</span></a>
							<p>If you are holding credit card account, you can register Online Services for credit card via this function.</p>
						</li>
						<li id="SysUpgSchedule">
							<a id="SysUS" class="more" href="javascript:openHelp('/cmm.maintenanceSchedule.do?langType=E',550,400)"><span class="more-left"></span><span class="more-right"></span><span class="icon-3"></span><span>System Upgrade Schedule</span></a>
							<p>Customer Service Hotline:<br>+852 3988 2388</p>
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
				<li><a href="javascript:openHelp('/cmm.before_commonInformation.do?langType=E&bkCode=012&title=importantnotice')" title="Important Notice and Privacy Policy Statement">Important Notice and Privacy Policy Statement</a></li>
				<li><a href="javascript:openHelp('/cmm.before_commonInformation.do?langType=E&bkCode=012&title=conditionsforservices')" title="Conditions for Services">Conditions for Services</a></li>
				<li><a href="javascript:openHelp('/information/faq/faq_main_e.html')" title="FAQs">FAQs</a></li>
				<li><a href="javascript:openHelp('/cmm.before_commonInformation.do?langType=E&bkCode=012&title=hyperlinkpolicy')" title="Hyperlink Policy">Hyperlink Policy</a></li>
				<li><a href="javascript:openHelp('https://www.bochk.com/en/servicecharge.html')" title="General Banking Service Charges">General Banking Service Charges</a></li>
			</ul>
			<div>© BANK OF CHINA (HONG KONG) LIMITED.<br>ALL RIGHTS RESERVED.</div>
		</div> 
	</div>
	<div id = 'captchaWrapper'>&nbsp;</div>
	<bgsound id="bgSoundAudioCaptcha" src="ibs_lgn_index_e.jsp" loop="1" autostart="false">
<script type="text/javascript">
 
	ibsInitOcs(012,'https://ocs.bochk.com/webchat/webchat.html?pageFlage=IBS','https://ocs.bochk.com/dbsrv/','E','lgn.index','lgn/index');
 


	var latestNewsListSize = 60;
	showNewsBtn(latestNewsListSize);


	showImportInfoContent();


	changeImage();

</script>
</body>
</html>
