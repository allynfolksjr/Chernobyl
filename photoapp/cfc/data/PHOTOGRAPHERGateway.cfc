<cfcomponent output="false">

	<!---- init ---->
	<cffunction name="init" returntype="any">
		<cfset INSTANCE = {} />
		<cfset INSTANCE.dao = createObject('component', 'PhotographerDAO').init() />
		<cfreturn this />
	</cffunction>

	<!---- getAll ---->
	<cffunction name="getAll" returntype="Photographer[]">
		<cfset var collection = [] />
		<cfset var obj = '' />
		<cfset var qry = '' />
		<cfset var i = 0 />
		<!---- get all records from database ---->
		<cfquery name="qry">
			SELECT * FROM PHOTOGRAPHER
		</cfquery>
		<!---- load value objects ---->
		<cfloop from="1" to="#qry.recordcount#" index="i">
			<cfset obj = createObject('component', 'Photographer').init() />
			<cfset obj.setPhotographerid(qry.Photographerid[i]) />
			<cfset obj.setFirstname(qry.Firstname[i]) />
			<cfset obj.setLastname(qry.Lastname[i]) />
			<cfset obj.setFeatured(qry.Featured[i]) />
			<cfset arrayAppend(collection, obj) />
		</cfloop>
		<!---- return success ---->
		<cfreturn collection />
	</cffunction>
	
	<!---- getAll_paged ---->
	<cffunction name="getAll_paged" returntype="Photographer[]">
		<cfargument name="start" type="numeric" required="true" />
		<cfargument name="count" type="numeric" required="true" />
		<cfset var collection = [] />
		<cfset var obj = '' />
		<cfset var qry = '' />
		<cfset var i = 0 />
		<cfset var end=0 />
		<!---- get all records from database ---->
		<cfquery name="qry">
			SELECT * FROM PHOTOGRAPHER			
		</cfquery>
		<!---- load value objects ---->
		<cfif (ARGUMENTS.start + ARGUMENTS.count - 1) GTE qry.recordcount >
			<cfset end =  qry.recordcount />
		<cfelse>
			<cfset end= ARGUMENTS.start + ARGUMENTS.count - 1 />
		</cfif>
		<cfloop from="#ARGUMENTS.start#" to="#end#" index="i">
			<cfset obj = createObject('component', 'Photographer').init() />
			<cfset obj.setPhotographerid(qry.Photographerid[i]) />
			<cfset obj.setFirstname(qry.Firstname[i]) />
			<cfset obj.setLastname(qry.Lastname[i]) />
			<cfset obj.setFeatured(qry.Featured[i]) />
			<cfset arrayAppend(collection, obj) />
		</cfloop>
		<!---- return success ---->
		<cfreturn collection />
	</cffunction>
	
	<!---- count ---->
	<cffunction name="count" returntype="numeric">
		<cfset var qry = "" />
		<cfquery name="qry">
			SELECT COUNT(PHOTOGRAPHERID) AS total
			FROM PHOTOGRAPHER
		</cfquery>
		<cfreturn qry.total[1] />
	</cffunction>

</cfcomponent>
