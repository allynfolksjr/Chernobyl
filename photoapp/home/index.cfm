<cfquery name="qPhotographer">
	SELECT * FROM Photographer WHERE featured = 1
</cfquery>
<cfquery name="qPhotos">
	SELECT * FROM Photo WHERE photographerid = #qPhotographer.photographerid#
</cfquery>

<cfmodule template="../includes/header.cfm"
	pagetitle = "Our Photo Gallery - Home Page">
	
    <h1>Our Featured Photographer</h1>
	<cfoutput><h2>#qPhotographer.Firstname# #qPhotographer.Lastname#</h2></cfoutput>
	
	<cfdump var="#qPhotos#">
	
<cfmodule template="../includes/footer.cfm">
