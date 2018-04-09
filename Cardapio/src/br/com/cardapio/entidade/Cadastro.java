package br.com.cardapio.entidade;

public class Cadastro {
	private int codigo;
	private String descricao;
	private String prato;
	private String data;

	public Cadastro(int codigo, String prato, String data) {

		this.codigo = codigo;
		this.prato = prato;
		this.data = data;

	}

	public Cadastro() {}
	
	public String getPrato() {
		return prato;
	}

	public void setPrato(String prato) {
		this.prato = prato;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

}
