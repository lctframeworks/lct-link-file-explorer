<!-- Serverside Code --> 
<!DOCTYPE html>
<html>
<body>
	<%
	try {
	%>
	<%		
		String client = request.getRemoteHost();
		String drive;
		String disk;
	%>
	<ul id="localFileDir">
		<%	
			if(request.getParameter("drive") != null){
				drive=request.getParameter("drive")+"";
			}else {
				drive="c";
			}
		String cd;
			if(request.getParameter("cd")==null){
				cd="";
			}else{
				cd = "/"+request.getParameter("cd")+"/";	
			}	
		String root="\\\\"+client+"\\"+drive+"$\\"+cd;	
		disk = drive;	
		java.io.File file;
		java.io.File dir = new java.io.File(root);
		String[] list = dir.list();
		
		if (list.length > 0) {
			for (int i = 0; i < list.length; i++) {
				file = new java.io.File(root + list[i]);
				String filePath = file.getAbsolutePath().toString().replace(client,"");
				if (file.isDirectory()) {
					%>
						<li title="<%=filePath%>"><span class="sub_dir" id="<%=list[i]%>" ><%=list[i]%></span></li>
					<%
				 }else{
					drive=disk.toUpperCase()+":/";
					%> 
						<li id="<%=filePath%>"><%=list[i]%></li>
					<%
				 }
			}
		}
		%>
	</ul>
	<script>

			
	</script>
	<%}catch(Exception e){
		System.out.println("error");
	} %>
</body>
</html>