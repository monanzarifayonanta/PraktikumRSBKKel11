/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Kelompok11;

import javax.ejb.Local;

/**
 *
 * @author ASUS
 */
@Local
public interface LoginSessionLocal {

    boolean Login(String Nama, String Nim);

    boolean isLoginStatus();

    void setLoginStatus(boolean param);
    
        public String search(String param);
    
}
