<!-- Simple Use Case feel free to modify --> 
<html>
	<head>
		<meta charset="UTF-8" />
		<script>
			//creates a window object of the file explorer
			var win;
			//opens file explorer
			function selectFileExplorer(){
			
			win = window.open("fileExplorer.jsp", "File Manager", "height=550,width=600");
				
				win.onload =function(){

					win.content.document.getElementById("open_selected_file").addEventListener("click", function(){

						document.getElementById("selected_path").value=win.content.document.getElementById("current_dir").value	

					}); 
				}	
				
			}
			
		</script>
	</head>
	<body>
		<h1>Sample Case</h1>		
		
			<!-- Submit to Link Client WebService-->
			
			<!--default port is 18080 -->
			
			<button onclick="selectFileExplorer()">Select File</button><br />
			<form action="http://localhost:18080/link/open/" method="POST">
				<input type="text" name="file" id="selected_path" />
				<button type="submit">Open File</button>
			</form>
	</body>
</html>