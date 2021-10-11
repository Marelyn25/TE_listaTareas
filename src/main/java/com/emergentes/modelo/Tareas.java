package com.emergentes.modelo;

public class Tareas {
  private int id;
  private String tareas;
  private String prioridad;
  private String completado;
  
    public Tareas(){
        this.id=0;
        this.tareas="";
        this.prioridad="";
        this.completado="";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTareas() {
        return tareas;
    }

    public void setTareas(String tareas) {
        this.tareas = tareas;
    }

    public String getPrioridad() {
        return prioridad;
    }

    public void setPrioridad(String prioridad) {
        this.prioridad = prioridad;
    }

    public String getCompletado() {
        return completado;
    }

    public void setCompletado(String completado) {
        this.completado = completado;
    }
    
    
}
