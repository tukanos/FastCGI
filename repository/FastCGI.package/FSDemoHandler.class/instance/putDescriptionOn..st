other
putDescriptionOn: stream
	stream 
		nextPutAll: '<h3>Welcome!</h3>
<h3>Notes:</h3>
<ul>
<li>Version: 030</li>
<li>This is demonstration handler for a <a href="http://www.fastcgi.com">FastCGI</a> Application implementation for GemStone Smalltalk.</li>
<li>HTTPRequests to the FastCGI WebServer (Apache server with mod_fastcgi) are sent to the image,
and the CGI parameters and stdin data can be accessed by the handler instance.</li>
<li>By default, this handler simply echoes the parameters and stdin data it receives to stdout.</li>
<li>By Steve Waring 2002. (Certain methods and classes based on FasTalk by Tomas Vanak)</li>
</ul>'