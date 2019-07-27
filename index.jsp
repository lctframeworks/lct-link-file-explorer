<html>
	<head></head>
	<body>
		<script>
			//creates a window object of the file explorer
			var win;
			
			win = window.open("fileexplorer.jsp", "File Manager", "height=500,width=500");

			//runs  when the explorer is closed
			win.onunload = function(){
				if(document.getElementById("current_dir")==null){
					//directory refresh
				}else{
					//file submit	
					var location = document.getElementById("current_dir");	
					location.value=win.content.document.getElementById("current_dir").value;
					location.innerHTML=win.content.document.getElementById("current_dir").value;					
				}	
							
			}			
		
		</script>
		
			<form action="http://localhost:18080/link/open/" method="POST">
			File:
			<input type="text" name="file" id="current_dir" />
				<button type="submit">Open File</button>
			</form>
	</body>
</html>