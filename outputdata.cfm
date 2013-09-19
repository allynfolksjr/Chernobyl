<cfquery datasource="photogallerydb" name="qPhotos">

SELECT filename, caption, price FROM App.photo ORDER BY price DESC
</cfquery>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Data output</title>
</head>
<body>
<h1>Here's some data yo</h1>
<p>
  
</p>
<cfoutput query="qPhotos">
<div>
#qPhotos.caption# (#dollarFormat(qPhotos.price)#)
</div>
</cfoutput>
</body>
</html>
