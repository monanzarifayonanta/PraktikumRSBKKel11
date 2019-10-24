/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Kelompok11;

import javax.ejb.Stateless;
import javax.ejb.LocalBean;

/**
 *
 * @author ASUS
 */
@Stateless
@LocalBean
public class ValidasiSession {
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    public boolean nama(String param) {
        try{
            if(param.isEmpty()){
                return false;
            }
            if(param.length()<=5){
                return false;
            }
        }catch(NullPointerException e){
            return false;
        }
        return true;
    }

    public boolean nim(String param) {
        try{
            Long.parseLong(param);
        }catch(NumberFormatException e){
            return false;
        }
        if(param.isEmpty()){
            return false;
        }
        if(param.length()<14){
            return false;
        }
        return true;
    }
}
