<%@page import="com.dto.MyProductDTO"%>
<%@page import="com.service.MyProductService"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
     MyProductService service = new MyProductService();
     List<MyProductDTO> list = service.select();

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script type="text/javascript" src="jquery-3.1.0.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
    	 $(".deleteProduct").on("click",function(event){
    		 event.preventDefault();
    		 console.log($(this).attr("id"));
    	      location.href="deleteProduct.jsp?prodId="+$(this).attr("id");
    	 }); 

    	 
    	 
    	 $("#delCheckAll").on("click",function(event){
   	         console.log(event.target.checked);
    	    $(".delCheck").each(function(idx,ele){
    		      $(this).prop("checked", event.target.checked);
    	    });	 
    		 
   	     }); 
    	 
    	 $("form").on("submit",function(event){
    		 this.action="deleteAllProduct.jsp";
    		 this.method="GET";
   	     });
    	 
    	 //개별 수정
    	 $(".updateProduct").on("click",function(event){
    		 event.preventDefault();
    	     var prodId = $(this).attr("data-id");
    	     var quantity = $("#quantity"+prodId).val();
    	     var price = 
    	     $.ajax({
    				type : "GET",
    				url : "updateProduct.jsp",
    				dataType : "text",
    				data : {
    					prodId : prodId,
    					quantity : quantity
    				},
    				success : function(responseData, status, xhr) {
    				     alert("갯수 수정 성공");
    				     var sum = Number.parseInt($("#price"+prodId).val()) * Number.parseInt($("#quantity"+prodId).val())
    				   console.log(sum);
    				     $("#sum"+prodId).text(sum);
    				     
    				     //총합 구하기
    				    totalSum()
    				},
    				error : function(xhr, status, error) {
    					console.log("error");
    				}
    			});
   	     }); 
    	 
    	 //총합 구하기
    	totalSum()

    });
    
     function totalSum(){
    	 var totalSum=0;
	     $(".sum").each(function(idx,ele){
	    	 totalSum += Number.parseInt($(ele).text());
	     });
	     $("#totalSum").text(totalSum);
     }

</script> -->
<script type="text/javascript">
window.onload= function () {
	totalSum();
}
function chk(n) {
	var lang= document.querySelectorAll(".delCheck");
	for(var i=0; i< lang.length; i++){
		lang[i].checked= n.checked;
	}
}
function delAll() {
	document.querySelector("#delForm").action='deleteAllProduct.jsp';
	document.querySelector("#delForm").submit;
}
function delProduct(n) {
	event.preventDefault();
	location.href="deleteProduct.jsp?prodId="+n;	
}
function update(n){
	event.preventDefault();
	var m= document.querySelector("#quantity"+n);
	var quantity= m.value;
	console.log(quantity);
	location.href="updateProduct.jsp?prodId="+n+"&quantity="+quantity;		
}
function totalSum(){
	 var totalSum=0;
	 var n= document.querySelectorAll(".sum");
	 console.log(n);
	 var result=0;
	for (var i = 0; i < n.length; i++) {
		var num= parseInt(n[i].innerText);
		console.log(num);
		result+= num;		
	}
	document.querySelector("#totalSum").innerHTML= result;
}
</script>
</head>
<body>
<form id="delForm">

<table border="1">
  <tr>
    <td><input type="checkbox" name="delCheckAll" id="delCheckAll" onclick="chk(this)">전체선택</td>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               </td>
    <td>상풍아이디</td>
    <td>상품명</td>
    <td>가격</td>
    <td>갯수</td>
    <td>합계</td>
    <td>삭제</td>
    <td>수정</td>
  </tr>
  
 <%
   for(MyProductDTO dto: list){
 %> 
   <tr>
   <input type="hidden" name="price<%= dto.getProdId()%>" id="price<%= dto.getProdId()%>" value="<%= dto.getPrice()%>">
    <td><input type="checkbox" name="delCheck"  class="delCheck" value="<%= dto.getProdId()%>"></td>
    <td><%= dto.getProdId()%></td>
    <td><%= dto.getProdName()%></td>
    <td><%= dto.getPrice()%></td>
    <td><input type="text" name="quantity" value="<%= dto.getQuantity()%>" id="quantity<%= dto.getProdId()%>"></td>
    <td><span class="sum" id="sum<%= dto.getProdId()%>"><%= dto.getQuantity()*dto.getPrice()%></span></td>
    <td><button id="<%= dto.getProdId()%>" class="deleteProduct" onclick="delProduct('<%=dto.getProdId() %>')">삭제</button></td>
   <%--  <td><button data-id="<%= dto.getProdId()%>" class="updateProduct">수정</button></td> --%>
   <td><button onclick="update('<%=dto.getProdId()%>')">수정</button></td>
  </tr>
 <%
   }
 %> 
</table>
<button id="deleteAllProduct" onclick="delAll()">선택된 항목 삭제</button>
 총합:<span id="totalSum"></span>
</form>

</body>
</html>