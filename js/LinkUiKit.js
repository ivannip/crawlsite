var popupwin;
var dragFlag = false;
var sendPageIdUrl = "";
var pushDataUrl = "v1/agent/msgpushBySession/boc/webchat";
var initDataUrl = "v1/agent/IbsInitSystemMessage";
var getocsData = "v1/agent/getIbsSystemMessageBySession";
var workTimeUrl = "v1/customer/workTime";
var ocsWebUrl = "";
var langType = "";
var entryPointTemp = "";
var pageTemp = "";
var changeTimeParam = 120000;
var revertTimeParam = 5000;
var IBSrevertTimeParam = changeTimeParam + revertTimeParam;
var whkPageList = ["mortgage/expert/expert1", "mortgage/expert/expert4", "/smeinone/business/overseasacopen"];
var type1PageList = ["mtg.inform", "mtg.apply", "mtg.overview", "mtg.repaymentInfo", "mtg.repaymentInfoReqApply"];
var type2PageList = ["fps.transfer", "fps.transactionRec", "fps.template", "rem.applyTT", "rem.plusApply",
	"rem.transactionRec", "rem.outwardEnq", "rem.inwardEnq", "rem.template"
];
var lastClickTime = "";
var showMsgBox = true;
var translucence = 0.3;
var languageMsg = {
	EN: {
		needHelp: "Need help?",
		contactExperts: "Need help?",
		imageUrl: "/images/common/icon/link_btn_normal_E.png",
		backgroundImage: 'url("/images/common/icon/link_btn_normal_E.png")'
	},
	ZH: {
		needHelp: "需要协助?",
		contactExperts: "联系按揭专家",
		imageUrl: "/images/common/icon/link_btn_normal_S.png",
		backgroundImage: 'url("/images/common/icon/link_btn_normal_S.png")'
	},
	HK: {
		needHelp: "需要協助?",
		contactExperts: "聯絡按揭專家",
		imageUrl: "/images/common/icon/link_btn_normal_C.png",
		backgroundImage: 'url("/images/common/icon/link_btn_normal_C.png")'
	}
}
var hintsJson = {}

function ibsInitOcs(bankcode, ocsUrl, dbsrvUrl, language, pageId, entryPoint) {
	if (bankcode == 200) {
		return;
	}
	if (dbsrvUrl != "") {
		sendPageIdUrl = dbsrvUrl;
	}
	if (ocsUrl != "") {
		ocsWebUrl = ocsUrl;
	}
	if (language != undefined && language != "") {
		langType = language;
		if (langType == "S") {
			hintsJson = languageMsg.ZH;
		} else if (langType == "E") {
			hintsJson = languageMsg.EN;
		} else if (langType == "C") {
			hintsJson = languageMsg.HK;
		} else {
			hintsJson = languageMsg.HK;
		}
	}
	if (pageId != undefined && pageId != "") {
		pageTemp = pageId;
	}
	if (entryPoint != undefined && entryPoint != "") {
		entryPointTemp = entryPoint;
	}
	judgeIndexOf();
	createJsonToIe();

	if (ocsUrl.indexOf("WHK") > -1) {
		if (pageId) {
			var newUrl = pageId.substring(0, pageId.indexOf(".html"));
			if (whkPageList.indexOf(newUrl) > -1) {
				setTimeout(function() {
					creatCommonIcon(language, 'three', 'big');
				}, changeTimeParam);
				setTimeout(function() {
					normalIcon();
				}, IBSrevertTimeParam);
			}
		} else {
			if (ocsUrl.indexOf("functionId") > -1 && ocsUrl.indexOf("SME") > -1) { //中小企业
				creatCommonIcon(language, 'three', 'small');
			}
		}
	} else {
		if (type2PageList.indexOf(pageId) > -1) {
			creatCommonIcon(language, 'two', 'small');
			setTimeout(function() {
				creatCommonIcon(language, 'two', 'big');
			}, changeTimeParam)
			setTimeout(function() {
				normalIcon();
			}, IBSrevertTimeParam);
		} else if (type1PageList.indexOf(pageId) > -1) {
			creatCommonIcon(language, 'three', 'small');
			io_get_withCookie(sendPageIdUrl + workTimeUrl + "?channel=IBS&_t=" + new Date().getTime(), handleWorkTimeCallBack);
		} else {
			creatCommonIcon(language, 'two', 'small');
		}
	}
}

function creatCommonIcon(language, type, size) {
	var content = type == 'three' ? hintsJson.contactExperts : hintsJson.needHelp;
	if (document.getElementById("toChatBtn")) {
		Transparent.clearTranslucent();
		var contentHtml = document.getElementById("contentHtml");
		var tipContent = "";
		if (size == 'big') {
			tipContent = content;
		} else if (size == 'small') {
			tipContent = "";
		}
		contentHtml.innerHTML = content;

		var toChatBtn = document.getElementById("toChatBtn");
		if (size == 'big') {
			//show msgBox
			document.getElementById("msgBox").style.display = "block";
			document.getElementById("contentHtml").style.display = "block";
			toChatBtn.style.width = "185px";
		} else if (size == 'small') {
			//hide msgBox
			document.getElementById("msgBox").style.display = "none";
			document.getElementById("contentHtml").style.display = "none";
			toChatBtn.style.width = "60px";
		}

		addEvent(toChatBtn, "click", function() {
			windowOpenChat();
		});
	} else {
		var imgDome = document.createElement("div");
		imgDome.id = "toChatBtn";
		imgDome.className = "father";

		var domHtml = "";
		domHtml += (
			"	<div id=\'redSon\' class=\'redSon float-left\'><img width = \'60\' src=\'\' id=\'redSonImg\' /></div>"
		);
		if (showMsgBox) {
			domHtml += ("	<div id=\'msgBox\' class=\'msgBox float-left\'>");
			if (size == 'big') {
				domHtml += ("		<p id=\'contentHtml\'>" + content + "</p>");
			} else if (size == 'small') {
				domHtml += ("		<p id=\'contentHtml\' style=\'display:none\'></p>");
			}
			domHtml += ("	</div>");
		}
		domHtml += (
			"</div><div class=\'clear\'></div>"
		);
		imgDome.innerHTML = domHtml;
		document.body.appendChild(imgDome);
		// document.getElementById("redSon").style.backgroundImage = hintsJson.backgroundImage;
		document.getElementById("redSonImg").src = hintsJson.imageUrl;
		document.getElementById("redSonImg").ondragstart = function() {
			return false;
		}

		var toChatBtn = document.getElementById("toChatBtn");
		if (IEVersion() > 0 && IEVersion() < 9) {
			toChatBtn.style.position = "absolute";
		}
		if (size == 'big') {
			//show msgBox
			document.getElementById("msgBox").style.display = "block";
			document.getElementById("contentHtml").style.display = "block";
			toChatBtn.style.width = "185px";
		} else if (size == 'small') {
			//hide msgBox
			document.getElementById("msgBox").style.display = "none";
			document.getElementById("contentHtml").style.display = "none";
			toChatBtn.style.width = "60px";
		}

		addEvent(imgDome, "click", function() {
			if (!dragFlag) {
				return;
			}
			if (popupwin && !popupwin.closed) {
				popupwin.focus();
				return;
			}
			if (popupwin && popupwin.closed) {
				popupwin = null;
				if (ocsWebUrl.indexOf("WHK") == -1 && IEVersion() == -1) {
					initDataToOcs();
				}
				setTimeout(function() {
					if (ocsWebUrl.indexOf("GIB") > -1) {
						popupwin = window.open("", "ocsWindow",
							"height=600, width=800, top=30%, left=50%, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no"
						);
						postSubmitWindow();
					} else {
						popupwin = window.open("/cmm.gotoOcsFrame.do?retryType=N&langType=" + langType, "ocsWindow",
							"height=600, width=800, top=30%, left=50%, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no"
						);
					}
				}, 600);

				return;

			}

			if (ocsWebUrl.indexOf("WHK") > -1 || IEVersion() != -1) {
				if (ocsWebUrl.indexOf("WHK") == -1 && IEVersion() == -1) {
					initDataToOcs();
				}
				setTimeout(function() {
					if (ocsWebUrl.indexOf("GIB") > -1) {
						popupwin = window.open("", "ocsWindow",
							"height=600, width=800, top=30%, left=50%, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no"
						);
						postSubmitWindow();
					} else {
						popupwin = window.open("/cmm.gotoOcsFrame.do?retryType=N&langType=" + langType, "ocsWindow",
							"height=600, width=800, top=30%, left=50%, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no"
						);
					}
				}, 600);
				return;
			}

			try {
				if (myBrowser() == "Safari") {
					if (ocsWebUrl.indexOf("WHK") == -1 && IEVersion() == -1) {
						initDataToOcs();
					}
					setTimeout(function() {
						if (ocsWebUrl.indexOf("GIB") > -1) {
							popupwin = window.open("", "ocsWindow",
								"height=600, width=800, top=30%, left=50%, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no"
							);
							postSubmitWindow();
						} else {
							popupwin = window.open("/cmm.gotoOcsFrame.do?retryType=N&langType=" + langType, "ocsWindow",
								"height=600, width=800, top=30%, left=50%, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no"
							);
						}
					}, 600);
				} else {
					//now is ibs click the icon
					judgeOcsStatus();
				}
			} catch (e) {
				if (ocsWebUrl.indexOf("WHK") == -1 && IEVersion() == -1) {
					initDataToOcs();
				}
				setTimeout(function() {
					if (ocsWebUrl.indexOf("GIB") > -1) {
						popupwin = window.open("", "ocsWindow",
							"height=600, width=800, top=30%, left=50%, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no"
						);
						postSubmitWindow();
					} else {
						popupwin = window.open("/cmm.gotoOcsFrame.do?retryType=N&langType=" + langType, "ocsWindow",
							"height=600, width=800, top=30%, left=50%, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no"
						);
					}
				}, 600);
			}
		});
	}
	initMage();
	Transparent.translucent();
}


function windowOpenChat() {
	if (!dragFlag) {
		return;
	}
	if (popupwin && !popupwin.closed) {
		popupwin.focus();
		return;
	}
	//Can only be clicked once in three seconds
	if (!lastClickTime || lastClickTime == "") {
		lastClickTime = Date.now();
	} else {
		var now = Date.now();
		if ((now - lastClickTime) < 3000) {
			return;
		}
		lastClickTime = now;
	}
	if (popupwin && popupwin.closed) {
		popupwin = null;
		realOpenOcsWindow();
		return;

	}
	if (ocsWebUrl.indexOf("WHK") > -1 || IEVersion() != -1) {
		realOpenOcsWindow();
		return;
	}

	try {
		//now is ibs click the icon
		judgeOcsStatus();
	} catch (e) {
		realOpenOcsWindow();

	}

}

function handleWorkTimeCallBack(data) {
	if (data) {
		var result = data;
		if (result.retCode == 1 && result.data) {
			setTimeout(function() {
				creatCommonIcon(langType, 'three', 'big');
			}, changeTimeParam)
			setTimeout(function() {
				normalIcon();
			}, IBSrevertTimeParam);
		}
	}
}

function io_get_withCookie(url, callback) {
	if (!url || !callback) {
		return;
	}
	jQuery.support.cors = true;
	if (IEVersion() != -1 && ocsWebUrl.indexOf("WHK") == -1) {
		// GET
		jQuery.getJSON(url).done(function(data) {
			callback(data);
		});
	} else {
		jQuery.ajax({
			url: url,
			type: 'get',
			timeout: 50000,
			dataType: 'json',
			xhrFields: {
				withCredentials: true
			},
			crossDomain: true,
			success: function(data) {
				callback(data);
			},
			error: function(XMLHttpRequest, textStatus, errorThrown) {

			}

		});
	}
};

//send some params to ocs-Server
function initDataToOcs() {
	var url = sendPageIdUrl + initDataUrl;
	var json = JSON.parse('{}');
	json.entryPoint = entryPointTemp;
	json.page = pageTemp;
	json.status = "0";
	io_get_withCookie(url + "?body=" + encodeURIComponent(JSON.stringify(json)) + "&_t=" + new Date().getTime(),
		ajaxCommonCallBack);

}

//A funcction of the ajax-callback which is not used.
function ajaxCommonCallBack(data) {
	//console.log("ajax success")
}

// judge ocsWindow is open？
function judgeOcsStatus() {
	var url = sendPageIdUrl + getocsData + "?_t=" + new Date().getTime();
	io_get_withCookie(url, handleOcsStatusCallBack)
}

//receive ocs-window status from ocs-server.
function handleOcsStatusCallBack(data) {
	var result = data;
	if (result.retCode == 1 && result.data && result.data.status == "1") {
		//ocs window is opened
		return;
	} else {
		realOpenOcsWindow();
	}
}

// judge finished and open ocs-window really
function realOpenOcsWindow() {
	//ocs window not opened
	if (ocsWebUrl.indexOf("WHK") == -1 && IEVersion() == -1) {
		initDataToOcs();
	}
	setTimeout(function() {
		if (ocsWebUrl.indexOf("GIB") > -1) {
			popupwin = window.open("", "ocsWindow", "ocsWindow",
				"height=600, width=800, top=30%, left=50%, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no"
			);
			postSubmitWindow();
		} else {
			popupwin = window.open("/cmm.gotoOcsFrame.do?retryType=N&langType="+langType, "ocsWindow",
				"height=600, width=800, top=30%, left=50%, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no"
			);
		}
	}, 600);
}

//gib post
function postSubmitWindow() {
	var hideForm = document.createElement("form");
	hideForm.id = "ocs_test";
	hideForm.action = ocsFrameUrl;
	hideForm.target = "ocsWindow";
	hideForm.method = "POST";
	var hideInput = document.createElement("input");
	hideInput.type = "hidden";
	hideInput.name = "__sys_retryType";
	hideInput.value = "P";
	hideForm.appendChild(hideInput);
	document.body.appendChild(hideForm);
	hideForm.submit();
	document.body.removeChild(hideForm);
}

function notifyIbsFuncId(ts, functionId, actionId) {
	//console.log("receive the status change from IBS's functionid ")
}

//This function is only used by ibs!
function notifyIbsPageId(ts, entryPoint, pageId, channalCode, langType) {
	//console.log("receive the page change from IBS system!")
	// if (IEVersion() != -1) {
	// 	//judge ie and don't call ajax
	// 	return;
	// }
	return;
	entryPointTemp = entryPoint;
	var jsonData = {
		"ts": ts,
		"langType": langType,
		"pageId": pageId,
		"entryPoint": entryPoint,
		"channalCode": channalCode
	};
	var stringData = JSON.stringify(jsonData);
	io_get_withCookie(sendPageIdUrl + pushDataUrl + "?body=" + encodeURIComponent(stringData) + "&_t=" + new Date().getTime(),
		ajaxCommonCallBack);
}

//The biggest use is to support buoy movement
function initMage() {
	var dv = document.getElementById('toChatBtn');
	var x = 0;
	var y = 0;
	var l = 0;
	var t = 0;
	var isDown = false;
	var x1, y1;
	addEvent(dv, "mousedown", function(e) {
		// dv.onmousedown = function(e) {
		dv.setCapture && dv.setCapture();
		var e = e || window.event;
		x = e.pageX || e.clientX;
		y = e.pageY || e.clientY;

		l = dv.offsetLeft;
		t = dv.offsetTop;
		isDown = true;
		dv.style.cursor = 'pointer';
		var bodyContent = document.getElementsByTagName("body");
		bodyContent[0].style.userSelect = "none";
		bodyContent[0].style.webkitUserSelect = "none";
		bodyContent[0].style.MozUserSelect = "none";
		// }
	});

	addEvent(document, "mousemove", function(e) {
		// window.onmousemove = function(e) {
		var e = e || window.event;
		if (isDown == false) {
			return;
		}
		var nx = e.pageX || e.clientX;
		var ny = e.pageY || e.clientY;

		var pageW = getPageRealWidth();
		var pageH = getPageRealHeight();
		var dialogW = dv.clientWidth;
		var dialogH = dv.clientHeight;

		var moveX = l + nx - x;
		var moveY = t + ny - y;

		var maxX = pageW - dialogW;
		moveX = Math.min(Math.max(0, moveX), maxX);
		// dv.style.left = moveX;
		var maxY = pageH - dialogH;
		moveY = Math.min(Math.max(0, moveY), maxY);
		// dv.style.top = moveY;
		var topPercent = moveY / pageH * 100;
		if (topPercent < 1) {
			topPercent = 1;
		}
		var leftPercent = moveX / pageW * 100;
		if (leftPercent < 1) {
			leftPercent = 1;
		}
		//dv.style.left = leftPercent + "%";
		dv.style.top = topPercent + "%";
		// }
	});
	addEvent(document, "mouseup", function(e) {
		// dv.onmouseup = function(e) {
		var e = e || window.event;
		isDown = false;
		x1 = e.pageX || e.clientX;
		y1 = e.pageY || e.clientY;
		var _val = Math.sqrt((x1 - x) * (x1 - x) + (y1 - y) * (y1 - y));
		if (_val >= 0 && _val <= 2) {
			dragFlag = true;
		} else {
			dragFlag = false;
		}
		dv.style.cursor = 'default';

		var bodyContent = document.getElementsByTagName("body");
		bodyContent[0].style.userSelect = "auto";
		bodyContent[0].style.webkitUserSelect = "auto";
		bodyContent[0].style.MozUserSelect = "auto";

		welt();
		showTipContent();
		Transparent.translucent();
		dv.releaseCapture && dv.releaseCapture();
		// }
	});
	addMobileEvent();
}

function showTipContent() {
	var pageW = getPageRealWidth();
	var toChatBtn = document.getElementById("toChatBtn");
	if (toChatBtn.offsetLeft < pageW / 2) {
		//right
		document.getElementById("msgBox").className = "msgBox float-right";
		document.getElementById("redSon").className = "redSon float-right";
	} else {
		//left
		document.getElementById("msgBox").className = "msgBox float-left";
		document.getElementById("redSon").className = "redSon float-left";
	}
}

var Transparent = {
	translucentTime: "",
	toChatBtn: "",
	translucent: function() {
		if (Transparent.translucentTime) {
			window.clearTimeout(Transparent.translucentTime);
		}
		if (!Transparent.toChatBtn) {
			Transparent.init();
		}
		Transparent.translucentTime = setTimeout(function() {
			Transparent.toChatBtn.style.opacity = translucence;
			Transparent.toChatBtn.style.filter = "alpha(opacity = 30)";
		}, 3000);
	},
	clearTranslucent: function() {
		window.clearTimeout(Transparent.translucentTime);
		// Transparent.toChatBtn.style.opacity = 1;
	},
	init: function() {
		Transparent.toChatBtn = document.getElementById("toChatBtn");
	}
}

function IEVersion() {
	var userAgent = navigator.userAgent;
	var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1;
	var isEdge = userAgent.indexOf("Edge") > -1 && !isIE;
	var isIE11 = userAgent.indexOf('Trident') > -1 && userAgent.indexOf("rv:11.0") > -1;
	if (isIE) {
		var reIE = new RegExp("MSIE (\\d+\\.\\d+);");
		reIE.test(userAgent);
		var fIEVersion = parseFloat(RegExp["$1"]);
		if (fIEVersion == 7) {
			return 7;
		} else if (fIEVersion == 8) {
			return 8;
		} else if (fIEVersion == 9) {
			return 9;
		} else if (fIEVersion == 10) {
			return 10;
		} else {
			return 6;
		}
	} else if (isEdge) {
		return 'edge';
	} else if (isIE11) {
		return 11;
	} else {
		return -1;
	}
}

function getPageRealWidth() {
	var pageW1 = document.documentElement.clientWidth;
	var pageW2 = document.body.clientWidth;
	if (pageW1 == 0) {
		return pageW2;
	} else if (pageW2 == 0) {
		return pageW1;
	}
	if (document.compatMode == "CSS1Compat") {
		return pageW1;
	} else {
		return pageW2;
	}
}

function getPageRealHeight() {
	var pageH1 = document.documentElement.clientHeight;
	var pageH2 = document.body.clientHeight;
	if (pageH1 == 0) {
		return pageH2;
	} else if (pageH2 == 0) {
		return pageH1;
	}
	if (document.compatMode == "CSS1Compat") {
		return pageH1
	} else {
		return pageH2
	}
}

function judgeIndexOf() {
	if (!Array.indexOf) {
		Array.prototype.indexOf = function(obj) {
			for (var i = 0; i < this.length; i++) {
				if (this[i] == obj) {
					return i;
				}
			}
			return -1;
		}
	}
}



function addEvent(obj, ev, fn) {
	if (obj.attachEvent) {
		obj.attachEvent('on' + ev, fn);
	} else {
		if (IsPC()) {
			obj.addEventListener(ev, fn, false);
		} else {
			obj.addEventListener(ev, fn, {
				passive: false
			});
		}
	}
}

function IsPC() {
	var userAgentInfo = navigator.userAgent;
	var Agents = ["Android", "iPhone",
		"SymbianOS", "Windows Phone",
		"iPad", "iPod"
	];
	var flag = true;
	for (var v = 0; v < Agents.length; v++) {
		if (userAgentInfo.indexOf(Agents[v]) > 0) {
			flag = false;
			break;
		}
	}
	return flag;
}

function myBrowser() {
	var userAgent = navigator.userAgent;
	var isOpera = userAgent.indexOf("Opera") > -1;
	var result = "";
	if (isOpera) {
		return "Opera"
	};
	if (userAgent.indexOf("Firefox") > -1) {
		return "FF";
	}
	if (userAgent.indexOf("Chrome") > -1) {
		return "Chrome";
	}
	if (userAgent.indexOf("Safari") > -1) {
		return "Safari";
	}
	if (userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera) {
		return "IE";
	};
	return result;
}

function createJsonToIe() {
	if (!window.JSON) {
		window.JSON = {
			parse: function(jsonStr) {
				return eval('(' + jsonStr + ')');
			},
			stringify: function(jsonObj) {
				var result = '',
					curVal;
				if (jsonObj === null) {
					return String(jsonObj);
				}
				switch (typeof jsonObj) {
					case 'number':
					case 'boolean':
						return String(jsonObj);
					case 'string':
						return '"' + jsonObj + '"';
					case 'undefined':
					case 'function':
						return undefined;
				}

				switch (Object.prototype.toString.call(jsonObj)) {
					case '[object Array]':
						result += '[';
						for (var i = 0, len = jsonObj.length; i < len; i++) {
							curVal = JSON.stringify(jsonObj[i]);
							result += (curVal === undefined ? null : curVal) + ",";
						}
						if (result !== '[') {
							result = result.slice(0, -1);
						}
						result += ']';
						return result;
					case '[object Date]':
						return '"' + (jsonObj.toJSON ? jsonObj.toJSON() : jsonObj.toString()) + '"';
					case '[object RegExp]':
						return "{}";
					case '[object Object]':
						result += '{';
						for (i in jsonObj) {
							if (jsonObj.hasOwnProperty(i)) {
								curVal = JSON.stringify(jsonObj[i]);
								if (curVal !== undefined) {
									result += '"' + i + '":' + curVal + ',';
								}
							}
						}
						if (result !== '{') {
							result = result.slice(0, -1);
						}
						result += '}';
						return result;

					case '[object String]':
						return '"' + jsonObj.toString() + '"';
					case '[object Number]':
					case '[object Boolean]':
						return jsonObj.toString();
				}
			}
		};
	}
}

function normalIcon() {
	var msgBox = document.getElementById("msgBox");
	msgBox.style.display = "none";
	var toChatBtn = document.getElementById("toChatBtn");
	toChatBtn.style.width = "60px";
	welt();
	toChatBtn.releaseCapture && toChatBtn.releaseCapture();
	removeEventListener(document, "touchmove", defaultEvent);
}

function addMobileEvent() {
	var block = document.getElementById("toChatBtn");
	if (!block) {
		return;
	}
	var oW, oH;
	addEvent(block, "touchstart", function(e) {
		Transparent.clearTranslucent();
		var touches = e.touches[0];
		oW = touches.clientX - block.offsetLeft;
		oH = touches.clientY - block.offsetTop;
		addEvent(document, "touchmove", defaultEvent);
	});

	addEvent(block, "touchmove", function(e) {
		var touches = e.touches[0];
		var oTop = touches.clientY - oH;
		var oLeft = touches.clientX - oW;
		var dialogH = block.clientHeight;
		var dialogW = block.clientWidth;
		var pageH = getPageRealHeight();
		var pageW = getPageRealWidth();
		var minTop = dialogH;

		if (oTop > document.documentElement.clientHeight - block.offsetHeight) {
			oTop = (document.documentElement.clientHeight - block.offsetHeight);
		}
		if (oLeft > document.documentElement.clientWidth - block.offsetWidth) {
			oLeft = (document.documentElement.clientWidth - block.offsetWidth);
		}

		topPercent = oTop / pageH * 100;
		if (topPercent < 1) {
			topPercent = 1;
		}

		maxHeight = (pageH - dialogH - 20)/pageH * 100;
		if (topPercent >= maxHeight) {
			topPercent = maxHeight;
		}

		leftPercent = oLeft / pageW * 100;
		if (leftPercent < 1) {
			leftPercent = 1;
		}

		// block.style.left = leftPercent + "%";
		block.style.top = topPercent + "%";
	});

	addEvent(block, "touchend", function(e) {
		removeEventListener(document, "touchmove", defaultEvent);
		welt();
		showTipContent();
		Transparent.translucent();
	});
}


function defaultEvent(e) {
	if (e.preventDefault) {
		e.preventDefault();
	} else {
		e.returnValue = false;
	}
}

addEvent(window, "orientationchange", function(e) {
	setTimeout(function() {
		var block = document.getElementById("toChatBtn");
		if (!block) {
			return;
		}
		var pageH = getPageRealHeight();
		var dialogH = block.clientHeight;
		var top = block.style.top.replace("%", "") / 100 * pageH;

		if ((top + dialogH) > pageH) {
			top = getPageRealHeight() - block.offsetHeight;
			topPercent = top / pageH * 100;
			block.style.top = topPercent + "%";
		}
	}, 200)
});

function removeEventListener(ele, event, fn) {
	if (ele.removeEventListener) {
		ele.removeEventListener(event, fn, false);
	} else if (ele.detachEvent) {
		ele.detachEvent('on' + event, fn);
	}
}

//Automatic welting
function welt() {
	var el = document.getElementById("toChatBtn");
	var pageW = getPageRealWidth();
	var dialogW = el.clientWidth;
	var maxX = pageW - dialogW;
	if (el.offsetLeft > pageW / 2) {
		el.style.right = "40px";
		el.style.left = "auto";
	} else {
		el.style.right = "auto";
		el.style.left = "40px";
	}
}
