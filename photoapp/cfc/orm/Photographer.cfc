<cfcomponent persistent="true" table="PHOTOGRAPHER" schema="APP" >
	<!---- properties ---->
	
	<cfproperty name="PHOTOGRAPHERID" column="PHOTOGRAPHERID" ormtype="int" fieldtype="id"  /> 
	<cfproperty name="FIRSTNAME" column="FIRSTNAME" ormtype="string"  /> 
	<cfproperty name="LASTNAME" column="LASTNAME" ormtype="string"  /> 
	<cfproperty name="FEATURED" column="FEATURED" ormtype="int"  /> 
</cfcomponent>
