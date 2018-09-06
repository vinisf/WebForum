package beans;

public class Respostas extends Postagem{
	private int id_postagem;
	private int id_resposta;
	private String mensagem;
	
	public Respostas() {
		
	}

	public int getId_postagem() {
		return id_postagem;
	}

	public void setId_postagem(int id_postagem) {
		this.id_postagem = id_postagem;
	}

	

	

	public int getId_resposta() {
		return id_resposta;
	}

	public void setId_resposta(int id_resposta) {
		this.id_resposta = id_resposta;
	}

	public String getMensagem() {
		return mensagem;
	}

	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}
	
}
