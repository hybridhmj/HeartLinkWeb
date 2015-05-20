package com.heartlink.controller;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Encrypt {
	

    public static String encrypt(String str) throws NoSuchAlgorithmException {

        String encData = "";
        
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] bytes = str.getBytes();
            md.update(bytes);
            byte[] digest = md.digest();

            for(int i=0; i<digest.length; i++ ) {
                encData += Integer.toHexString(digest[i]&0xff);
            }

        } catch (NoSuchAlgorithmException e) {
            // TODO: handle exception
            e.printStackTrace();
            throw e;
        }

        return encData; 
    }
    
    
    
}
