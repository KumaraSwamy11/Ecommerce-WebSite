<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart</title>
</head>
<body>
    <h1>Cart</h1>
    <table>
        <tr>
            <th>Product Name</th>
            <th>Quantity</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="cartItem" items="${cartItems}">
            <tr>
                <td>${cartItem.product.name}</td>
                <td>${cartItem.quantity}</td>
                <td>
                    <form method="post" action="/cart/remove/${cartItem.id}">
                        <button type="submit">Remove</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>

    <h2>Add to Cart</h2>
    <form method="post" action="/cart/add">
        <label for="productId">Product:</label>
        <select id="productId" name="productId">
            <c:forEach var="product" items="${products}">
                <option value="${product.id}">${product.name}</option>
            </c:forEach>
        </select><br><br>

        <label for="quantity">Quantity:</label>
        <input type="number" id="quantity" name="quantity" required><br><br>

        <button type="submit">Add to Cart</button>
    </form>
</body>
</html>
