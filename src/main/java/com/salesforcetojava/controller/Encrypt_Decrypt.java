package com.salesforcetojava.controller;


public class Encrypt_Decrypt {
		
		
  public static void encriptAndDecript(String password) throws Exception
  {
	  Encrypt_Decrypt ed = new Encrypt_Decrypt();

  
      
   
  

    //decryption process...
    StringBuilder  str = new StringBuilder(password);
    password = ed.decrypt(str,0xFACA);
    System.out.print("\nDecrypted Password: " + password);

    System.out.println();
  }

  public String encrypt(StringBuilder str,int key)
  {
    for(int i=0; i<=(str.length() - 1); i++)
    {
      char c = (char)(str.charAt(i) - key);
      str.setCharAt(i,c);
    }
    return new String(str);
  }

  public String decrypt(StringBuilder str,int key)
  {
    for(int i=0; i<=(str.length() - 1); i++)
    {
      char c = (char)(str.charAt(i) + key);
      str.setCharAt(i,c);
    }
    return new String(str);
  }
	}
	
	

