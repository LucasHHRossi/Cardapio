<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro Produtos</title>

<link rel="stylesheet" href="bootstrap/css/bootstrap.css">

</head>
<body>

	<div align="center">
		<h1>Cardapio</h1>
		<form action="CadastrarProdutos.jsp" method="post">
           
            <input type="hidden" class="form-control" id="id" name="id" value="${param.id}">
			
			<div class="col-sm-6">

				<div class="form-group">
					<div class="row">
						<label for="nome">Descricao</label> <input type="text"
							class="form-control" id="descricao" name="descricao" value="${param.descricao}">

					</div>

				</div>
				<div class="form-group">
					<div class="row">
						<label for="nome">Datacadastro</label> <input type="text"
							class="form-control" id="datacadastro" name="datacadastro" value="${param.datacadastro}">
					</div>
				</div>
				
								</div>
				<div class="form-group">
					<div class="row">
						<label for="nome">Valor</label> <input type="text"
							class="form-control" id="valor" name="datacadastro" value="${param.valor}">
					</div>
				</div>

				<input type="submit" value="Salvar" class="btn btn-primary" />
				<a href="ConsultarProdutos.jsp" class="btn btn-light">Cancelar</a>
			</div>
		</form>
	</div>

</body>
</html>