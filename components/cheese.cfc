
<cfcomponent hint="Generates cheese">
  <cfproperty name="milk">
  <cfset this.milk = "Whole Milk">

  <cffunction name="getCheese" returntype="String" access="public">
    <cfreturn "#this.milk#">
  </cffunction>

  <cffunction name="specifycheese" returntype="String" access="public">
    <cfargument name="type" type="string" required="true">
    <cfargument name="age" type="numeric" required="true">

    <cfreturn arguments.type & " with the age of " & arguments.age & " days">
  </cffunction>
</cfcomponent>
