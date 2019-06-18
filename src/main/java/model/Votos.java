package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity(name = "voto")
public class Votos {
	@Id
	@Column(name = "voto_seq", insertable = false, updatable = false)
	private int id;

	@Column(name = "voto_user_titulo")	
	private String titulo;

	@Column(name = "voto_cand_num")
	private int candidato;

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public int getCandidato() {
		return candidato;
	}

	public void setCandidato(int candidato) {
		this.candidato = candidato;
	}	
}
