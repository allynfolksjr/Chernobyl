<cfcomponent output="false">

	<!---- properties ---->
	<cfproperty name="Photographerid" type="numeric"  />
	<cfproperty name="Firstname" type="string"  />
	<cfproperty name="Lastname" type="string"  />
	<cfproperty name="Featured" type="numeric"  />
	
	<cfset INSTANCE = {} />
	<cfset INSTANCE.Photographerid = "" />
	<cfset INSTANCE.Firstname = "" />
	<cfset INSTANCE.Lastname = "" />
	<cfset INSTANCE.Featured = "" />
	

	<!---- init ---->
	<cffunction name="init" returntype="any">
		<cfreturn this />
	</cffunction>

	
	 <!----INFO:If This Application is to be run under ColdFusion 9 then the following getters and setters can be removed.
	 			If you delete the getters and setters you should enable use-implicit-getters option in serviceconfig.xml present in webroot/WEB-INF/flex ---->
	
	<!---- Photographerid accesor ---->
	<cffunction name="getPhotographerid" access="remote" output="false" returnType="Any">
		<cfreturn INSTANCE.Photographerid />
	</cffunction>
	<cffunction name="setPhotographerid" access="remote" output="false" returnType="void">
		<cfargument name="value" required="true" type="any" />
		<cfset INSTANCE.Photographerid = ARGUMENTS.value />
	</cffunction>
	
	<!---- Firstname accesor ---->
	<cffunction name="getFirstname" access="remote" output="false" returnType="Any">
		<cfreturn INSTANCE.Firstname />
	</cffunction>
	<cffunction name="setFirstname" access="remote" output="false" returnType="void">
		<cfargument name="value" required="true" type="any" />
		<cfset INSTANCE.Firstname = ARGUMENTS.value />
	</cffunction>
	
	<!---- Lastname accesor ---->
	<cffunction name="getLastname" access="remote" output="false" returnType="Any">
		<cfreturn INSTANCE.Lastname />
	</cffunction>
	<cffunction name="setLastname" access="remote" output="false" returnType="void">
		<cfargument name="value" required="true" type="any" />
		<cfset INSTANCE.Lastname = ARGUMENTS.value />
	</cffunction>
	
	<!---- Featured accesor ---->
	<cffunction name="getFeatured" access="remote" output="false" returnType="Any">
		<cfreturn INSTANCE.Featured />
	</cffunction>
	<cffunction name="setFeatured" access="remote" output="false" returnType="void">
		<cfargument name="value" required="true" type="any" />
		<cfset INSTANCE.Featured = ARGUMENTS.value />
	</cffunction>
	

</cfcomponent>
