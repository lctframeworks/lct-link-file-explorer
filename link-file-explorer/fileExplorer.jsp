<!-- File Explorer UI Code --> 
<!DOCTYPE html>
<html>
<body>
	<input type="hidden" id="sub_Dir" value="" />
	<div>		
		<select id="drive" value="drive" onchange="changeDrive(this)">
			<option>Select Disk</option>
			<option value="c">c</option>
			<option value="d">d</option>
			<!-- add values at your discretion-->
		</select>
	</div>
	
	<div id="file_explorer">
		<iframe id="file_windows_explorer" src="" style="height:450px;width:550px">
			windows
		</iframe>
	</div>	
	
	<div style="position:fixed;bottom:0px">File: <a ></a></div>
	<script>

		function changeDrive(e){
			//resubmits iframe to pass disk partition argument
			document.getElementById("file_windows_explorer").src="windowsExplorer.jsp"+"?drive="+e.value;
			document.getElementById("sub_Dir").value="";
		}

		document.getElementById("file_windows_explorer").onload = function() {
			
			//creates windows explorer as an iframe object
			var iframeFileExplorer = document.getElementById("file_windows_explorer").contentDocument || document.getElementById("file_windows_explorer").contentWindow.document;
			
			//creats an array of all children listed
			var lis = iframeFileExplorer.getElementById("localFileDir").children;

			//creates an onclick event for each file item
			var i;
			for(i=0;i<lis.length;i++){
				
				lis[i].onclick = function(event) { 
					//alert(event.target.getAttribute("class"));
					if(event.target.getAttribute("class")=="sub_dir"){
						// is a directory
						
						var currentURL = document.getElementById("file_windows_explorer").src;	
						var subDir = document.getElementById("sub_Dir").value;
						var selected = event.target.getAttribute("id");
						var cdParam = "&cd=" 

						//sets the hidden field value to the selected subdirectory
						document.getElementById("sub_Dir").value+=""+event.target.getAttribute("id")+"/";
						
						/*
						alert(currentURL);
						alert(document.getElementById("sub_Dir").value);
						alert(currentURL.split("&")[0]);
						*/

						//sets refresh URL, split array is a temporary workaround to get only one CD get request in the URL
						var iframeURL = currentURL.split("&")[0]+cdParam+document.getElementById("sub_Dir").value;
						
						/*alert(iframeURL);*/

						//refreshes windows explorer with updated URL
						document.getElementById("file_windows_explorer").src=iframeURL;

						//alert(document.getElementById("file_windows_explorer").src);
					}else{
						//is a file	
						//que for submit 
						var location = document.getElementById("current_dir");							
						location.value=event.target.getAttribute("id");
						
					}
					
				};
			
			}	
						
		}
		
	</script>
	
	<input type="text" name="file" id="current_dir" value=""/>
	
	<button type="Click" id="open_selected_file" onClick="window.close();">Select</button>
	
</body>
</html>
