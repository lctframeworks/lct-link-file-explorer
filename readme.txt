Who?
This is for Java application developers who have previously relied on browser extensions and applets to show and open linked files. 

What is the link-opener client server for? 

In recent days the ability to display and open local file paths in web browsers have been disabled for security reasons (always showing C:/fakepath/[MyFile]). 
This has forced enterprise applications to look for respository workarounds or force embedding files into a database.
Fortunately, Link-server coupled with the link-opener-client webservice allows you to navigate the path but also open files locally.  


How do I Use this 
1. Place this folder in your java-enabled application server (tomcat, jetty etc..) or embedd within in your webapplication application.
2. Open your browser and navigate to the URL http://[SERVER_NAME]:8080/link-server
3. Chose your local drive Directory via the Select Disk
4. Click on the links and files. A file will populate the file field at the very bottom
5. Click Send to open the file via default program.

**NOTE For the ability to open files on the local computer, the Client machine MUST have the webservice running (similar to running an applet) and your computer must be on the same network as the server.  