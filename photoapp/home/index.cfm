<cfquery datasource="photogallerydb" name="qPhotographer">
  SELECT * from photographer WHERE featured = 1

</cfquery>
<cfquery datasource="photogallerydb" name="qPhotos">
  SELECT * from Photo WHERE photographerid = #qPhotographer.photographerid#
</cfquery>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Our Photo Gallery</title>
<link rel="stylesheet" type="text/css" href="../styles.css" media="all" />
</head>

<body>

<div id="main">
	<div id="header">
    </div>
    <div id="navbar" align="center">
      <a href="../home">Home</a> |
      <a href="../photographers">Photographers</a> |
      <a href="../photos">Photos</a>
    </div>
	<br class="clearfloat" />
	<div id="content">
    <h1>Our Featured Photographer</h1>
    <cfoutput><h2>#qPhotographer.firstname# #qPhotographer.lastname#</h2></cfoutput>
    <cfdump var="#qPhotos#">
	</div>
    <div id="footer">
      Copyright &copy;2009 Our Photo Gallery
    </div>
</div>

</body>
</html>
