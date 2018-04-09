package br.com.projpecas.dados;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.projpecas.entidade.Cadastro;
import br.com.projpecas.util.Conexao;

public class CadastroDB {
	
	private Connection connection;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public CadastroDB () {
		connection = Conexao.getConnection();
	}
public boolean inserir(Cadastro cadastro)throws SQLException{
try {
	
	PreparedStatement stmt = this.connection
			.prepareStatement("INSERT INTO AGENDA (nome,peso,tipo,data,valor)valus (?,?)");
	stmt.setString(1, cadastro.getNome());
	stmt.setString(2,cadastro.getPeso());
	stmt.setString(3,cadastro.getTipo());
	stmt.setString(4,cadastro.getData());
	stmt.setString(5,cadastro.getValor());
	
	stmt.execute();
	return true;
	
}catch (SQLException e) {
	System.err.println(e.toString());
} finally {

	connection.close();

}
return false;
}
public boolean alterar(Cadastro cadastro) throws SQLException {
	
	
	try {

		PreparedStatement stmt = this.connection
				.prepareStatement("UPDATE AGENDA SET nome = ?, peso = ?, tipo = ?, data = ?, valor = ? WHERE codigo = ?");

		stmt.setString(1, cadastro.getNome());
		stmt.setString(2, cadastro.getPeso());
		stmt.setString(3, cadastro.getTipo());
		stmt.setString(4, cadastro.getData());
		stmt.setString(5, cadastro.getValor());
        stmt.setInt(6, cadastro.getCodigo());
        
		stmt.execute();
		return true;

	} catch (SQLException e) {
		System.err.println(e.toString());
	} finally {

		connection.close();

	}
	return false;
}
public List<Cadastro>getAll(){
	List<Cadastro> lstCadastro = new ArrayList<>();
	try {
		ps = this.connection.prepareStatement("SELECT codigo, nome, peso, tipo, data, valor FROM AGENDA");
		rs = ps.executeQuery();

		while (rs.next()) {
			lstCadastro.add(new Cadastro(rs.getInt("codigo"), rs.getString("nome"), rs.getString("peso"), rs.getString("tipo"), rs.getString("data"), rs.getString("valor")));
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return lstCadastro;
}
public boolean excluir(int codigo) throws SQLException {

	try {

		PreparedStatement stmt = this.connection
				.prepareStatement("DELETE FROM AGENDA WHERE CODIGO =?");

		stmt.setInt(1, codigo);

		stmt.execute();
		return true;

	} catch (SQLException e) {
		System.err.println(e.toString());
	} finally {

		connection.close();

	}
	return false;
}

}
