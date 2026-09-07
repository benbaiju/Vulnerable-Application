<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SSRF Vulnerable App</title>
</head>
<body>

    <h1>SSRF Vulnerable App</h1>

    <p>
        This application fetches a URL on behalf of the user.
    </p>

    <form method="get"
          action="${pageContext.request.contextPath}/fetch-url">

        <label for="url">Enter URL:</label>
        <input type="text"
               id="url"
               name="url"
               size="60"
               placeholder="http://localhost:8080/SSRF-Vulnerable-App/vulnerable-port"
               required>

        <button type="submit">Fetch URL</button>
    </form>

</body>
</html>