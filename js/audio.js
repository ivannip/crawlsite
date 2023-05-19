function changeImage() {
	document.getElementById("checkCode").value = "";
	document.getElementById("verifyImg").src = '/servlet/IbsVerifyImageDisplayServlet?update='
			+ Math.random();
}
function IEAudio(lang) {
	var bgSoundAudioCaptcha = document.getElementById("bgSoundAudioCaptcha");
	bgSoundAudioCaptcha.src = "/servlet/IbsVerifyImageVoiceServlet?captchaLang="
			+ lang + "&rand_number=" + Math.random();
};

function audioCap(lang) {

	var soundFile = "/servlet/IbsVerifyImageVoiceServlet?captchaLang=" + lang
			+ "&rand_number=" + Math.random();

	var soundElem, bodyElem, isHTML5;

	bodyElem = document.body;

	// if (isHTML5) {
	var wrapper = document.getElementById('captchaWrapper');
	wrapper.innerHTML = '';

	if (isHtml5AudioSupport()) {

		soundElem = new Audio(soundFile);
		soundElem.id = 'audioCap';
		soundElem.type = 'audio/wav';
		soundElem.autobuffer = false;
		soundElem.loop = false;
		wrapper.appendChild(soundElem)

		soundElem.play();

	} else {

		var paramElem;

		soundElem = document.createElement("object");
		soundElem.setAttribute("id", "audioCap");
		soundElem.setAttribute("type", "audio/wav");
		soundElem.setAttribute("style", "display:none;");
		soundElem.setAttribute("data", soundFile);

		paramElem = document.createElement("param");
		paramElem.setAttribute("name", "autostart");
		paramElem.setAttribute("value", "false");

		soundElem.appendChild(paramElem);
		bodyElem.appendChild(soundElem);

		try {
			soundElem.Play();
		} catch (ex) {
			soundElem.object.Play();
		}

	}

};

function isHtml5AudioSupport() {
	var html5SoundSupported = false;
	if (isAndroid() || isIOS()) {
		html5SoundSupported = true;
	} else {
		var browserCompatibilityCheck = document.createElement('audio');
		html5SoundSupported = ((browserCompatibilityCheck.canPlayType)
				&& (browserCompatibilityCheck.canPlayType("audio/wav")) && !isIncompetentBrowsers());
	}
	return html5SoundSupported;
};

function isIE() {
	var ua = window.navigator.userAgent;
	var msie = ua.indexOf('MSIE ');
	if (msie > 0) {
		return true;
	}

	var trident = ua.indexOf('Trident/');
	if (trident > 0) {
		var rv = ua.indexOf('rv:');
		return true;
	}
	return false;
};

function isAndroid() {
	var detected = false;
	if (navigator && navigator.userAgent) {
		var matches = navigator.userAgent.match(/Android/);
		if (matches) {
			detected = true;
		}
	}
	return detected;
};

function isIOS() {
	var detected = false;
	if (navigator && navigator.userAgent) {
		var matches = navigator.userAgent.match(/like Mac OS/);
		if (matches) {
			detected = true;
		}
	}
	return detected;
};

function isIncompetentBrowsers() {
	return (isFirefox3() || isSafariSsl() || isSafariMac());
};

function isSafariSsl() {
	var detected = false;
	if (navigator && navigator.userAgent) {
		var matches = navigator.userAgent.match(/Safari/);
		if (matches) {
			matches = navigator.userAgent.match(/Chrome/);
			if (!matches && document.location.protocol === "https:") {
				detected = true;
			}
		}
	}
	return detected;
};

function isSafariMac() {
	var detected = false;
	if (navigator && navigator.userAgent) {
		var matches = navigator.userAgent.match(/Safari/);
		if (matches) {
			matches = navigator.userAgent.match(/Chrome/);
			if (!matches && navigator.userAgent.match(/Macintosh/)) {
				detected = true;
			}
		}
	}
	return detected;
};

function isFirefox3() {
	var detected = false;
	if (navigator && navigator.userAgent) {
		var matches = navigator.userAgent
				.match(/(Firefox)\/(3\.6\.[^;\+,\/\s]+)/);
		if (matches) {
			detected = true;
		}
	}
	return detected;
};

function isMobileNotFirefox() {
	var detected = false;
	if (navigator && navigator.userAgent) {
		// var matchAndriod = navigator.userAgent.match(//);
		// alert(navigator.userAgent);
		var matchMobile = navigator.userAgent.match(/Android|iPad|iPhone|iPod/);

		if (matchMobile) {
			// var safari = navigator.userAgent.match(/Safari/);
			// var Chome = naavigator.userAgent.match(/Chrome/);
			var firefox = navigator.userAgent.match(/Firefox/);
			if (!firefox) {
				detected = true;
			}
		}
	}
	return detected;
};

function play(lang, tabReorder) {
	var test_audio = document.createElement("audio");
	var mediasupport = {
		audio : (test_audio.play) ? true : false
	};
	var imgAlt = "";
	var tabInd = "";
	var imgStyleCtrl = "";
	// if (mediasupport.audio && !isIE()) {
	// var a = !isMobileNotFirefox();
	// var b = mediasupport.audio;
	// var c = !isIE();
	// var d = !isSafariMac();
	// if (!isMobileNotFirefox() && mediasupport.audio && !isIE() &&
	// !isSafariMac()) {
	if (lang == 'en')
		imgAlt = "Play Verification Code";
	if (lang == 'ch')
		imgAlt = "播放驗證碼";
	if (lang == 'cn')
		imgAlt = "播放验证码";

	if (tabReorder == true) {
		tabInd = "tabindex=\"4\"";
		imgStyleCtrl = "style=\"padding-top:3px\""
	}

	var isDenyAccess = false;
	var ua = navigator.userAgent.toLowerCase();
	var BrowserTypeList = [ {
		name : 'mobile',
		type : /(android|iphone|ipad|mobile|phone|windows phone|ipod|midp|ucweb|symbianos)/i
	} ];
	for ( var key in BrowserTypeList) {
		var b = BrowserTypeList[key];
		var m = b.type.exec(ua);
		if (m) {
			if (b.name == "mobile") {
				isDenyAccess = true;
			} else {
				isDenyAccess = false;
			}
			break;
		}
	}

	// if (!isMobileNotFirefox() && mediasupport.audio && !isIE() &&
	// !isSafariMac()) {
	if (isHtml5AudioSupport() && !isDenyAccess) {
		document.write('<a  href ="#" class="image" onclick="audioCap(\''
				+ lang + '\')" ' + tabInd
				+ '><img id="audioCaptcha" src="/images/speak.png" alt="'
				+ imgAlt + '" title="' + imgAlt + '" ' + imgStyleCtrl
				+ '/></a>');

	} else if (isIE()) {
		document
				.write('<a href ="#" class="image" onclick="IEAudio(\''
						+ lang
						+ '\')" '
						+ tabInd
						+ '><img id="audioCaptcha" border="0" src="/images/speak.png" alt="'
						+ imgAlt + '" title="' + imgAlt + '" ' + imgStyleCtrl
						+ '/></a>');
	}
};