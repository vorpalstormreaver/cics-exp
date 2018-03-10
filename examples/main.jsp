<%@ page import="java.io.*,java.util.*" %>
<html>
<body>
<%
   Enumeration paramNames = request.getParameterNames();
   while(paramNames.hasMoreElements()) {
      String paramName = (String)paramNames.nextElement();
      out.println("<b>" + paramName + ":</b> "+request.getParameter(paramName));
   }
%>
</body>
</html>