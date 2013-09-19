<cfquery datasource="photogallerydb" name="qPhotos">
  SELECT caption, filename, price FROM photo ORDER BY caption DESC  
</cfquery>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Querying data of atoms</title>
</head>
<body>
<h1>Let us look up data</h1>
<p>
  By convention, name query objects with a prefix of 'q.'
</p>
<!--- <cfdump var='#qPhotos#'/> --->
<cfscript>
  writeDump(qphotos)
</cfscript>
</body>
</html>
