/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package isdcm_sesion2.modelo;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;

/**
 *
 * @author alumne
 */
public class video implements Serializable{
    private static final long serialVersionUID = 1L;
    private String titulo;
    private String autor;
    private Date fecha_creacion;
    private Time duracion;
    private Integer reproducciones;
    private String descripcion;
    private String formato;
    private String enlace;

    

    public video() {
    }



    public video(String titulo, String autor, Date fecha_creacion, Time duracion, Integer reproducciones,
            String descripcion, String formato, String enlace) {
        this.titulo = titulo;
        this.autor = autor;
        this.fecha_creacion = fecha_creacion;
        this.duracion = duracion;
        this.reproducciones = reproducciones;
        this.descripcion = descripcion;
        this.formato = formato;
        this.enlace = enlace;
    }

    public video(String string, String string0, int i, int i0) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }



    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public Date getFecha_creacion() {
        return fecha_creacion;
    }

    public void setFecha_creacion(Date fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }

    public Time getDuracion() {
        return duracion;
    }

    public void setDuracion(Time duracion) {
        this.duracion = duracion;
    }

    public Integer getReproducciones() {
        return reproducciones;
    }

    public void setReproducciones(Integer reproducciones) {
        this.reproducciones = reproducciones;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getFormato() {
        return formato;
    }

    public void setFormato(String formato) {
        this.formato = formato;
    }

    public String getEnlace() {
        return enlace;
    }

    public void setEnlace(String enlace) {
        this.enlace = enlace;
    }
    
}
