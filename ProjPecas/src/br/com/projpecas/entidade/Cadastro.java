package br.com.projpecas.entidade;

public class Cadastro {
	private int codigo;
	private String nome;
	private String peso;
	private String tipo;
	private String data;
	private String Valor;
	
	public Cadastro() {
		
	}

	public Cadastro(int codigo, String nome, String peso, String tipo, String data, String valor) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.peso = peso;
		this.tipo = tipo;
		this.data = data;
		Valor = valor;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getPeso() {
		return peso;
	}

	public void setPeso(String peso) {
		this.peso = peso;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getValor() {
		return Valor;
	}

	public void setValor(String valor) {
		Valor = valor;
	}

}
