<%@ page language="java" contentType="text/html;"%>
<!-- $Id: consoleadmin.jsp,v 1.2 2009/03/11 18:05:35 cpress Exp $ -->
<jsp:useBean 
	id="mem" 
	class="org.press.Facade"
	scope="request" />
<jsp:setProperty name="mem" property="*" />

<html>
<head>
<title>Console</title>
</head>
<body>
time is now <%=new java.util.Date()%>

<FORM METHOD="POST" ACTION="admin">
verbose: 
<INPUT TYPE="TEXT" NAME="verbose"
	VALUE="<jsp:getProperty name="mem" property="verbose"/>" 
	size="2">
<BR>
enabled: 
<INPUT TYPE="TEXT" NAME="enabled"
	VALUE="<jsp:getProperty name="mem" property="enabled"/>" 
	size="2">
<BR>
threshold: 
<INPUT TYPE="TEXT" NAME="threshold"
	VALUE="<jsp:getProperty name="mem" property="threshold"/>" 
	size="2">

<BR>
thresholdPollPeriod: 
<INPUT TYPE="TEXT" NAME="thresholdPollPeriod"
	VALUE="<jsp:getProperty name="mem" property="thresholdPollPeriod"/>" 
	size="9">
	
<BR>
loadRunning: 
<INPUT TYPE="TEXT" NAME="loadRunning"
	VALUE="<jsp:getProperty name="mem" property="loadRunning"/>" 
	size="2">
<BR>
<INPUT TYPE="SUBMIT" VALUE="change" NAME="submit">
</FORM>

</body>
</html>