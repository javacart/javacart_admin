/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mnm.dao;

import java.io.Serializable;
import java.util.Date;


/**
 *
 * @author mohammadghasemy
 */
public class Users implements Serializable {

    private static final long serialVersionUID = 1L;
     private Integer id;
    private String name;
    private String username;
     private String password;
     private String tel;
     private String address;
    private boolean enabled;
    private String googleId;
    private String googleName;
    private String googleGivenName;
     private String googleFamilyName;
    private String googleLink;
    private String googlePicture;
    private String googleGender;
    private Date dtReg;

    public Users() {
    }

    public Users(Integer id) {
        this.id = id;
    }

    public Users(Integer id, String name, String username, String password, String tel, String address, boolean enabled, Date dtReg) {
        this.id = id;
        this.name = name;
        this.username = username;
        this.password = password;
        this.tel = tel;
        this.address = address;
        this.enabled = enabled;
        this.dtReg = dtReg;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public boolean getEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getGoogleId() {
        return googleId;
    }

    public void setGoogleId(String googleId) {
        this.googleId = googleId;
    }

    public String getGoogleName() {
        return googleName;
    }

    public void setGoogleName(String googleName) {
        this.googleName = googleName;
    }

    public String getGoogleGivenName() {
        return googleGivenName;
    }

    public void setGoogleGivenName(String googleGivenName) {
        this.googleGivenName = googleGivenName;
    }

    public String getGoogleFamilyName() {
        return googleFamilyName;
    }

    public void setGoogleFamilyName(String googleFamilyName) {
        this.googleFamilyName = googleFamilyName;
    }

    public String getGoogleLink() {
        return googleLink;
    }

    public void setGoogleLink(String googleLink) {
        this.googleLink = googleLink;
    }

    public String getGooglePicture() {
        return googlePicture;
    }

    public void setGooglePicture(String googlePicture) {
        this.googlePicture = googlePicture;
    }

    public String getGoogleGender() {
        return googleGender;
    }

    public void setGoogleGender(String googleGender) {
        this.googleGender = googleGender;
    }

    public Date getDtReg() {
        return dtReg;
    }

    public void setDtReg(Date dtReg) {
        this.dtReg = dtReg;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Users)) {
            return false;
        }
        Users other = (Users) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "mnm.dao.Users[ id=" + id + " ]";
    }
    
}
