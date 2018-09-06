package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingleConnection {

	// variaveis para conexão com o banco de dados (caminho, usuario e senha)
	private static String banco = "jdbc:mysql://localhost:3306/bdwebforum?autoReconnect=true";
	private static String senha = "";
	private static String user = "root";
	private static Connection connection = null;

	static {
		conectar();

	}

	// construtor da classe
	public SingleConnection() {
		conectar();
	}

	// metodo estatico para conexão
	private static void conectar() {
		try {
			if (connection == null) {
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection(banco, user, senha);
				connection.setAutoCommit(false);
			}
		} catch (Exception e) {
			throw new RuntimeException("ERRO AO CONECTAR COM BANCO DE DADOS");
		}

	}

	// metodo estatico que retorna a conexão
	public static Connection getConection() {

		return connection;
	}

}
