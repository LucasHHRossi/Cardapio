<%@ page import ="br.com.projcardapio.entidade.CadastroPrato" %>
<%@ page import ="br.com.projcardapio.dados.CadastroPratoDB" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Consulta Cardapio</title>

<link rel="stylesheet" href="bootstrap/css/bootstrap.css">

<script type="text/javascript" src="bootstrap\jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
</head>
<body>
<div style="padding-top: 5%"></div>
<div class="col-sm-6">
<h1>Agenda</h1>
<div style="padding-top: 5%"></div>
<a href="CadastroProdutos.jsp" class="btn btn-dark">Novo</a>

<div style="padding-top: 3%"></div>

<input type="hidden" class="form-control" id="codigo" name="codigo">
<table class="table table-hover table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Descrição</th>
      <th scope="col">Data Cadastro</th>
      <th scope="col">Valor</th>
    </tr>
  </thead>
  <tbody>
    <%for (CadastroPrato cadastroprato : new CadastroPratoDB().getAll()){%>
    <tr>
      <th scope="row"><%=cadastroprato.getId() %></th>
      <td><%=cadastroprato.getDescricao() %></td>
      <td><%=cadastroprato.getDatacadastro() %></td>
      <td><%=cadastroprato.getValor() %><td>  
      <button class="btn btn-warning" onclick="alterar(<%=cadastroprato.getId() %>, '<%=cadastroprato.getDescricao() %>', '<%=cadastroprato.getDatacadastro() %>','<%=cadastroprato.getValor() %>')">Alterar</button>
      <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#confexcluir" onclick="salvaId(<%=cadastroprato.getId() %>)">Excluir</button>
      </td>
    </tr>
    <%}%>
  </tbody>
</table>
</div>

<!-- Modal -->
<div class="modal fade" id="confexcluir" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Confirmação</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Tem certeza que deseja excluir este registro?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Não</button>
        <button type="button" class="btn btn-danger" onclick="excluir()">Sim</button>
      </div>
    </div>
  </div>
</div>

</body>

<script>
function alterar(id, descricao, datacadastro, valor) {
   location.href="CadastroProdutos.jsp?id="+id+"&descricao="+descricao+"&datacadastro="+datacadastro"&valor"+valor;	
}

function salvaId(id) {
	var codigo = document.getElementById("id");
	codigo.value = id;
}

function excluir() {
	var id = document.getElementById("id").value; 
	location.href="ExcluirProdutos.jsp?id="+id;	
}
</script>

</html>