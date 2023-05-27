package util;

import java.util.Random;

public class HotelIdGenerator {
    private static final String code="1234567890";
    public  static int getId(int length){
        StringBuilder sb = new StringBuilder();
        String id="";

        for (int i = 0; i < length; i++) {
            sb.append(code.charAt(new Random().nextInt(10)));
        }

        id= sb.toString();
        return Integer.parseInt(id);
    }
}
