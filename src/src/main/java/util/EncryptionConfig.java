package util;


import org.springframework.security.crypto.bcrypt.BCrypt;

public class EncryptionConfig {
    public static String Encrypt(String password){
        return BCrypt.hashpw(password,BCrypt.gensalt(10));
    }
    public static boolean decrypt(String password,String hash){
        return BCrypt.checkpw(password,hash);

    }
}
