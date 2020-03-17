package conexion;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.swing.JOptionPane;

public class ConexionBD {
	protected static Connection con;
    protected static ConexionBD_propiedad INSTANCE = null;
	
	//Datos de la conexión
	public static void performConnection(){
		try{
			Class.forName(Datos_conexion.DB_DRIVER);
			String newConnectionURL = "jdbc:mysql://" + Datos_conexion.DB_HOST + "/" 
													  + Datos_conexion.DB_NOMBRE + "?" 
											+ "user=" + Datos_conexion.DB_USER 
									   + "&password=" + Datos_conexion.DB_PASS
									   + "&useSSL=false";
			con = DriverManager.getConnection(newConnectionURL);
		}catch (Exception e) {
			System.out.println("Error: " + e.getMessage());
			JOptionPane.showMessageDialog(null, "No se pudo hacer la conexión a la base de datos", "Error", JOptionPane.WARNING_MESSAGE);
		}
	}
	
	//Crear una instancia de conexion
	private synchronized static void createInstance(){
		if(INSTANCE == null){ 
			INSTANCE = new ConexionBD_propiedad();
	        performConnection();
	    }
	}
	 
	//Metodo para obtener una instancia. Si ya existe la retorna, sino la crea.
	public static ConexionBD_propiedad getInstance() {
		if(INSTANCE == null) 
			createInstance();
	    
		return INSTANCE;
	}
	
	//Cerrar la conexion
	public void closeConnection() {
		try {
			con.close();
		}catch (Exception e) {
			System.out.println("Error en el cierre de la conexion.");
		}
	}
}
