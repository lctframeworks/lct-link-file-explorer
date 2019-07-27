What is this?
This is a bootable webservice used to open files 

How do I Use this 
	1. Place this Program on the client machine D:/Program Files (see advanced instruction below for changing)
	2. Run the run-client.bat 
	3. Navigate the link-server and click open 
	(The webservice will run open the file in the default program.)



Advanced instructions

	I change directory client-service-physical path 
		1. edit run-client.bat 
		2. change the cd path to specify the current location 
		Ex 
			if link-open-client is moved to D:/
			change the cd to cd /d D:/link-opener-client


	II  Change webservice port
		1. open the link-opener-client.jar via an archiving utility. 
		2. link-opener-client.jar\BOOT-INF\classes\appliation.properties
		3. change server.port value (by default runs on 28080)
		4. change the fileexplorer.jsp action url to ensure the it posts to the correct webservice


	III Developing from source

		Import the project stored in the src folder

	IV Architecture

		Spring boot
		Apache Maven

		Java Runtime.exec
		
	V. Security
		It is worth noting that that the file opener client provides absolutely no security what-so-ever. It is simply a runable webservice intended to open files. 
		Developers are STRONGLY ENCOURAGE to work with their security team to resolve any concerns with implementing this solution into their project.