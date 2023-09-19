<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>水仙花数</title>
</head>
<body>
<h1>水仙花数列表：</h1>
<ul>
    <%
        for (int i = 100; i <= 999; i++) {
            int hundreds = i / 100;
            int tens = (i % 100) / 10;
            int ones = i % 10;

            int sumOfCubes = (hundreds * hundreds * hundreds) + (tens * tens * tens) + (ones * ones * ones);

            if (sumOfCubes == i) {
    %>
    <li><%= i %></li>
    <%
            }
        }
    %>
</ul>
</body>
</html>