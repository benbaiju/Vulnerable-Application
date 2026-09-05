<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SSRF Vulnerable App</title>
</head>
<body>
    <h1>SSRF Vulnerable App</h1>
    <p>Backend service is running.</p>

    <p>
        <a href="${pageContext.request.contextPath}/ssrf">
            Open SSRF demonstration
        </a>
    </p>
</body>
</html>