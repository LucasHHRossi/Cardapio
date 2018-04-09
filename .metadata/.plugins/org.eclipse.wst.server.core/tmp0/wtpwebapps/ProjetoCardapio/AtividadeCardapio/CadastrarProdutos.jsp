<%@ page import ="br.com.projcardapio.entidade.CadastroPrato" %>
<%@ page import ="br.com.projcardapio.dados.CadastroPratoDB" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastrar Produtos</title>
</head>
<body>

<%
		int id = Integer.parseInt(request.getParameter("id"));
		String descricao = request.getParameter("descricao");
		String datacadastro = request.getParameter("datacadastro");
		Double valor = Double.parseDouble(request.getParameter("valor"));
		
		CadastroPrato cadastroprato = new CadastroPrato();
		
		cadastroprato.setDescricao(descricao);
		cadastroprato.setDatacadastro(datacadastro);
		cadastroprato.setValor(valor);
		
		if(!(id == 0)){
			cadastroprato.setId((id));
			new CadastroPratoDB().alterar(cadastroprato);
		}else{
			new CadastroPratoDB().inserir(cadastroprato);
		}
		
		response.sendRedirect("consultar.jsp");
				
%>
</body>
</html>