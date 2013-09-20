<cfcomponent output="false">

	<!---- Auto-generated method
		         Add authroization or any logical checks for secure access to your data ---->
	<!---- init ---->
	<cffunction name="init" returntype="any">
		<cfreturn this />
	</cffunction>
	
	<!---- create ---->
	<cffunction name="create" returntype="any">
		<cfargument name="PHOTOGRAPHERID" type="numeric" required="true" /><cfargument name="FIRSTNAME" type="string" required="true" /><cfargument name="LASTNAME" type="string" required="true" /><cfargument name="FEATURED" type="numeric" required="true" />
		
		<!---- Auto-generated method
		         Add authroization or any logical checks for secure access to your data ---->
		<cfset var IdentityCol="" />
		<cfset var qry="" />	
		<!----TODO:  Below code is for table without auto increment enabled for primary key .Change the query Appropriately---->
		<!---- insert record ---->
		<cfquery name="qry">
			INSERT INTO PHOTOGRAPHER
			(
				photographerid,firstname,lastname,featured
			)
			VALUES
			(
				<cfqueryparam cfsqltype="CF_SQL_INTEGER" value="#ARGUMENTS.PHOTOGRAPHERID#" null="false" />,
				<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.FIRSTNAME#" null="false" />,
				<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.LASTNAME#" null="false" />,
				<cfqueryparam cfsqltype="CF_SQL_INTEGER" value="#ARGUMENTS.FEATURED#" null="false" />
			)
		</cfquery>
		
		
		<cfif arguments.PHOTOGRAPHERID NEQ ''>
			<cfset IdentityCol=arguments.PHOTOGRAPHERID>
					      
		<cfelse>
		<!----TODO: This logic is for diffrent db's.Delete the conditions not applicable ---->	 
      	<cfif IsDefined("qry.GENERATEDKEY")>
            <cfset identityCol = qry.GENERATEDKEY>
		<cfelseif IsDefined("qry.IDENTITYCOL")><!---- SQL Server only---->	
            <cfset identityCol = qry.IDENTITYCOL>
      	<cfelseif IsDefined("qry.GENERATED_KEY")> <!---- MySQL only---->
            <cfset identityCol = qry.GENERATED_KEY>
      	<cfelseif IsDefined("qry.GENERATED_KEYS")>
            <cfset identityCol = qry.GENERATED_KEYS>
      	<cfelseif IsDefined("qry.ROWID")><!---- Oracle only ---->
            <cfset identityCol = qry.ROWID>
      	<cfelseif IsDefined("qry.SYB_IDENTITY")><!---- Sybase only ---->
            <cfset identityCol = qry.SYB_IDENTITY>
      	<cfelseif IsDefined("qry.SERIAL_COL")> <!----Informix only---->
            <cfset identityCol = qry.SERIAL_COL>
      	<cfelseif IsDefined("qry.KEY_VALUE")>
            <cfset identityCol = qry.KEY_VALUE>
      	</cfif>
		
	  	</cfif>	
		<!---- return IdentityCol ---->
		<cfreturn IdentityCol />
	</cffunction>
	
	
	<!---- read ---->
	<cffunction name="read" returntype="Photographer">
		<cfargument name="id" type="any" required="true" />
		
		<!---- Auto-generated method
		         Add authroization or any logical checks for secure access to your data ---->
		<cfset var obj = createObject('component', 'Photographer').init() />
		<cfset var i = 1 />
		<cfset var qry="" />
		
		<cfquery name="qry">
			SELECT photographerid,firstname,lastname,featured
			FROM PHOTOGRAPHER
			where photographerid = <cfqueryparam cfsqltype="CF_SQL_INTEGER" value="#ARGUMENTS.id#" null="false" />
		</cfquery>
		<!---- load value object ---->
		<cfset obj.setPHOTOGRAPHERID(qry.PHOTOGRAPHERID[i]) />
		<cfset obj.setFIRSTNAME(qry.FIRSTNAME[i]) />
		<cfset obj.setLASTNAME(qry.LASTNAME[i]) />
		<cfset obj.setFEATURED(qry.FEATURED[i]) />
		<!---- return success ---->
		<cfreturn obj />
	</cffunction>
	
	<!---- update ---->
	<cffunction name="update" returntype="void">
		<cfargument name="PHOTOGRAPHERID" type="numeric" required="true" />
		<cfargument name="FIRSTNAME" type="string" required="true" />
		<cfargument name="LASTNAME" type="string" required="true" />
		<cfargument name="FEATURED" type="numeric" required="true" />
		<!---- Auto-generated method
		         Add authroization or any logical checks for secure access to your data ---->
		
		<cfset var qry="" />
		<!---- update database ---->
		<cfquery name="qry">
			UPDATE PHOTOGRAPHER
			SET firstname = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.FIRSTNAME#" null="false" />,
				lastname = <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#ARGUMENTS.LASTNAME#" null="false" />,
				featured = <cfqueryparam cfsqltype="CF_SQL_INTEGER" value="#ARGUMENTS.FEATURED#" null="false" />
			WHERE photographerid = <cfqueryparam cfsqltype="CF_SQL_INTEGER" value="#ARGUMENTS.PHOTOGRAPHERID#" null="false" />
		</cfquery>
		<!---- return success ---->
		<cfreturn />
	</cffunction>
	
	<!---- delete ---->
	<cffunction name="delete" returntype="void">
		<cfargument name="PHOTOGRAPHERID" type="numeric" required="true" />
		<!---- Auto-generated method
		         Add authroization or any logical checks for secure access to your data ---->
		<cfset var qry="" />
		<!---- delete from database ---->
		<cfquery name="qry">
			DELETE FROM PHOTOGRAPHER
			WHERE photographerid = <cfqueryparam cfsqltype="CF_SQL_INTEGER" value="#ARGUMENTS.PHOTOGRAPHERID#" null="false" />
		</cfquery>
		<!---- return success ---->
		<cfreturn />
	</cffunction>

</cfcomponent>
