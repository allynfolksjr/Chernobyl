<cfcomponent persistent="true" table="PHOTO" schema="APP" >
	<!---- properties ---->
	
	<cfproperty name="PHOTOID" column="PHOTOID" ormtype="int" fieldtype="id"  /> 
	<cfproperty name="FILENAME" column="FILENAME" ormtype="string"  /> 
	<cfproperty name="PHOTOGRAPHERID" column="PHOTOGRAPHERID" ormtype="int"  /> 
	<cfproperty name="CAPTION" column="CAPTION" ormtype="string"  /> 
	<cfproperty name="PRICE" column="PRICE" ormtype="double"  /> 
</cfcomponent>
