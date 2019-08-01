Who is this for?
Those trying to find a workaround for C:/fakepath when attempting to retrieve a local filepath in their webapplications

What does it do?
Creates a JSP file-explorer and file-opener webservice that returns the correct path and opens the file 

Where can I use it?
Java application servers such as tomcat or jetty. 
Supports modern web browsers
Currently supports windows client file directory

When should I use this?
When you want to have files bookmarked in a webapplication for easy access, with the ability to update on the fly.

Why use this?
Storing files in the database not only increases the database size but also ties your files to the integrity of the database. 
Storing links as opposed to BLOBS may be prefereable and server repositories can create server management. 

How do I quickly deploy and run?
1. download a java webapplication server such as tomcat or jetty
2. deploy the JSP files (this is often as simple as copying the file-explorer)
3. navigate to the http://[myapplicationserver]/file-explorer/sample.html 

How do I embedd in my application?
1. use the code index.html code in your existing web-application. This file contains the most simple and necessary implementation for linking and opening files.  
2. copy fileExplorer.jsp and windowsExplorer.jsp into your project. windowsExplorer contains the file explorer UI and fileExplorer.jsp (it is not recommended that you modify files)
3. ensure that the client machine has the file-opener-client running on their local machine if they wish to open the files using the code provided (this is not necessary for the file explorer)

**NOTE 
- For the ability to open files on the local computer, the Client machine MUST have the file-opener-client running (similar to running a local browser applet).  
- file-opener-client is a runnable webservice which opens a port on the client machine (18080 by default) and recieves requests from the index.html consult your local security staff for concerns.
