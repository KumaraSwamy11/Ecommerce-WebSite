<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Products</title>
    <jsp:include page="component/allcss.jsp" />  
    
    <style>
 th, td {
 width: 150px;
}
</style>
</head>
<body>
    <h1>Product List</h1>
    <table class="table table-hover">
        <tr class=" bg-primary text-white">
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.description}</td>
                <td>${product.price}</td>
                <td>
                  <a href="/products/add">Add</a>
                    <a href="/products/edit/${product.id}">Edit</a>
                    <a href="/products/delete/${product.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
  
</body>
</html>
