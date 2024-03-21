<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Categories</title>
      <jsp:include page="component/allcss.jsp" />  
    
    <style>
 th, td {
 width: 150px;
}
</style>
</head>
<body>
    <h1>Category List</h1>
    <table class="table table-hover">
        <tr class=" bg-primary text-white">
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="category" items="${categories}">
            <tr>
                <td>${category.id}</td>
                <td>${category.name}</td>
                <td>${category.description}</td>
                <td>
                    <a href="/categories/add">Add </a>
                    <a href="/categories/edit/${category.id}">Edit</a>
                    <a href="/categories/delete/${category.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    
</body>
</html>
