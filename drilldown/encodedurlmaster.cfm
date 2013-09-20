<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

<h1>Drill down master</h1>

<cfset urlvalue=urlEncodedFormat("Maya Angel & Sons")>
<cfoutput>
<a href="encodedurldetail.cfm?companyname=#variables.urlvalue#">Click Me!</a>
</cfoutput>
</body>
</html>
