<%@page import="com.dto.MyProductDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.service.MyProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	MyProductService service = new MyProductService();
	List<MyProductDTO> list = service.select();
	System.out.println(list);
	// mapper id = selectAll
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function delProduct(n) {
	location.href="deleteProduct.jsp?prodId="+n;
}
function chk(n) {
	var boxes = document.querySelectorAll(".delCheck");
	for (var i = 0; i < boxes.length; i++) {
		boxes[i].checked = n.checked;
	}
}
function delAll() {
	document.querySelector("#delForm").action = 'deleteAllProduct.jsp';
}
</script>
</head>
<body>
<form id="delForm">
<table border="1">
  <tr>
  	<td><input type="checkbox" name="delCheckAll" id="delcheckAll" onclick="chk(this)">전체선택</td>
    <td>상풍아이디</td>
    <td>상품명</td>
    <td>가격</td>
    <td>갯수</td>
    <td>삭제</td>
  </tr>
  
  <% for(MyProductDTO dto : list){%>
  <tr>
  	<td><input type="checkbox" name="delCheck" class="delCheck" value="<%= dto.getProdId()%>"></td>
  	<td><%= dto.getProdId() %></td>
  	<td><%= dto.getProdName() %></td>
  	<td><%= dto.getPrice() %></td>
  	<td><%= dto.getQuantity() %></td>
  	<%-- <td><button onclick="location.href='deleteProduct.jsp?prodId=<%= dto.getProdId()%>'">삭제</button></td> --%>
  	<td><button onclick="delProduct('<%=dto.getProdId()%>')">삭제</button></td>
  </tr>
  <% } %>
</table><br>
<button id="deleteAllProduct" onclick="delAll()">선택된 항목 삭제</button>
</form>
</body>
</html>