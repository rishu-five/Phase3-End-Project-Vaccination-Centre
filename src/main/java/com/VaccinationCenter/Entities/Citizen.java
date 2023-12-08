package com.VaccinationCenter.Entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToOne;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class Citizen {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String name;
    private String city;
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getDoses() {
		return doses;
	}
	public void setDoses(int doses) {
		this.doses = doses;
	}
	public String getVaccinationStatus() {
		return vaccinationStatus;
	}
	public void setVaccinationStatus(String vaccinationStatus) {
		this.vaccinationStatus = vaccinationStatus;
	}
	public VaccinationCenter getCenter() {
		return center;
	}
	public void setCenter(VaccinationCenter center) {
		this.center = center;
	}
	private int doses;
    private String vaccinationStatus;
    
    @OneToOne(cascade = CascadeType.ALL)
	@JoinTable(name="Citizen_vaccination",
	//joinColumns relation is going to specify the present table identity 
	      joinColumns = {@JoinColumn(name="cid",referencedColumnName ="id")},
	//inverseJoinColumns establish the relation with the aggregate class - foreign key      
	      inverseJoinColumns = {@JoinColumn(name="vid",referencedColumnName ="id")}
			)    
    private VaccinationCenter center;
    @Override
    public String toString() {
        return "Citizen [name=" + name + ", city=" + city + "]";
    }
}

