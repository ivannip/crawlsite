var wrt_resourceList = [];var wrt_topXResources= 10;var wrt_excludeQueryStrings = true;function encode_wrt_request_url(request_url){	return encodeURIComponent(request_url.replace(/[`()*]/g,function(c){return '%'+c.charCodeAt(0).toString(16);}));}function wrt_validateIntResourceTiming(_input) {if (isNaN(_input)) {return 0;}else {return Math.round(_input);}}function wrt_getTransactionName(name){if(wrt_excludeQueryStrings){var n = name.indexOf('?');return name.substring(0, n != -1 ? n : name.length);}else{return name;}}function wrt_getTopXResources(resources, x){var sortedResources = resources;sortedResources.sort(function(a, b){return b.duration - a.duration});if(x > -1 && resources.length > x)sortedResources = sortedResources.slice(0, x);return sortedResources;}function wrt_resourceToStringSummary(resourceObject){var resourceString = "";resourceString += '{';resourceString += '\"transactionName\":\"' +  wrt_getTransactionName(resourceObject.name) + '\"';resourceString += ',"startTime":' + wrt_validateIntResourceTiming(resourceObject.startTime);resourceString += ',\"finishTime\":' + (wrt_validateIntResourceTiming(resourceObject.startTime) + wrt_validateIntResourceTiming(resourceObject.duration));resourceString += ',\"initiatorType\":\"' +  resourceObject.initiatorType + '\"';resourceString += '}';return resourceString;}function wrt_getResourceTimingPayload(resources){var full_string = ',"subtransactionPayload":"';var payload_string = "";for (i = 0; i < resources.length; i++){payload_string  += wrt_resourceToStringSummary(resources[i]) + ',';}if (resources.length > 0){payload_string = payload_string.slice(0, -1);}full_string += window.btoa(payload_string);full_string += '"';return full_string;}function wrt_process_resource_timing(windowObject) {try {var post_string = "";if (!('performance' in windowObject) || !('getEntriesByType' in windowObject.performance)) {return "";} else {var frames = windowObject.frames;if (frames) {var i;for (i = 0; i < frames.length; i++) {wrt_process_resource_timing(frames[i]);}}var resources = windowObject.performance.getEntriesByType('resource');if (!resources) {return "";}for (var obj in resources) {wrt_resourceList.push(resources[obj]);}}return post_string;}catch (exception) {return ("");}};var wrt_target_posted = false;function wrt_onload(isUnloaded){if (wrt_target_posted) return;if(window && window.performance && window.performance.timing && window.performance.timing.loadEventEnd>0){wrt_target_posted = true;var post_string='{"window.performance.timing":{"navigationStart":'+window.performance.timing.navigationStart+',"redirectStart":'+window.performance.timing.redirectStart+',"redirectEnd":'+window.performance.timing.redirectEnd+',"fetchStart":'+window.performance.timing.fetchStart+',"domainLookupStart":'+window.performance.timing.domainLookupStart+',"domainLookupEnd":'+window.performance.timing.domainLookupEnd+',"connectStart":'+window.performance.timing.connectStart+',"connectEnd":'+window.performance.timing.connectEnd+',"requestStart":'+window.performance.timing.requestStart+',"responseStart":'+window.performance.timing.responseStart+',"responseEnd":'+window.performance.timing.responseEnd+',"domLoading":'+window.performance.timing.domLoading+',"domContentLoadedEventStart":'+window.performance.timing.domContentLoadedEventStart+',"domContentLoadedEventEnd":'+window.performance.timing.domContentLoadedEventEnd+',"domComplete":'+window.performance.timing.domComplete+',"loadEventStart":'+window.performance.timing.loadEventStart+',"loadEventEnd":'+window.performance.timing.loadEventEnd+'}';if (window && window.btoa) {wrt_process_resource_timing(window);var topResources = wrt_getTopXResources(wrt_resourceList,wrt_topXResources);post_string += wrt_getResourceTimingPayload(topResources);}var encoded_wrt_request_url = encode_wrt_request_url(wrt_request_url);var page_title_orginal=window.document.title;var encoded_page_title=page_title_orginal.replace(/"/g, "&quot;");post_string+=',"request.context":{"source":3,"request_id":"'+wrt_request_id+'","wrt_correlator":"'+wrt_correlator+'","url":"'+encoded_wrt_request_url+'","timezoneOffset":'+(new Date().getTimezoneOffset())+',"page_title":"'+encoded_page_title+'"'+'}';post_string+='}';var r=new XMLHttpRequest();r.open('POST','WrtTarget.dat',true);r.send(post_string);}else if(window && window.performance && window.performance.timing && !isUnloaded){setTimeout(wrt_onload,500,isUnloaded);}};var wrt_existingOnunload = null;if (window.onbeforeunload) wrt_existingOnunload = window.onbeforeunload;window.onbeforeunload = function() {wrt_onload(true);if (wrt_existingOnunload) wrt_existingOnunload();};wrt_onload(false);