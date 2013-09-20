<cfscript>
	service = new photoapp.cfc.data.PHOTOGRAPHERGateway();
	items = service.getAll();
</cfscript>

<cfmodule template="../includes/header.cfm"
	pagetitle = "Our Photo Gallery - Photographers">

<script language="JavaScript">
var photographerid;
function confirmDelete(id)
{
    photographerid = id;
    ColdFusion.MessageBox.show('confirmBox');
}
function doDelete(btn) {
    // alert(btn);÷÷
    if(btn == "yes") {
        document.location = "delete.cfm?photographerid=" + photographerid;
    } else {
        //
    }
}
</script>

    <h1>Photographers</h1>

	<table border="0">
    <tr>
        <th>First Name
        </th>
        <th>Last Name
        </th>
        <th></th>
        <th></th>
        <th></th>
    </tr>
	<cfloop from="1" to="#arrayLen(items)#" index="i">
	<cfoutput>
    <tr>
        <td>#items[i].getFirstName()#
        </td>
        <td>#items[i].getLastName()#
        </td>
        <td>
          <a href="photolist.cfm?photographerid=#items[i].getPhotographerID()#">Photos</a>  
        </td>
        <td>
            <a href="edit.cfm?photographerid=#items[i].getPhotographerID()#">Edit</a>
        </td>
        <td><a href="javascript:confirmDelete(#items[i].getPhotographerID()#)">Delete Photographer</a></td>
    </tr>
	</cfoutput>
	</cfloop>
	</table>

    <a href="edit.cfm">Insert new photographer</a>

    <cfmessagebox type="confirm" name="confirmBox" labelok="Yes" labelcancel="No" message="Are you sure you want to delete this photographer?" callbackhandler="doDelete"/>

	<!---<cfdump var="#items#" label="Photographers">--->

<cfmodule template="../includes/footer.cfm">
