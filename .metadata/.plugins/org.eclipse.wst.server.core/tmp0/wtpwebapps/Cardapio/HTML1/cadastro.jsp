<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<h1>Cardapio</h1>
		<form action="cadastrar.jsp" method="post">
           
            <input type="hidden" class="form-control" id="codigo" name="codigo" value="${param.codigo}">
			
			<div class="col-sm-6">

				<div class="form-group">
					<div class="row">
						<label for="name">Prato</label> <input type="text"
							class="form-control" id="prato" name="prato" value="${param.prato}">

					</div>

				</div>
				<div class="form-group">
					<div class="row">
						<label for="name">Data</label> <input type="text"
							class="form-control" id="data" name="data" value="${param.data}">
					</div>
				</div>

				<input type="submit" value="Salvar" class="btn btn-primary" />
				<a href="consultar.jsp" class="btn btn-light">Cancelar</a>
			</div>
		</form>
	</div>




</body>
</html>