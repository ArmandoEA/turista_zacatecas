package conexion;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import clases.Autobus;

public class ConexionBD_autobus {
	
	//Recuperar Todos los autobuses
	public ArrayList<Autobus> CargarAutobusesBD(){
		ArrayList<Autobus> lista_autobuses = new ArrayList<Autobus>();
		int aux_id, aux_precio;
		String aux_ruta;
		
		try{
			PreparedStatement ps = ConexionBD.con.prepareStatement("SELECT * FROM autobuses");
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				aux_id = rs.getInt("id_bus");
				aux_ruta = rs.getString("ruta_bus");
				aux_precio = rs.getInt("precio_bus");
				
				lista_autobuses.add(new Autobus(aux_id, aux_ruta, aux_precio));
			}
			rs.close();
			return lista_autobuses;
		}catch(SQLException e){
			return null;
		}
	}
}
