<cfscript>
  if (!isDefined('url.photographerid')) {
    location("index.cfm");
  }
  items = entityLoad("Photographer", {photographerid=url.photographerid});
  photos = entityLoad("Photo", {photographerid=items[1].getPhotographerid()});
  fullname = items[1].getFirstName() & " " & items[1].getLastName();
</cfscript>
<cfoutput>
<cfmodule template="../includes/header.cfm"
  pagetitle = "Our Photo Gallery - #variables.fullname#">
  
    <h1>Photos by #variables.fullname#</h1>
  <h2>#variables.fullname#</h2></cfoutput>

  <cfmodule template="../tags/photodisplay.cfm"
    photos="#photos#">
  
<cfmodule template="../includes/footer.cfm">
