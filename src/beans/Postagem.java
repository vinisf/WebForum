package beans;

public class Postagem extends Usuario {
	
	private int idpostagem;
	private String pergunta;
	private String descricao;
	private String topico;
	
	// Construtor
	public Postagem() {
		
	}
	
	//Getters e Setters
	


	public int getIdpostagem() {
		return idpostagem;
	}

	public String getTopico() {
		return topico;
	}

	public void setTopico(String topico) {
		this.topico = topico;
	}

	public String getPergunta() {
		return pergunta;
	}

	public void setPergunta(String pergunta) {
		this.pergunta = pergunta;
	}

	public void setIdpostagem(int id_topico_forum) {
		this.idpostagem = id_topico_forum;
	}


	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
}
