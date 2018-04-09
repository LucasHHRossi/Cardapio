package br.com.cardapio.dados;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.cardapio.entidade.Cadastro;
import br.com.cardapio.util.Conexao;

public class CadastroDB {

	private Connection connection;
	private PreparedStatement ps;
	private ResultSet rs;

	public CadastroDB() {
		connection = Conexao.getConnection();
	}

	public boolean inserir(Cadastro cadastro) throws SQLException {

		try {

			PreparedStatement stmt = this.connection
					.prepareStatement("INSERT INTO CARDAPIO (prato, data, descricao) values (?, ?)");

			stmt.setString(1, cadastro.getPrato());
			stmt.setString(2, cadastro.getData());
			stmt.setString(3, cadastro.getDescricao());

			stmt.execute();
			return true;

		} catch (SQLException e) {
			System.err.println(e.toString());
		} finally {

			connection.close();

		}
		return false;
	}

	public boolean alterar(Cadastro cadastro) throws SQLException {

		try {

			PreparedStatement stmt = this.connection
					.prepareStatement("UPDATE CARDAPIO SET prato = ?, data = ? WHERE codigo = ?");

			stmt.setString(1, cadastro.getPrato());
			stmt.setString(2, cadastro.getData());
			stmt.setInt(3, cadastro.getCodigo());

			stmt.execute();
			return true;

		} catch (SQLException e) {
			System.err.println(e.toString());
		} finally {

			connection.close();

		}
		return false;
	}

	public List<Cadastro> getAll() {

		List<Cadastro> lstCadastro = new ArrayList<>();
		try {
			ps = this.connection.prepareStatement("SELECT codigo, prato, data FROM CARDAPIO");
			rs = ps.executeQuery();

			while (rs.next()) {
				lstCadastro.add(new Cadastro(rs.getInt("codigo"), rs.getString("prato"), rs.getString("data")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lstCadastro;
	}

	public boolean excluir(int codigo) throws SQLException {

		try {

			PreparedStatement stmt = this.connection.prepareStatement("DELETE FROM CARDAPIO WHERE CODIGO =?");

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
