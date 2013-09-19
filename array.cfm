<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Arrays</title>
</head>
<body>
<h1>Glourious arrays for use of chernobyl</h1>
<p>
  Arrays are indexed at 1 in ColdFusion.
</p>
<p>Pass in array dimension with the signature of <code>arrayNew(#)</code></p>
<cfset cnppArray = arrayNew(1)>
<cfset cnppArray[1] = "Chernobyl">
<cfset cnppArray[2] = "Nuclear">
<cfset cnppArray[3] = "Power">
<cfset cnppArray[4] = "Plant">
<cfset arrayAppend(cnppArray,"is swell!")>
<cfdump var="#variables.cnppArray#">
</body>
</html>
