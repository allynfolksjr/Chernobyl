<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Structs</title>
</head>
<body>
<h1>Be it use structs for nuclear power</h1>
<p>
  Structs are essentially hashes. But with ColdFusion.
</p>
<cfset cnppStruct = structNew()>
<cfset cnppStruct.location = "Ukraine SSR">
<cfset cnppStruct.size = "4 RMBK-1000 Reactors">

<cfset cnppStruct['Cheese'] = 'There is no cheese here.'>
<p><em>NOTE</em>: With dot-syntax, key is stored in uppercase. With key-syntax, it is stored in original case.</p>
<cfdump var="#cnppStruct#">
</body>
</html>
