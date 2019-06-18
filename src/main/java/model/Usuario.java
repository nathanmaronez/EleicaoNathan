package model;

import java.util.Date;

import javax.persistence.*;


@Entity(name="usuario")
public class Usuario {

	@Id
	@Column(name = "user_titulo")
	private String titulo;

	@Column(name = "user_data_emisao")
	private Date dataEmissao;

	@Column(name = "user_zona")
	private String zona;

	@Column(name = "user_secao")
	private String secao;

	@Column(name = "user_nome")
	private String nome;

	@Column(name = "user_data_nascimento")
	private Date dataNascimento;

	@Column(name = "user_tipo_seq")
	private int tipo;	

	@Column(name = "user_senha")
	private String senha;

	@Column(name = "user_permissao")
	private char podeVotar;

	@Column(name = "user_historico")
	private char jaVotou;
	
	public String getTitulo() {
		return titulo;
	}

	public Date getDataEmissao() {
		return dataEmissao;
	}

	public String getZona() {
		return zona;
	}

	public String getSecao() {
		return secao;
	}

	public String getNome() {
		return nome;
	}
	
	public Date getDataNascimento() {
		return dataNascimento;
	}
	
	public int getTipo() {
		return tipo;
	}
	
	public String getSenha() {
		return senha;
	}	

	public char getPodeVotar() {
		return podeVotar;
	}

	public char getJaVotou() {
		return jaVotou;
	}
}
