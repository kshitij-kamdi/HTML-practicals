<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <title>Student Information</title>
    <style>
      body { font-family: Arial, sans-serif; margin: 20px; }
      h2 { color: #333; }
      table { width: 100%; border-collapse: collapse; }
      th, td { border: 1px solid #000; padding: 10px; text-align: left; }
      th { background-color: #e3e3e3; }
      tr:nth-child(even) { background-color: #f2f2f2; }
    </style>
  </head>
  <body>
    <h2>Student Roster</h2>
    <table>
      <tr>
        <th>Student ID</th>
        <th>Name</th>
        <th>Course</th>
        <th>Email</th>
      </tr>
      <xsl:for-each select="students/student">
      <tr>
        <td><xsl:value-of select="@student_id"/></td>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="course"/></td>
        <td><xsl:value-of select="email"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>