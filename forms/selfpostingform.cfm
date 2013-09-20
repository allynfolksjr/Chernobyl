<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Form Page</title>
</head>

<body>
	<h1>Form Page</h1>

    <cfif isDefined("form.cheese")>
        <cfoutput>
            Welcome, #form.firstname# #form.lastname#.</cfoutput>
</cfif>
    <cfform>
	
	<table border="0">
    <tr>
        <td>First Name:
        </td>
        <td>
            <input type="text" name="firstName" size="20" />
        </td>
    </tr>
    <tr>
        <td>Last Name:
        </td>
        <td>
            <input type="text" name="lastName" size="20" />
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td><input type="submit" value="Submit" name="cheese" />
        </td>
    </tr>
</table>
</cfform>

</body>
</html>
