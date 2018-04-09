<%@ page import="br.com.cardapio.dados.CadastroDB"%>
<%@ page import="br.com.cardapio.entidade.Cadastro"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
String codigo = request.getParameter("codigo");	
String prato = request.getParameter("prato");
String descricao = request.getParameter("descricao");
String data = request.getParameter("data");

Cadastro cadastro = new Cadastro();

cadastro.setPrato(prato);
cadastro.setData(data);
cadastro.setDescricao(descricao);

if (!(codigo.isEmpty() || codigo.equals(null))){
	cadastro.setCodigo(Integer.parseInt(codigo));
	new CadastroDB().alterar(cadastro);
}else{
	new CadastroDB().inserir(cadastro);
}
response.sendRedirect("consultar.jsp");
%>



</body>
</html>