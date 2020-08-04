package com.poop.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="students")
public class Student {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String ime;
	private String prezime;
	private String email;
	private String jmbg;
	private String password;
	private String indeks;
	private int godina;
	
	public Student() {
		
	}
	
	public Student(String ime, String prezime, String email, String jmbg, String password, String indeks, int godina) {
		super();
		this.ime = ime;
		this.prezime = prezime;
		this.email = email;
		this.jmbg = jmbg;
		this.password = password;
		this.indeks = indeks;
		this.godina = godina;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getIme() {
		return ime;
	}
	public void setIme(String ime) {
		this.ime = ime;
	}
	public String getPrezime() {
		return prezime;
	}
	public void setPrezime(String prezime) {
		this.prezime = prezime;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getJmbg() {
		return jmbg;
	}
	public void setJmbg(String jmbg) {
		this.jmbg = jmbg;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getIndeks() {
		return indeks;
	}
	public void setIndeks(String indeks) {
		this.indeks = indeks;
	}
	public int getGodina() {
		return godina;
	}
	public void setGodina(int godina) {
		this.godina = godina;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", ime=" + ime + ", prezime=" + prezime + ", email=" + email + ", jmbg=" + jmbg
				+ ", password=" + password + ", indeks=" + indeks + ", godina=" + godina + "]";
	}
	
	
	
	
}