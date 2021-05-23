<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
dasfashf;fafsdafdja
dsaf
fjsfa
dasfashffasfdfa

    <a href="index2.jsp">Back</a>
    <table border="1">
        <c:forEach var="entry" items="${requestScope.table}">
            <tr>
                <td>${entry.key}</td>
                <td>${entry.value}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>

