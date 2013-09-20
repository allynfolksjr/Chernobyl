<cfscript>
	service = new photoapp.cfc.data.PHOTOGRAPHERGateway();
	items = service.getAll();
</cfscript>

<cfmodule template="../includes/header.cfm"
	pagetitle = "Our Photo Gallery - Photographers">

    <h1>Photographers</h1>

	<table border="0">
    <tr>
        <th>First Name
        </th>
        <th>Last Name
        </th>
    </tr>
	<cfloop from="1" to="#arrayLen(items)#" index="i">
	<cfoutput>
    <tr>
        <td>#items[i].getFirstName()#
        </td>
        <td>#items[i].getLastName()#
        </td>
    </tr>
	</cfoutput>
	</cfloop>
	</table>

<cfmodule template="../includes/footer.cfm">
