package databaseconnection;

import java.io.InputStream;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.Signature;
import java.security.spec.KeySpec;
import java.util.Base64;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

public class sample {  
	private static String secretKey = "ABE";
	
	public static void main(String args[]) throws Exception{
		encrypt(secretKey);
	}
		 
	public static String encrypt(String strToEncrypt) 
	{
	    try
	    { 
	    	//Creating a Signature object
	        Signature sign = Signature.getInstance("SHA256withRSA");
	        
	        //Creating KeyPair generator object
	        KeyPairGenerator keyPairGen = KeyPairGenerator.getInstance("RSA");
	        
	        //Initializing the key pair generator
	        keyPairGen.initialize(2048);
	        
	        //Generating the pair of keys
	        KeyPair pair = keyPairGen.generateKeyPair();      
	  	
	        //Creating a Cipher object
	        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
	          
	        //Initializing a Cipher object
	        cipher.init(Cipher.ENCRYPT_MODE, pair.getPublic());
	  	  
	        //Adding data to the cipher
	        byte[] input = strToEncrypt.getBytes();	  
	        SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
	        KeySpec spec = new PBEKeySpec(secretKey.toCharArray(), input, 65536, 256);
	        SecretKey tmp = factory.generateSecret(spec);
	        cipher.update(tmp.getEncoded());
	        
	        //encrypting the data
	        byte[] cipherText = cipher.doFinal();	 
	        String a = new String(cipherText, "UTF8").substring(0,30);
	        //System.out.println(a);
	        return a;
	    } 
	    catch (Exception e) 
	    {
	       e.printStackTrace();
	    }
	    return null;
	}
	
	public static InputStream  encrypt(InputStream inputStream)  
	{
	    try
	    { 
	    	//Creating a Signature object
	        Signature sign = Signature.getInstance("SHA256withRSA");
	        
	        //Creating KeyPair generator object
	        KeyPairGenerator keyPairGen = KeyPairGenerator.getInstance("RSA");
	        
	        //Initializing the key pair generator
	        keyPairGen.initialize(2048);
	        
	        //Generating the pair of keys
	        KeyPair pair = keyPairGen.generateKeyPair();      
	  	
	        //Creating a Cipher object
	        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
	          
	        //Initializing a Cipher object
	        cipher.init(Cipher.ENCRYPT_MODE, pair.getPublic());
	  	  
	        String strToEncrypt = null;
			//Adding data to the cipher
	        byte[] input = strToEncrypt.getBytes();	  
	        SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
	        KeySpec spec = new PBEKeySpec(secretKey.toCharArray(), input, 65536, 256);
	        SecretKey tmp = factory.generateSecret(spec);
	        cipher.update(tmp.getEncoded());
	        
	        //encrypting the data
	        byte[] cipherText = cipher.doFinal();	 
	        String a = new String(cipherText, "UTF8").substring(0,30);
	        return inputStream;
	    } 
	    catch (Exception e) 
	    {
	       e.printStackTrace();
	    }
	    return null;
	}
	
}