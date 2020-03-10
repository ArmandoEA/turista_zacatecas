package clases;

import java.util.ArrayList;

import conexion.ConexionBD_propiedad;

public class Principal {
	public static void main(String[] args) {
		ConexionBD_propiedad conBD_prop = ConexionBD_propiedad.getInstance();
		ArrayList<Propiedad> lista_prop= conBD_prop.CargarPropiedadesBD();
		if(lista_prop != null){
			for(int i=0; i<lista_prop.size(); i++){
				System.out.println("ID: " + lista_prop.get(i).id);
				System.out.println("Nombre: " + lista_prop.get(i).nombre);
				System.out.println("Precio: " + lista_prop.get(i).precio);
				System.out.println("Hipoteca: " + lista_prop.get(i).hipoteca);
				System.out.println("Renta: " + lista_prop.get(i).renta);
				System.out.println("Precio Casa: " + lista_prop.get(i).precio_casa);
				System.out.println("1 Casa: " + lista_prop.get(i).renta_casas[0]);
				System.out.println("2 Casa: " + lista_prop.get(i).renta_casas[1]);
				System.out.println("3 Casa: " + lista_prop.get(i).renta_casas[2]);
				System.out.println("4 Casa: " + lista_prop.get(i).renta_casas[3]);
				System.out.println("Hotel: " + lista_prop.get(i).renta_casas[4]);
				System.out.println("URL Imagen: " + lista_prop.get(i).url_imagen);
				System.out.println("Est� Hipotecada: " + lista_prop.get(i).esta_hipotecada);
				System.out.println();
			}
		}else{
			System.out.println("No hay propiedades guardadas");
		}
	}
}
