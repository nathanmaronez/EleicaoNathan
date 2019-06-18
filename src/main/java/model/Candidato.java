package model;

import javax.persistence.*;

@Entity(name="candidato")
public class Candidato {

	@Id
	@Column(name = "cand_num")
	private int numero;

	@Column(name = "cand_nome")
	private String nome;
	
	@Column(name = "cand_partido")
	private String partido;	
	
	@Column(name = "cand_votos")
	private int votos;
	
    public int getNumero() 
    {
		return this.numero;
    }
    
    public int getVotos() 
    {
		return this.votos;
    }
    
    public String getNome()
    {
		return this.nome;
    }
	
	public String getPartido() 
    {
		return this.partido;
    }
}
