<%@ page import="org.json.JSONObject" %>
<%@ page import="java.util.Iterator" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    JSONObject json = (JSONObject) session.getAttribute("persoon");
    Iterator<String> t = json.keys();
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%=json.get("displayName")%>

<%
    while(t.hasNext()) {
        String element = t.next();
        %><%=element%>
</br>
<%
    }
%>
        </body>
</html>