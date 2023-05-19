function DisplayNewsContent_onclick(subheaderId,contentId,imagesUpId,imagesDownId)
{
	var subheader_Id = document.getElementById(subheaderId);
	var content_Id = document.getElementById(contentId);
	var imagesUp_Id = document.getElementById(imagesUpId);
	var imagesDown_Id = document.getElementById(imagesDownId);
	
	if(content_Id.style.display=="none")
	{
		imagesDown_Id.style.display="block";
		imagesUp_Id.style.display="none";
		content_Id.style.display="block";
		subheader_Id.style.color = '#d70b33';
	}
	else
	{
		imagesDown_Id.style.display="none";
		imagesUp_Id.style.display="block";
		content_Id.style.display="none";
		subheader_Id.style.color = '';	
	}
	
}

function tipsAlert(){
	var tips = document.getElementById('tips_image');
	var tips_box = document.getElementById('tips_box');
	var username =  document.getElementById('username');
	tips.onmouseover = function(){
		username.blur();
		tips_box.style.display = "";
	};
	
	tips.onmouseout = function(){
		username.focus();
		tips_box.style.display = "none";
	};
}

function showImportInfoContent()
{
	var a = document.querySelectorAll("div[class='importInfo_content']");
	for(var i=0;i<a.length;i++)
	{
		init(a[i]);
	}
}

function init(ctn)
{
	var len = 150;
	var content = ctn.innerHTML.trim();
	var span = document.createElement("span");
	var ellipsisSpan = document.createElement("span");
	var a    = document.createElement("a");
	span.innerHTML = content.substring(0,len);
	ellipsisSpan.innerHTML = content.length>len?"...&nbsp;&nbsp;":"";
	a.innerHTML = content.length>len?"More":"";
	a.href = "javaScript:void(0)";
	
	a.onclick = function(){
		if(a.innerHTML.indexOf("More")!= -1)
		{	
			a.innerHTML = "Pack up";
			ellipsisSpan.innerHTML = "";
			span.innerHTML = content;
		}
		else
		{
			a.innerHTML = "More";
			ellipsisSpan.innerHTML = "...&nbsp;&nbsp;";
			span.innerHTML = content.substring(0,len);
		}
	
	}
	ctn.innerHTML = "";
	ctn.appendChild(span);
	ctn.appendChild(ellipsisSpan);
	ctn.appendChild(a);
}

function showNewsBtn(latestNewsListSize)
{	
	if(latestNewsListSize > 15)
	{
		document.getElementById("moreCount_btn").innerHTML = "More";
	}
}

function DisplaySubheader_more(latestNewsListSize)
{
	var btn = document.getElementById("moreCount_btn");
	for(var i=15;i<latestNewsListSize;i++)
	{
		var subheaderId = "subheader_"+(i+1);
		var lineId = "line_"+(i+1);
		var images_up_Id = "images_up_"+(i+1);
		var images_down_Id = "images_down_"+(i+1);
		var contentId = "content_"+(i+1);
		var docSubheaderId = document.getElementById(subheaderId);
		var doclineId = document.getElementById(lineId);
		var docImages_up_Id = document.getElementById(images_up_Id);
		var docImages_down_Id = document.getElementById(images_down_Id);
		var docContentId = document.getElementById(contentId);
		if(docSubheaderId.style.display=="none")
		{
			docSubheaderId.style.display="block";
		}
		else
		{
			docSubheaderId.style.display="none";
		}
		if(doclineId.style.display=="none")
		{
			doclineId.style.display="block";
		}
		else
		{
			doclineId.style.display="none";
		}
		if(docImages_up_Id.style.display=="none")
		{
			docImages_up_Id.style.display="block";
		}
		else
		{
			docImages_up_Id.style.display="none";
		}
		
		if(btn.innerHTML == "Pack up")
		{
			docContentId.style.display="none";
		}
		else
		{
			if(docImages_down_Id.style.display=="block" )
			{
				docContentId.style.display="block";
			}
		}
		
	}
	if(btn.innerHTML == "More")
	{
		btn.innerHTML = "Pack up";
	}
	else
	{
		btn.innerHTML = "More";
	}
}