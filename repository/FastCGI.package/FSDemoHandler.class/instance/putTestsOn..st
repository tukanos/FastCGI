other
putTestsOn: stream
	stream nextPutAll:
'<h3>Tests:</h3>

<p>(add as query to a url, ie ?status200)</p>
<ul>
  <li><a href="test?status200">status200</a> - response with a 200 Status header.</li>
  <li><a href="test?status500">status500</a> - response with a 500 Status header.</li>
  <li><a href="test?stream">stream</a> - streams back a response (Apache may cache).</li>
  <li><a href="test?streamDelay">streamDelay</a> - as above with 1 second delays.</li>
  <li><a href="test?large">large</a> - response spans multiple FastCGI records.</li>
  <li><a href="test?imageState">imageState</a> - information from the image.</li>
  <li><a href="test?exception">exception</a> - to signal an error.</li>
  <li><a href="testing1?cgiLocation">CGI Location</a> - response with CGI Location header /index.html.</li>
  <li><a href="testing2?http302">HTTP 302</a> - response with HTTP Location header /index.html.</li>
  <li><a href="test?chunked">Chunked Transfer encoding</a> - chunked response.</li>
</ul>'