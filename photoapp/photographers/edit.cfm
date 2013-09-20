<cfparam name="form.featured" default="0">
<cfparam name="form.firstname" default = "">
<cfparam name="form.lastname" default = "">
<cfparam name="form.photographerid" default = "">
<cfscript>
  if (isDefined("form.submitButton")) {
    photographer = new photoapp.cfc.orm.Photographer();
    photographer.setFIRSTNAME(form.firstName);
    photographer.setLASTNAME(form.lastname);
    photographer.setFEATURED(form.featured);
    if (isNumeric(form.photographerid))
    {
      photographer.setPHOTOGRAPHERID(form.photographerid);
    }
    entitySave(photographer);
    location("index.cfm");
  }
    else if (isDefined("url.photographerid")) {
      photographer = entityloadbypk("Photographer", url.photographerid);
      form.firstname = photographer.getFirstName();
      form.lastname = photographer.getLastName();
      form.featured = photographer.getFeatured();
      form.photographerid = url.photographerid;
    

  }
</cfscript>

<cfmodule template="../includes/header.cfm"
pagetitle = "Our Photo Gallery - Edit Photographer">

<h1>Edit Photographer</h1>

<cfform>
  <table>
    <tr>
      <td>First Name:</td>
      <td><cfinput name="firstName" size="30" value="#form.firstname#" required="true" validateat="onSubmit" message="First name must be filled in"></td>
    </tr>
    <tr>
      <td>Last Name</td>
      <td><cfinput name="lastName" size="30" value="#form.lastname#" required="true" validateat="onSubmit" message="Lastname must be filled in">

      </cfinput></td> 
    </tr>
    <tr>
      <td>Featured:</td>
      <td><cfinput type="checkbox" name="featured" value="1" checked="#form.featured#">
      </td>
    </tr>
    <tr>
      <td></td><td><cfinput type="submit" name="submitButton" value="Submit">
      <cfinput type="hidden" name="photographerid" value="#form.photographerid#">
  
</cfinput></td>
</tr>
  </table>
</cfform>

<cfmodule template="../includes/footer.cfm">
