var  gb_delayFlag=true;			
var types='';

function delay(t) 				
{   							
	if ( types != t )
	{
		gb_delayFlag = true;  
	}	

 	if (gb_delayFlag)   			
 	{   					
		gb_delayFlag = false ;   	
    		//setTimeout("gb_delayFlag = true;",6000);  
    		types = t ;

    		return true; 			
 	}   					
 	else   					
 	{   					
 		return gb_delayFlag;  		
 	}   					
 } 			

function MM_findObj(n, d) { //v3.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document); return x;
}


				
