<cfscript>
  if (isDefined("form.submitButton")) 
  {
    hql = "FROM Photo WHERE 0=0 ";
    if (isNumeric(form.fromPrice)) 
    {
      hql &= "AND price >= #form.fromprice# ";
    }
    
    if (isNumeric(form.toPrice)) 
    {
      hql &= "AND price <= #form.toprice# ";
    }

    if (isNumeric(form.photographerid))
    {
      hql &= "AND photographerid = #form.photographerid#";
    }    
    photos = ormExecuteQuery(hql);
  }
</cfscript>

<cfquery name="qPhotographers">
  SELECT firstname || ' ' || lastname AS fullname, photographerid FROM Photographer 
</cfquery>
<cfmodule template="../includes/header.cfm"
pagetitle = "Our Photo Gallery - Photos">

<h1>Photos</h1>
<cfform preservedata="true">

  <b>Photographer: </b>
  <cfselect name="photographerid" query="qPhotographers" display="fullname" value="photographerid" queryposition="below">
    <option value="">ALL</option>

  </cfselect>
  <div>
    <b>Price: </b>
    from <cfinput type="text" name="fromPrice" size="10">
    to <cfinput type="text" name="toPrice" size="10">
    <cfinput type="submit" name="submitButton" value="search">
    </div>  
  </cfform>


    <cfif isDefined("photos")>
        <cfmodule template="../tags/photodisplay.cfm"
    photos="#photos#">

      </cfif>

      <cfmodule template="../includes/footer.cfm">
