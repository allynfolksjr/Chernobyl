<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Debug Dump</title>
</head>
<body>
<h1>Debug Dump</h1>
<p>
  
<cfset num1=100>
<cfset num2=10>
<cfset total=num1 * num2>
<cfset rbword="RB">
<cfset mkword="MK">
<cfset type=rbword & mkword>
<cfoutput>Reactor Type: #variables.type# #variables.total#</cfoutput>
<p>You must use an amperstand (&) to concat strings.</p>
<p>CF attempts to coherce strings into numbers when a numerical operator is used. Generally, vars are weakly typed at runtime.</p>

<hr>
Simple variable: <cfdump var="#variables.total#"/>
Complex variable: <cfdump var="#variables#" label="Reactor variables"/>
</p>
</body>
</html>
