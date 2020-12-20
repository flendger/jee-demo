<%@ page import="java.util.List" %>
<%@ page import="ru.flendger.jee.demo.products.Product" %>
<%@ page import="ru.flendger.jee.demo.products.ProductService" %>
<%@ page import="java.io.PrintWriter" %>
<html>
<body>
<%
    response.setHeader("Content-Type", "text/html; charset=utf-8");
    PrintWriter writer = response.getWriter();
    int count;
    try {
        count = Integer.parseInt(request.getParameter("count"));
        List<Product> list = ProductService.getProducts(count);
        writer.println("<table><tr><th>ID</th><th>Title</th><th>Price</th></tr>");
        for (Product p: list
             ) {
            writer.println("<tr>");
            writer.println(String.format("<td>%d</td>", p.getId()));
            writer.println(String.format("<td>%s</td>", p.getTitle()));
            writer.println(String.format("<td>%.2f</td>", p.getCost()));
            writer.println("</tr>");
        }
    } catch (NumberFormatException e) {
        writer.println("<h1> Illegal count </h1>");
    }
%>
</body>
</html>
