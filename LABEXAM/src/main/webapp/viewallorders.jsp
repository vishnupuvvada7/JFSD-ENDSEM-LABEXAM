<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 

<html>
<head>
<title>Order Details</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f9f9f9;
    margin: 0;
    padding: 20px;
}

table {
    width: 80%;
    border-collapse: collapse;
    margin: 20px auto;
}

table, th, td {
    border: 1px solid #ddd;
}

th, td {
    padding: 10px;
    text-align: center;
}

th {
    background-color: #f2f2f2;
}

h2 {
    text-align: center;
    color: #333;
}
</style>
</head>
<body>
<h2>Order Details</h2>

<table>
    <tr>
        <th>Order ID</th>
        <th>Product Name</th>
        <th>Quantity</th>
        <th>Order Date</th>
        <th>Customer Name</th>
    </tr>
    <c:forEach items="${orderdata}" var="order">
        <tr>
            <td>${order.orderId}</td>
            <td>${order.productName}</td>
            <td>${order.quantity}</td>
            <td>${order.orderDate}</td>
            <td>${order.customerName}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
