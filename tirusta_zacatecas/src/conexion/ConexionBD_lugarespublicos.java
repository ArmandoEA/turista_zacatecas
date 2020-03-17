package conexion;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import clases.LugaresPublicos;

public class ConexionBD_lugarespublicos {
	//Recuperar Todos los lugares publicos
	public ArrayList<LugaresPublicos> CargarLugaresPublicosBD(){
		ArrayList<LugaresPublicos> lista_lugarespublicos = new ArrayList<LugaresPublicos>();
		int aux_id, aux_precio;
		String aux_nombre;
		
		try{
			PreparedStatement ps = ConexionBD.con.prepareStatement("SELECT * FROM lugares_publicos");
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				aux_id = rs.getInt("id_lug");
				aux_nombre = rs.getString("nombre_lug");
				aux_precio = rs.getInt("precio_lug");
				
				lista_lugarespublicos.add(new LugaresPublicos(aux_id, aux_nombre, aux_precio));
			}
			rs.close();
			return lista_lugarespublicos;
		}catch(SQLException e){
			return null;
		}
	}
}
