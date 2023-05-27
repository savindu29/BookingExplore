package util;

import java.util.Random;

public class IdGenerator {
    private static final String code="ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%&*";
    public  static String getId(int length){
        StringBuilder sb = new StringBuilder();
        String id="";
        for (int i = 0; i < length; i++) {
            sb.append(code.charAt(new Random().nextInt(43)));
        }
        return sb.toString();
    }

}
