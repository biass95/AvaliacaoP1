/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatec.poo.avaliacao;

import java.util.ArrayList;

/**
 *
 * @author biancasobral
 */
public class Disciplina {
    String nome;
    String ementa;
    int ciclo;
    int nota;
    
    public Disciplina(String nome, String ementa, int ciclo) {
        this.nome = nome;
        this.ementa = ementa;
        this.ciclo = ciclo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public Integer getCiclo() {
        return ciclo;
    }

    public void setCiclo(Integer ciclo) {
        this.ciclo = ciclo;
    }

    public Disciplina() {
    }

    public int getNota() {
        return nota;
    }

    public void setNota(int nota) {
        this.nota = nota;
    }
    
    public ArrayList getList(){
    ArrayList<String> matriculadas = new ArrayList();
    matriculadas.add("POO");
    matriculadas.add("GP");
    matriculadas.add("IA");
    matriculadas.add("TE");
    matriculadas.add("TG1");
    matriculadas.add("TG2");
    return matriculadas;
    }

    
}
