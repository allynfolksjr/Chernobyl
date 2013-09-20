<cfscript>
  if (isDefined("url.photographerid")) {
    photographer = Entityloadbypk("Photographer", url.photographerid);
    entityDelete(photographer);
  }
  location("index.cfm");
</cfscript>
