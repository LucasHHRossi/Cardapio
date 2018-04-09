<%@ page import ="br.com.projcardapio.entidade.CadastroPrato" %>
<%@ page import ="br.com.projcardapio.dados.CadastroPratoDB" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!DOCTYPE html>
<html>
<head >
	<title color="red">Restaurante Riva's</title>
</head>
<
<body background="fundo.jpg">
<h1 style="color: red" align="center">Restaurante Riva's</h1>
<img src="logo.jpg" alt="   " style="width: 300px;height: 200px;">

<br>
<h1 style="color: white;" align="center">Card&aacutepio</h1>
<br>
<h2 style="color: yellow" align="center">Pratos</h2>
<br>

<table style="color: white" border ="2" align="center" bgcolor="#B43104" width="50%">
<tr>
	<th>Cod.:</th>
	<th>Descri&ccedil&atildeo</th>
	<th>Pre&ccedilo</th>
</tr>
<tr>
	<th>417</th>
	<th>Cozido de Madri</th>
	<th>R$ 20,00</th>
</tr>
<tr>
	<th>418</th>
	<th>Frango ao Molho Branco</th>
	<th>R$ 18,00</th>
</tr>
<tr>
	<th>420</th>
	<th>Ratullie</th>
	<th>R$ 17,00</th>
</tr>
</table>

<h2 style="color: 	yellow" align="center">Bebidas</h2>
<br>
<table style="color: white" border="2" align="center" bgcolor="#B43104" width="50%">
<tr>
	<th>Cod.:</th>
	<th>Descri&ccedil&atildeo</th>
	<th>Pre&ccedilo</th>
</tr>
<tr>
	<th>430</th>
	<th>Vinho Branco</th>
	<th>R$ 10,00</th>

</tr>
<tr>
	<th>435</th>
	<th>Martini</th>
	<th>R$ 8,00</th>
</tr>
<tr>
	<th>438</th>
	<th>Rum</th>
	<th>R$ 5,00</th>
</tr>
</table>

<br>
<br>
<h2 style="color: #00FF00" align="center">Avenida Black - NÂº 33533035534323 - Beco Diagonal
<h1 style="color: white" align="center">Agradecemos a Prefer&ecircncia!</h1>

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
</body>
</html>