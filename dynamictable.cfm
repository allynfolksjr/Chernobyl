<cfquery datasource="photogallerydb" name="qPhotos">
  
  SELECT filename, caption, price FROM App.photo ORDER BY price DESC
</cfquery>


<!DOCTYPE html>
  <html>
    <head>
      <meta charset="UTF-8">
      <title>Dymanic tables for maximum distribution of data</title>
    </head>
    <body>
      <h1>Classified table information.</h1>
      <p>
        Safety information redacted.
      </p>
      <table>
        <tr>
          <th>Caption</th>
          <th>File Name</th>
          <th>Price</th>
        </tr>
        <cfoutput query="qPhotos">
        <tr>
          <td>#qPhotos.CAPTION#</td>
          <td>#qPhotos.FILENAME#</td>
          <td>#dollarFormat(qPhotos.PRICE)#</td>
        </td>
      </tr>
    </cfoutput>
    </table>
  </body>
  </html>
