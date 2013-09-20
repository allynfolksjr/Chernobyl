<cfcomponent output="false" hint="CFBuilder-Generated">

	
	<!----
	PHOTOGRAPHER SERVICES
	
	---->
	<!---- Add Photographer ---->

	<cffunction name="createItem" returntype="Photographer" access="remote">
		<cfargument name="item" type="Photographer" required="true" />
		<!---- Auto-generated method 
		  Insert a new record in Photographer ---->
		<cfset entitysave(item) />
		
		<!---- return created item ---->
		<cfreturn item/>
	</cffunction>
	
	<!---- Remove Photographer ---->
	<cffunction name="deleteItem" returntype="void" access="remote">
		<cfargument name="PHOTOGRAPHERID" type="any" required="true" />
		
		<!---- Auto-generated method
		         Delete a record in the database ---->
		<cfset var primaryKeysMap = { PHOTOGRAPHERID = PHOTOGRAPHERID }>
		<cfset var item=entityload("Photographer",primaryKeysMap,true)>
		<cfif isnull(item) eq false>		 
			<cfset entitydelete(item) />
		</cfif> 				 
		<cfreturn />
	</cffunction>
	
	<!---- Get All Photographer ---->
	<cffunction name="getAllItem" returntype="Photographer[]" access="remote">
		<!---- Auto-generated method
		        Retrieve set of records and return them as a query or array ---->
		<!---- return items ---->	
		<cfreturn entityload("Photographer") />	
	</cffunction>
	
	<!---- Get All Paged Photographer ---->
	<cffunction name="getAllItem_paged" returntype="Photographer[]" access="remote">
		<cfargument name="start" type="numeric" required="true" />
		<cfargument name="count" type="numeric" required="true" />
		<!---- Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow ---->
		<!---- return paged items ---->
		<cfreturn entityload("Photographer","","",{offset=start,max=count})/>
	</cffunction>
	
	<!---- Get Photographer ---->
	<cffunction name="getItem" returntype="Photographer" access="remote">
		 <cfargument name="PHOTOGRAPHERID" type="any" required="true" /> 
		<!---- Auto-generated method
		         Retrieve a single record and return it ---->
		<!---- return item ---->
		<cfset var primaryKeysMap = { PHOTOGRAPHERID = PHOTOGRAPHERID }>
		<cfreturn entityload("Photographer",primaryKeysMap,true)>
	</cffunction>
	
	<!---- Save Photographer ---->
		<cffunction name="updateItem" returntype="Photographer" access="remote">
		<cfargument name="item" type="Photographer" required="true" />
		<!---- Auto-generated method
		         Update an existing record in the database ---->
		<!---- update Photographer ---->
		<cfset entitysave(item) /> 
		<cfreturn item/>
	</cffunction>
	
	<!---- Count Photographer ---->
	<cffunction name="countItem" returntype="numeric" access="remote">
	
		<cfreturn ormexecutequery("select count(*) from Photographer",true)>
	</cffunction>

</cfcomponent> 
