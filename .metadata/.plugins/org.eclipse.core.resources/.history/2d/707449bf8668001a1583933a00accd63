package clases;

import java.util.ArrayList;

public class Propiedad {
	public int id, precio, hipoteca, precio_casa, renta, num_casas, dueño;
	public int[] renta_casas;
	public String nombre, url_imagen;
	public boolean esta_hipotecada;
	
	public Propiedad(int id, String nombre, int precio, int renta, int precio_casa, int[] renta_casas){
		this.id = id;
		this.nombre = nombre;
		this.precio = precio;
		this.renta = renta;
		this.hipoteca = precio/2;
		this.precio_casa =  precio_casa;
		this.url_imagen = Integer.toString(id) + ".jpg";
		this.num_casas = 0;
		this.dueño = 0;
		this.esta_hipotecada = false;
		this.renta_casas = new int[5];
		for(int i=0; i<5; i++){
			this.renta_casas[i] = renta_casas[i];
		}
	}
}
