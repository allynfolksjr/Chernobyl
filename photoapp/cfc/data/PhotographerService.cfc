<cfcomponent output="false" hint="CFBuilder-Generated:PHOTOGRAPHER">

	<!----
           README for sample service

          This generated sample service contains functions that illustrate typical service operations.
          Use these functions as a starting point for creating your own service implementation. Modify the function signatures, 
          references to the database, and implementation according to your needs. Delete the functions that you do not use.
                
          Save your changes and return to Flash Builder. In Flash Builder Data/Services View, refresh the service. 
          Then drag service operations onto user interface components in Design View. For example, drag the getAllItems() operation onto a DataGrid.
                                
          This code is for prototyping only.
          Authenticate the user prior to allowing them to call these methods. You can find more information at http://www.adobe.com/go/cf9_usersecurity

      ---->


	<cfset INSTANCE = {} />
	<cfset INSTANCE.com = {} />
	
	<!---- load PHOTOGRAPHER components ---->
	<cfset INSTANCE.com.PHOTOGRAPHER = createObject('component', 'Photographer').init() />
	<cfset INSTANCE.com.PHOTOGRAPHERDAO = createObject('component', 'PhotographerDAO').init() />
	<cfset INSTANCE.com.PHOTOGRAPHERGATEWAY = createObject('component', 'PhotographerGateway').init() />
	

	<!---- init ---->
	<cffunction name="init" returntype="any">
		<!---- return success ---->
		<cfreturn this />
	</cffunction>

	
	
	<!----
	
	PHOTOGRAPHER SERVICES
	
	---->
	
	<!---- Create PHOTOGRAPHER ---->
	<cffunction name="createPHOTOGRAPHER" returntype="PHOTOGRAPHER" access="remote">
		<cfargument name="item" type="PHOTOGRAPHER" required="true" />
		<!---- Auto-generated method 
		  Insert a new record in PHOTOGRAPHER 
		  Add authorization or any logical checks for secure access to your data ---->
		<cfset idcol=INSTANCE.com.PHOTOGRAPHERDAO.create(ARGUMENTS.item.getPhotographerid(), ARGUMENTS.item.getFirstname(), ARGUMENTS.item.getLastname(), ARGUMENTS.item.getFeatured()) /> 
		<!---- return created item ---->
		<cfreturn INSTANCE.com.PHOTOGRAPHERDAO.read(idcol)/>
	</cffunction>
	
	
	<!---- Delete PHOTOGRAPHER ---->
	<cffunction name="deletePHOTOGRAPHER" returntype="void" access="remote">
		<cfargument name="Photographerid" type="numeric" required="true" />
		<!---- Auto-generated method
		         Delete a record in the database 
				 Add authorization or any logical checks for secure access to your data ---->
				 
		<cfset INSTANCE.com.PHOTOGRAPHERDAO.delete(ARGUMENTS.Photographerid) /> 
		<!---- return success ---->
		<cfreturn />
	</cffunction>
	
	<!---- Get All PHOTOGRAPHER ---->
	<cffunction name="getAllPHOTOGRAPHER" returntype="PHOTOGRAPHER[]" access="remote">
		<!---- Auto-generated method
		        Retrieve set of records and return them as a query or array 
				Add authorization or any logical checks for secure access to your data ---->
		<!---- return items ---->		
		<cfreturn INSTANCE.com.PHOTOGRAPHERGateway.getAll() />
	</cffunction>
	
	<!---- Get All Paged PHOTOGRAPHER ---->
	<cffunction name="getPHOTOGRAPHER_paged" returntype="PHOTOGRAPHER[]" access="remote">
		<cfargument name="startIndex" type="numeric" required="true" />
		<cfargument name="numItems" type="numeric" required="true" />
		<!---- Auto-generated method
		         Return a page of numItems number of records as an array or query from the database for this startIndex 
				 Add authorization or any logical checks for secure access to your data ---->
		<!---- return paged items ---->
		<cfreturn INSTANCE.com.PHOTOGRAPHERGateway.getAll_paged(ARGUMENTS.startIndex+1, ARGUMENTS.numItems) />
	</cffunction>
	
	<!---- Get PHOTOGRAPHER ---->
	<cffunction name="getPHOTOGRAPHER" returntype="PHOTOGRAPHER" access="remote">
		<cfargument name="Photographerid" type="numeric" required="true" />
		<!---- Auto-generated method
		         Retrieve a single record and return it as a query or array 
				 Add authorization or any logical checks for secure access to your data ---->
		<!---- return item ---->
		<cfreturn INSTANCE.com.PHOTOGRAPHERDAO.read(ARGUMENTS.Photographerid) />
	</cffunction>
	
	<!---- Update PHOTOGRAPHER ---->
		<cffunction name="updatePHOTOGRAPHER" returntype="PHOTOGRAPHER" access="remote">
		<cfargument name="item" type="PHOTOGRAPHER" required="true" />
		<!---- Auto-generated method
		         Update an existing record in the database 
				 Add authorization or any logical checks for secure access to your data ---->
		<!---- update PHOTOGRAPHER ---->
		<cfset INSTANCE.com.PHOTOGRAPHERDAO.update(ARGUMENTS.item.getPhotographerid(), ARGUMENTS.item.getFirstname(), ARGUMENTS.item.getLastname(), ARGUMENTS.item.getFeatured()) /> 
		<!---- return success ---->
		<cfreturn ARGUMENTS.item/>
	</cffunction>
	
	
	<!---- Count PHOTOGRAPHER ---->
	<cffunction name="count" returntype="numeric" access="remote">
	<!---- Auto-generated method
		         Return the number of items in your table 
				 Add authorization or any logical checks for secure access to your data  ---->
		<cfreturn INSTANCE.com.PHOTOGRAPHERGateway.count() /> 
	</cffunction>

</cfcomponent> 
